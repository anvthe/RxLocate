package com.rko.springsecurity.service;

import com.rko.springsecurity.dto.DrugDTO;
import com.rko.springsecurity.dto.DrugDetailsDTO;
import com.rko.springsecurity.repository.DrugRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
@RequiredArgsConstructor
public class DrugService {
private final DrugRepository drugRepository;

    public List<DrugDTO> getAllDrugs(String name) {
        Pageable pageable = PageRequest.of(0, 10);
        return drugRepository.findByNameContaining(name, pageable);
    }

    public DrugDetailsDTO fetchDrugInfoByName(String name) {
        return drugRepository.fetchDrugInfoByName(name);
    }
}
