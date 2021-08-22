package com.nilangpatel.worldgdp.dao;

import com.nilangpatel.worldgdp.dao.mapper.CityMapper;
import com.nilangpatel.worldgdp.model.City;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.nilangpatel.worldgdp.dao.CountryDAO.PAGE_SIZE;

@Service
@Setter
public class CityDAO {
    final String SELECT = "SELECT id, "
            + " name, countrycode country_code, "
            + " district, population ";
    @Autowired
    NamedParameterJdbcTemplate namedParamJdbcTemplate;

    public List<City> getCities(String countryCode, Integer pageNo) {
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("code", countryCode);
        params.put("pageNo", pageNo);

        if (pageNo != null) {
            Integer offset = (pageNo - 1) * PAGE_SIZE;
            params.put("offset", offset);
            params.put("size", PAGE_SIZE);
        }
        return namedParamJdbcTemplate.query(SELECT
                        + "FROM City WHERE countrycode = :code "
                        + "order by Population DESC "
                        + ((pageNo != null) ? " LIMIT :offset, :size " : "")
                , params, new CityMapper());


    }

    public List<City> getCities(String countryCode) {
        return getCities(countryCode, null);
    }

    public City getCityDetail(Long cityId) {
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("id", cityId);

        return namedParamJdbcTemplate.queryForObject(SELECT
                + " FROM city WHERE id = :id", params, new CityMapper());
    }

    public Long addCity(String countryCode, City city) {
        SqlParameterSource paramSource = new MapSqlParameterSource(getMapForCity(countryCode, city));
        KeyHolder keyHolder = new GeneratedKeyHolder();
        namedParamJdbcTemplate.update("INSERT INTO city("
                + " name, countrycode, "
                + " district, population) "
                + " VALUES (:name, :country_code, " + " :district, :population )", paramSource, keyHolder);
        return keyHolder.getKey().longValue();
    }

    private Map<String, Object> getMapForCity(String countryCode, City city) {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("name", city.getName());
        map.put("country_code", countryCode);
        map.put("district", city.getDistrict());
        map.put("population", city.getPopulation());
        return map;
    }

    public void deleteCity(Long cityId) {
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("id", cityId);
        namedParamJdbcTemplate.update("DELETE FROM city WHERE id = :id", params);
    }

}
