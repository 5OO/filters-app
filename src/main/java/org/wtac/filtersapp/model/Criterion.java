package org.wtac.filtersapp.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "criterion")
public class Criterion {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @JsonBackReference
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "filter_id", nullable = false)
    private Filter filter;

    @Column(name = "field_name", nullable = false)
    private String fieldName;

    @Column(name = "criteria_type", nullable = false)
    private String criteriaType;

    @Column(name = "comparison_operator", nullable = false)
    private String comparisonOperator;

    @Column(name = "criteria_value", nullable = false)
    private String criteriaValue;
}
