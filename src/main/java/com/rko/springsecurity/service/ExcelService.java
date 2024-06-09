package com.rko.springsecurity.service;

import com.rko.springsecurity.dto.DistrictPrescriptionProjection;
import com.rko.springsecurity.dto.DivisionPrescriptionProjection;
import com.rko.springsecurity.helper.ExcelHelper;
import com.rko.springsecurity.repository.PrescriptionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.io.ByteArrayInputStream;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ExcelService {

    private final PrescriptionRepository prescriptionRepository;

    public ByteArrayInputStream getExcelDataForDivision(String drugName) {
        List<DivisionPrescriptionProjection> divisionPrescriptionProjections = prescriptionRepository.excelDataByDrugName(drugName);
        return ExcelHelper.divisionDataToExcel(divisionPrescriptionProjections);
    }

    public ByteArrayInputStream getExcelDataForDivision(Long drugId) {
        List<DivisionPrescriptionProjection> divisionPrescriptionProjections = prescriptionRepository.excelDataByDrugId(drugId);
        return ExcelHelper.divisionDataToExcel(divisionPrescriptionProjections);
    }

    public ByteArrayInputStream getExcelDataForDistrict(Long drugId, Long divisionId) {
        List<DistrictPrescriptionProjection> districtPrescriptionProjections = prescriptionRepository.excelDataByDrugNameAndDivisionName(drugId, divisionId);
        return ExcelHelper.districtDataToExcel(districtPrescriptionProjections);
    }


}