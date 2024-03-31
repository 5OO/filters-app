package org.wtac.filtersapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.wtac.filtersapp.model.Criterion;

@Repository
public interface CriterionRepository extends JpaRepository<Criterion, Long> {
}
