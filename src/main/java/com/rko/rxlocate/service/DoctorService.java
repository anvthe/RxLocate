package com.rko.rxlocate.service;

import com.rko.rxlocate.domain.Doctor;
import com.rko.rxlocate.dto.DoctorDTO;
import com.rko.rxlocate.dto.DoctorProjection;
import com.rko.rxlocate.repository.DoctorRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class DoctorService {

    private final DoctorRepository doctorRepository;

    public DoctorDTO findByBmdcId(String bmdcId) {
        Optional<Doctor> doctor = doctorRepository.findByBmdcId(bmdcId);

        return doctor.map(DoctorDTO::from).orElse(null);
    }

    public List<DoctorProjection> getDoctorsByDrugName(String drugName) {
        return doctorRepository.findDoctorsByDrugName(drugName);
    }

    public List<DoctorProjection> getDoctorsByDrugId(Long drugId) {
        return doctorRepository.findDoctorsByDrugId(drugId);
    }

    public List<DoctorProjection> getDoctorsByDivisionIdAndDrugId(Long divisionId, Long drugId) {
        return doctorRepository.findDoctorsByDivisionIdAndDrugId(divisionId, drugId);
    }
}
