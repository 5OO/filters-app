package org.wtac.filtersapp.service.impl;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityNotFoundException;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.criteria.*;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.math.NumberUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.wtac.filtersapp.model.Criterion;
import org.wtac.filtersapp.model.Filter;
import org.wtac.filtersapp.model.Movie;
import org.wtac.filtersapp.repository.FilterRepository;
import org.wtac.filtersapp.service.FilterService;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.Set;

@Slf4j
@RequiredArgsConstructor
@Service
public class FilterServiceImpl implements FilterService {


    private final FilterRepository filterRepository;
    @PersistenceContext
    private EntityManager entityManager;

    @Override
    @Transactional
    public Filter createFilter(Filter filter) {
        for (Criterion criterion : filter.getCriteria()) {
            criterion.setFilter(filter);
        }
        return filterRepository.save(filter);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Filter> getAllFilters() {
        return filterRepository.findAll();
    }

    @Override
    @Transactional(readOnly = true)
    public Optional<Filter> getFilterById(Long id) {
        return filterRepository.findById(id);
    }

    @Transactional(readOnly = true)
    public List<Movie> applyFilter(Long filterId) {
        Optional<Filter> filterOpt = filterRepository.findById(filterId);
        if (filterOpt.isEmpty()) {
            throw new EntityNotFoundException("Filter with ID " + filterId + " not found");
        }
        Filter filter = filterOpt.get();
        return applyCriteria(filter.getCriteria());
    }

    private List<Movie> applyCriteria(Set<Criterion> criteria) {
        CriteriaBuilder cb = entityManager.getCriteriaBuilder();
        CriteriaQuery<Movie> query = cb.createQuery(Movie.class);
        Root<Movie> movieRoot = query.from(Movie.class);

        List<Predicate> predicates = new ArrayList<>();
        for (Criterion criterion : criteria) {
            switch (criterion.getFieldName()) {
                case "voteAverage":
                    Predicate votePredicate = createNumericPredicate(cb, movieRoot, criterion);
                    predicates.add(votePredicate);
                    break;
                case "releaseDate":
                    Predicate datePredicate = createDatePredicate(cb, movieRoot, criterion);
                    predicates.add(datePredicate);
                    break;
                case "popularity":
                    Predicate popularityPredicate = createNumericPredicate(cb, movieRoot, criterion);
                    predicates.add(popularityPredicate);
                    break;
                case "originalTitle":
                case "title":
                    Predicate titlePredicate = createStringPredicate(cb, movieRoot, criterion);
                    predicates.add(titlePredicate);
                    break;
            }
        }
        log.debug("predicates: {}", predicates);
        query.where(cb.and(predicates.toArray(new Predicate[0])));
        return entityManager.createQuery(query).getResultList();
    }

    private Predicate createNumericPredicate(CriteriaBuilder cb, Root<Movie> movieRoot, Criterion criterion) {
        Path<Number> path = movieRoot.get(criterion.getFieldName());
        String value = criterion.getCriteriaValue();

        return switch (criterion.getComparisonOperator()) {
            case ">" -> cb.gt(path, NumberUtils.createNumber(value));
            case "<" -> cb.lt(path, NumberUtils.createNumber(value));
            case "=" -> cb.equal(path, NumberUtils.createNumber(value));
            default -> null;
        };
    }

    private Predicate createDatePredicate(CriteriaBuilder cb, Root<Movie> movieRoot, Criterion criterion) {
        LocalDate date = LocalDate.parse(criterion.getCriteriaValue(), DateTimeFormatter.ISO_LOCAL_DATE);
        Path<LocalDate> path = movieRoot.get(criterion.getFieldName());

        return switch (criterion.getComparisonOperator()) {
            case ">", "after" -> cb.greaterThan(path, date);
            case "<", "before" -> cb.lessThan(path, date);
            case "=" -> cb.equal(path, date);
            case ">=" -> cb.greaterThanOrEqualTo(path, date);
            case "<=" -> cb.lessThanOrEqualTo(path, date);
            default ->
                    throw new IllegalArgumentException("Unsupported comparison operator: " + criterion.getComparisonOperator());
        };
    }

    private Predicate createStringPredicate(CriteriaBuilder cb, Root<Movie> movieRoot, Criterion criterion) {
        Expression<String> path = movieRoot.get(criterion.getFieldName());
        String value = criterion.getCriteriaValue();

        return switch (criterion.getComparisonOperator()) {
            case "contains" -> cb.like(cb.lower(path), "%" + value.toLowerCase() + "%");
            case "startsWith" -> cb.like(cb.lower(path), value.toLowerCase() + "%");
            case "endsWith" -> cb.like(cb.lower(path), "%" + value.toLowerCase());
            case "equals" -> cb.equal(cb.lower(path), value.toLowerCase());
            default ->
                    throw new IllegalArgumentException("Unsupported comparison operator: " + criterion.getComparisonOperator());
        };
    }
}
