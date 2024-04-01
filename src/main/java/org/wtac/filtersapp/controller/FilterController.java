package org.wtac.filtersapp.controller;

import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.wtac.filtersapp.model.Filter;
import org.wtac.filtersapp.model.Movie;
import org.wtac.filtersapp.service.FilterService;

import java.util.List;

@Slf4j
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

    @GetMapping("/api/filters/{id}")
    public ResponseEntity<Filter> getFilterById(@PathVariable Long id) {
        return filterService.getFilterById(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @GetMapping("/api/filters/{filterId}/movies")
    public ResponseEntity<List<Movie>> applyFilter(@PathVariable Long filterId) {
        try {
            List<Movie> filteredMovies = filterService.applyFilter(filterId);
            return ResponseEntity.ok(filteredMovies);
        } catch (EntityNotFoundException e) {
            return ResponseEntity.notFound().build();
        } catch (Exception e) {
            log.error("An error occurred while applying the filter.", e);
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }
}
