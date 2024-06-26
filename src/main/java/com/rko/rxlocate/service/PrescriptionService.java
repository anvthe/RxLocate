package com.rko.rxlocate.service;

import com.rko.rxlocate.domain.Prescription;
import com.rko.rxlocate.dto.PrescriptionDTO;
import com.rko.rxlocate.repository.PrescriptionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class PrescriptionService {
    private final PrescriptionRepository prescriptionRepository;

    public PrescriptionDTO getPrescriptionDetailsByRxNumber(Long prescriptionId) {
        Optional<Prescription> prescription = prescriptionRepository.findById(prescriptionId);
        return prescription.map(PrescriptionDTO::from).orElse(null);
    }

}
