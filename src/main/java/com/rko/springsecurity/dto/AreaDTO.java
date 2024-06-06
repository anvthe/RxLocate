package com.rko.springsecurity.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.awt.geom.Area;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AreaDTO {
    private Long areaId;

    private String areaName;

    private String drugName;

    private long prescriptionCount;

    private double lat;

    private double lng;


    public static AreaDTO from(Area area) {
        AreaDTO ar = new AreaDTO();
        ar.areaName = ar.getAreaName();
        ar.lat = ar.getLat();
        ar.lng = ar.getLng();
        return ar;
    }
}
