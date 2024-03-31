package org.wtac.filtersapp.service.impl;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.wtac.filtersapp.model.Criterion;
import org.wtac.filtersapp.model.Filter;
import org.wtac.filtersapp.repository.CriterionRepository;
import org.wtac.filtersapp.repository.FilterRepository;
import org.wtac.filtersapp.service.FilterService;

import java.util.List;

@RequiredArgsConstructor
@Service
public class FilterServiceImpl implements FilterService {


    private final FilterRepository filterRepository;
    private final CriterionRepository criterionRepository;

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
}
