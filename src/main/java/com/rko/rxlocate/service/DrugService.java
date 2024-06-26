package com.rko.rxlocate.service;

import com.rko.rxlocate.domain.Drug;
import com.rko.rxlocate.dto.DrugDTO;
import com.rko.rxlocate.dto.DrugDetailsDTO;
import com.rko.rxlocate.repository.DrugRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class DrugService {
private final DrugRepository drugRepository;

    public List<DrugDTO> getAllDrugs(String name, int page, int size) {
        Pageable pageable = PageRequest.of(page, size);

        return drugRepository.findByNameContaining(name, pageable);
    }

    public DrugDetailsDTO fetchDrugInfoByName(String name) {
        return drugRepository.fetchDrugInfoByName(name);
    }

    public List<DrugDTO> getAllDrugs() {
        List<Drug> drugs = drugRepository.findAll();

        return drugs.stream()
                .map(DrugDTO::from)
                .collect(Collectors.toList());
    }

    public DrugDetailsDTO getDrugDetailsById(Long drugId) {
        Drug drug = drugRepository.findById(drugId).orElse(null);

        assert drug != null;

        return new DrugDetailsDTO(drug.getName(),
                drug.getFormula(),
                drug.getStrength(),
                drug.getGeneric().getName(),
                drug.getVendor().getName());
    }
}
