package com.rko.springsecurity.controller;

import com.rko.springsecurity.dto.DivisionDTO;
import com.rko.springsecurity.service.DivisionService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@RestController
@RequestMapping("/division")
@RequiredArgsConstructor
public class DivisionController {

    private final DivisionService divisionService;

    @GetMapping("/list")
    public ResponseEntity<List<DivisionDTO>> getAllDivisions() {
        return new ResponseEntity<>(divisionService.getAllDivisions(), HttpStatus.OK);
    }
}
