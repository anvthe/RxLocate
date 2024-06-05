package com.rko.springsecurity.repository;

import com.rko.springsecurity.domain.Prescription;
import com.rko.springsecurity.dto.AreaDTO;
import com.rko.springsecurity.dto.DistrictDTO;
import com.rko.springsecurity.dto.DivisionDTO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;


public interface PrescriptionRepository extends JpaRepository<Prescription, Long> {

    @Query("SELECT new com.rko.springsecurity.dto.DivisionDTO(divi.id, divi.name, dr.name, COUNT(p), divi.lat, divi.lng) " +
            "FROM Prescription p " +
            "JOIN p.area ar " +
            "JOIN ar.district dis " +
            "JOIN dis.division divi " +
            "JOIN p.drugs dr " +
            "WHERE dr.name LIKE %:drugName%  " +
            "GROUP BY divi.name, dr.name")
    List<DivisionDTO> findDivisionsByDrugName(@Param("drugName") String drugName, Pageable pageable);

    @Query("SELECT new com.rko.springsecurity.dto.DivisionDTO(divi.id, divi.name, dr.name, COUNT(p), divi.lat, divi.lng) " +
            "FROM Prescription p " +
            "JOIN p.area ar " +
            "JOIN ar.district dis " +
            "JOIN dis.division divi " +
            "JOIN p.drugs dr " +
            "WHERE dr.id = :drugId " +
            "GROUP BY divi.id, divi.name, divi.lat, divi.lng")
    List<DivisionDTO> findDivisionsByDrugId(@Param("drugId") Long drugId, Pageable pageable);


    @Query("SELECT new com.rko.springsecurity.dto.DistrictDTO(d.id, dis.name, dr.name, COUNT(p), dis.lat, dis.lng) " +
            "FROM Prescription p " +
            "JOIN p.area ar " +
            "JOIN ar.district dis " +
            "JOIN dis.division d " +
            "JOIN p.drugs dr " +
            "WHERE dr.name = :drugName AND d.name = :divisionName " +
            "GROUP BY dis.name, dr.name, dis.lat, dis.lng")
    List<DistrictDTO> findDistrictsByDivisionAndDrugName(@Param("drugName") String drugName, @Param("divisionName") String divisionName, Pageable pageable);

}

