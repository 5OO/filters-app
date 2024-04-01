package org.wtac.filtersapp.service;

import org.wtac.filtersapp.model.Filter;

import java.util.List;
import java.util.Optional;

public interface FilterService {
    Filter createFilter(Filter filter);
    List<Filter> getAllFilters();
    Optional<Filter> getFilterById(Long id);
}
