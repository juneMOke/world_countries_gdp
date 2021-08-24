package com.nilangpatel.worldgdp.controller;

import com.external.WorldBankApiClient;
import com.nilangpatel.worldgdp.dao.CountryDAO;
import com.nilangpatel.worldgdp.model.Country;
import com.nilangpatel.worldgdp.model.CountryGDP;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping(value = "/api/countries")
@Slf4j
public class CountryAPIController {

    final CountryDAO countryDAO;
    final WorldBankApiClient worldBankApiClient;

    @Autowired
    public CountryAPIController(CountryDAO countryDAO, WorldBankApiClient worldBankApiClient) {
        this.countryDAO = countryDAO;
        this.worldBankApiClient = worldBankApiClient;
    }

    @GetMapping
    public ResponseEntity<?> getCountries(@RequestParam(name = "search", required = false) String searchTerm,
                                          @RequestParam(name = "continent", required = false) String continent,
                                          @RequestParam(name = "region", required = false) String region,
                                          @RequestParam(name = "pageNo", required = false) Integer pageNo) {
        Map<String, Object> params = new HashMap<>();
        params.put("search", searchTerm);
        params.put("continent", continent);
        params.put("region", region);
        params.put("pageNo", pageNo);
        try {
            final List<Country> countries = countryDAO.getCountries(params);
            final int countriesCount = countryDAO.getCountriesCount(params);
            Map<String, Object> response = new HashMap<>();
            response.put("countries", countries);
            response.put("count", countriesCount);
            return ResponseEntity.ok(response);
        } catch (Exception e) {
            log.error("Error while getting countries ", e);
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body("Error while getting countries " + e);
        }


    }

    @PostMapping(value = "/{countryCode}", consumes = {MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<?> editCountry(@PathVariable String countryCode,
                                         @Valid @RequestBody Country country) {

        try {
            countryDAO.editCountryDetail(countryCode, country);
            final Country countryDetail = countryDAO.getCountryDetail(countryCode);
            return ResponseEntity.ok(countryDetail);
        } catch (Exception e) {
            log.error("Error while getting countries ", e);
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body("Error while getting country detail");
        }


    }

    @GetMapping(value = "/{countryCode}/gdp")
    public ResponseEntity<?> getGdp(@PathVariable String countryCode) {
        try {
            final List<CountryGDP> countryGDPList = worldBankApiClient.getGDP(countryCode);
            return ResponseEntity.ok(countryGDPList);
        } catch (Exception e) {
            log.error("Error while getting countries ", e);
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body("Error while getting countries GDP");

        }

    }

}
