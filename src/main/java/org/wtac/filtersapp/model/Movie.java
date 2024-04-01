package org.wtac.filtersapp.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.time.LocalDate;

@Getter
@Setter
@RequiredArgsConstructor
@Entity
@Table(name = "movie")
public class Movie {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "original_title", nullable = false)
    private String originalTitle;

    @Column( nullable = false)
    private String overview;

    @Column(nullable = false)
    private BigDecimal popularity;

    @Column(name = "release_date", nullable = false)
    private LocalDate releaseDate;

    @Column(nullable = false)
    private Long revenue;

    @Column(nullable = false)
    private BigDecimal runtime;

    private String tagline;

    @Column(nullable = false)
    private String title;

    @Column(name = "vote_average", nullable = false)
    private BigDecimal voteAverage;

    @Column(name = "vote_count", nullable = false)
    private Integer voteCount;
}
