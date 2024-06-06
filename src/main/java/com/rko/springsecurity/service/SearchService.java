package com.rko.springsecurity.service;

import com.rko.springsecurity.dto.DistrictDTO;
import com.rko.springsecurity.dto.DivisionDTO;
import com.rko.springsecurity.repository.PrescriptionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class SearchService {

    private final PrescriptionRepository prescriptionRepository;

    public List<DivisionDTO> getDivisionsByDrugName(String drugName) {
        Pageable pageable = PageRequest.of(0, 10);
        return prescriptionRepository.findDivisionsByDrugName(drugName, pageable);
    }

    public List<DivisionDTO> getDivisionsByDrugId(Long drugId) {
        Pageable pageable = PageRequest.of(0, 10);
        return prescriptionRepository.findDivisionsByDrugId(drugId, pageable);
    }

    public List<DistrictDTO> getDistrictsByDivisionAndDrugName(String drugName, String divisionName) {
        Pageable pageable = PageRequest.of(0, 10);
        return prescriptionRepository.findDistrictsByDivisionAndDrugName(drugName, divisionName, pageable);
    }

}
