package org.wtac.filtersapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.wtac.filtersapp.model.Filter;

@Repository
public interface FilterRepository extends JpaRepository<Filter, Long> {

}
