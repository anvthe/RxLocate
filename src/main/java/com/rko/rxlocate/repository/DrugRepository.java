package com.rko.rxlocate.repository;

import com.rko.rxlocate.domain.Drug;
import com.rko.rxlocate.dto.DrugDTO;
import com.rko.rxlocate.dto.DrugDetailsDTO;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface DrugRepository extends JpaRepository<Drug, Long> {

    @Query("SELECT new com.rko.rxlocate.dto.DrugDTO(dr.name, dr.formula, dr.strength) " +
            "FROM Drug dr WHERE dr.name LIKE %:name%")
    List<DrugDTO> findByNameContaining(@Param("name") String name, Pageable pageable);

    @Query("SELECT new com.rko.rxlocate.dto.DrugDetailsDTO(dr.name, dr.formula, dr.strength, g.name, v.name) " +
            "FROM Drug dr " +
            "LEFT JOIN dr.vendor v " +
            "LEFT JOIN dr.generic g " +
            "WHERE dr.name = :drugName")
    DrugDetailsDTO fetchDrugInfoByName(@Param("drugName") String drugName);

}
