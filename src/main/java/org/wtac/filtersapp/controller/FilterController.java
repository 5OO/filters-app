package org.wtac.filtersapp.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.wtac.filtersapp.model.Filter;
import org.wtac.filtersapp.service.FilterService;

import java.util.List;

@RequiredArgsConstructor
@RestController
public class FilterController {

    private final FilterService filterService;

    @PostMapping("/api/filters")
    public ResponseEntity<Filter> createFilter(@RequestBody Filter filter) {
        Filter createdFilter = filterService.createFilter(filter);
        return ResponseEntity.ok(createdFilter);
    }

    @GetMapping("/api/filters")
    public ResponseEntity<List<Filter>> getAllFilters() {
        List<Filter> filters = filterService.getAllFilters();
        return ResponseEntity.ok(filters);
    }
}
