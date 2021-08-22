package com.nilangpatel.worldgdp.model;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class City {
    @NotNull
    private Long id;

    @NotNull
    @Size(max = 35)
    private String name;

    @NotNull
    @Size(max = 3, min = 3)
    private Country country;

    @NotNull
    @Size(max = 20)
    private String district;


    private String countryCode;

    @NotNull
    private Long population;
}
