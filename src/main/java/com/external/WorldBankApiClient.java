package com.external;

import com.nilangpatel.worldgdp.model.CountryGDP;
import lombok.SneakyThrows;
import net.minidev.json.JSONArray;
import net.minidev.json.JSONObject;
import net.minidev.json.parser.JSONParser;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;
import reactor.core.publisher.Mono;

import java.net.URI;
import java.util.ArrayList;
import java.util.List;

@Service
public class WorldBankApiClient {
    String GDP_URL = "http://api.worldbank.org/countries/%s/indicators/NY.GDP.MKTP.CD?" + "format=json&date=2017:2020";
    WebClient client = WebClient.create();

    @SneakyThrows
    public List<CountryGDP> getGDP(String countryCode) {
        WebClient.UriSpec<WebClient.RequestBodySpec> uriSpec = client.method(HttpMethod.GET);
        WebClient.RequestBodySpec bodySpec = uriSpec.uri(URI.create(String.format(GDP_URL, countryCode)));
        Mono<String> responseBody = bodySpec.exchangeToMono(response -> {
            if (response.statusCode()
                    .equals(HttpStatus.OK)) {
                return response.bodyToMono(String.class);
            } else if (response.statusCode()
                    .is4xxClientError()) {
                return Mono.just("Error response");
            } else {
                return response.createException()
                        .flatMap(Mono::error);
            }
        });
        List<CountryGDP> data = new ArrayList<>();

        final JSONParser parser = new JSONParser(JSONParser.MODE_JSON_SIMPLE);
        JSONArray responseData = (JSONArray) parser.parse(String.valueOf(responseBody));
        JSONArray countriesArray = (JSONArray) responseData.get(1);
        JSONObject countryDataYearWise = null;
        for (int i = 0; i < countriesArray.size(); i++) {
            String valueStr = "0";
            assert false;
            if (countryDataYearWise.get("value") != null) {
                valueStr = countryDataYearWise.get("value").toString();
            }
            String yearStr = countryDataYearWise.get("date").toString();
            CountryGDP gdp = new CountryGDP();
            gdp.setValue(valueStr != null ? Double.valueOf(valueStr) : null);
            gdp.setYear(Short.valueOf(yearStr));
            data.add(gdp);


        }
        return data;

    }
}
