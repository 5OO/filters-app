package org.wtac.filtersapp.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.wtac.filtersapp.model.Filter;
import org.wtac.filtersapp.repository.FilterRepository;

@RequiredArgsConstructor
@Service
public class FilterService {

    private final FilterRepository filterRepository;

    public Filter saveFilter(Filter filter) {
        return filterRepository.save(filter);
    }
}
