package com.rko.rxlocate.controller;

import com.rko.rxlocate.dto.DrugDTO;
import com.rko.rxlocate.dto.DrugDetailsDTO;
import com.rko.rxlocate.service.DrugService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/drug")
public class DrugController {
    private final DrugService drugService;

    @GetMapping("/list")
    public ResponseEntity<List<DrugDTO>> getAllDrugs() {
        List<DrugDTO> drugs = drugService.getAllDrugs();

        return ResponseEntity.ok(drugs);
    }

    @GetMapping("/list/{name}")
    public ResponseEntity<?> getAllDrugs(@PathVariable String name,
                                         @RequestParam(defaultValue = "0") int page,
                                         @RequestParam(defaultValue = "10") int size) {
        List<DrugDTO> drugs = drugService.getAllDrugs(name, page, size);

        return new ResponseEntity<>(drugs, HttpStatus.OK);
    }

    @GetMapping("/info/{drugName}")
    public ResponseEntity<DrugDetailsDTO> getDrugByName(@PathVariable String drugName) {
        DrugDetailsDTO drug = drugService.fetchDrugInfoByName(drugName);

        return ResponseEntity.ok(drug);
    }

    @GetMapping("/details/{drugId}")
    public ResponseEntity<?> getDrugDetailsById(@PathVariable Long drugId) {
        DrugDetailsDTO drug = drugService.getDrugDetailsById(drugId);

        return ResponseEntity.ok(drug);
    }
}