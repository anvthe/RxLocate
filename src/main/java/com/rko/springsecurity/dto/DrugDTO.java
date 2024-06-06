package com.rko.springsecurity.dto;

import com.rko.springsecurity.domain.Drug;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.io.Serial;
import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DrugDTO  implements Serializable {
    @Serial
    private static final long serialVersionUID = 1L;

    private String drugName;

    private String drugFormation;

    private String drugStrength;

    public static DrugDTO from(Drug drug) {
        DrugDTO drugDTO = new DrugDTO();
        drugDTO.setDrugName(drug.getName());
        drugDTO.setDrugFormation(drug.getFormula());
        drugDTO.setDrugStrength(drug.getStrength());
        return drugDTO;
    }
}