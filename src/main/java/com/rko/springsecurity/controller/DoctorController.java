package com.rko.springsecurity.controller;

import com.rko.springsecurity.dto.DoctorProjection;
import com.rko.springsecurity.repository.DoctorRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import java.util.List;


@RestController
@RequestMapping("/doctor")
@RequiredArgsConstructor
public class DoctorController {

    private final DoctorRepository doctorRepository;

    @GetMapping("/{drugName}")
    public ResponseEntity<?> getDoctorsByDrug(@PathVariable String drugName) {
        List<DoctorProjection> doctors = doctorRepository.findDoctorsWithDivisionByDrug(drugName);
        return ResponseEntity.ok(doctors);
    }

    @GetMapping("/by/{drugId}")
    public ResponseEntity<?> getDoctorsByDrugId(@PathVariable Long drugId) {
        List<DoctorProjection> doctors = doctorRepository.findDoctorsWithDivisionByDrugId(drugId);
        return ResponseEntity.ok(doctors);
    }


}
