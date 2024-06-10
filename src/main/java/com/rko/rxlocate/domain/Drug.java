package com.rko.rxlocate.domain;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "drugs")
public class Drug {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "drug_name")
    @NotBlank
    private String name;

    private String formula;

    private String strength;

    @ManyToOne
    @JoinColumn(name = "generic_id")
    private Generic generic;

    @ManyToOne
    @JoinColumn(name = "vendor_id")
    private Vendor vendor;

}
