package com.rko.springsecurity.controller;

import com.rko.springsecurity.dto.DistrictDTO;
import com.rko.springsecurity.dto.DivisionDTO;

import com.rko.springsecurity.service.SearchService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/search")
@RequiredArgsConstructor
public class SearchController {
    private final SearchService searchService;

    @GetMapping("/{drugName}")
    public ResponseEntity<?> getDivisionsByDrugName(@PathVariable String drugName) {
        List<DivisionDTO> divisions = searchService.getDivisionsByDrugName(drugName);
        return ResponseEntity.ok(divisions);
    }

    @GetMapping("/by/{drugId}")
    public ResponseEntity<?> getDivisionsByDrugId(@PathVariable Long drugId) {
        List<DivisionDTO> divisions = searchService.getDivisionsByDrugId(drugId);
        return ResponseEntity.ok(divisions);
    }

    @GetMapping("/{drugName}/{divisionName}")
    public ResponseEntity<?> getDistrictsByDivisionAndDrugName(@PathVariable String drugName,
                                                               @PathVariable String divisionName) {
        List<DistrictDTO> districts = searchService.getDistrictsByDivisionAndDrugName(drugName, divisionName);
        return ResponseEntity.ok(districts);
    }
}
