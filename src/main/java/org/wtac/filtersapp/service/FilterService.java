package org.wtac.filtersapp.service;

import org.wtac.filtersapp.model.Filter;

import java.util.List;

public interface FilterService {
    Filter createFilter(Filter filter);
    List<Filter> getAllFilters();
}
