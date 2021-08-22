package com.nilangpatel.worldgdp.test.dao;

import com.nilangpatel.worldgdp.dao.CityDAO;
import com.nilangpatel.worldgdp.model.City;
import com.nilangpatel.worldgdp.test.config.TestDBConfiguration;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.test.context.junit.jupiter.SpringJUnitConfig;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

import static com.nilangpatel.worldgdp.dao.CountryDAO.PAGE_SIZE;
import static org.assertj.core.api.AssertionsForInterfaceTypes.assertThat;


@RunWith(SpringRunner.class)
@SpringJUnitConfig(classes = {
        TestDBConfiguration.class, CityDAO.class
})
public class CityDAOTest {
    @Autowired
    private CityDAO cityDAO;

    @Autowired
//    @Qualifier("testTemplate")
    private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    @Before
    public void setUp() {
        cityDAO.setNamedParamJdbcTemplate(namedParameterJdbcTemplate);
    }

    @Test
    public void testGetCities() {
        List<City> cities = cityDAO.getCities("IND", 1);
        assertThat(cities).hasSize(PAGE_SIZE);

    }

    @Test
    public void testGetCityDetail() {
        Long cityId = 1024l;
        City city = cityDAO.getCityDetail(cityId);
        assertThat(city.toString()).isEqualTo("City(id=1024, name=Mumbai (Bombay), "
                + "country=null, district=Maharashtra, countryCode=IND, population=10500000)");
    }

    @Test
    public void testAddCity() {
        String countryCode = "IND";
        City city = new City();
        city.setCountryCode(countryCode);
        city.setDistrict("District");
        city.setName("City Name");
        city.setPopulation(101010l);
        long cityId = cityDAO.addCity(countryCode, city);
        assertThat(cityId).isNotNull();
        City cityFromDb = cityDAO.getCityDetail(cityId);
        assertThat(cityFromDb).isNotNull();
        assertThat(cityFromDb.getName()).isEqualTo("City Name");
    }

    @Test(expected = EmptyResultDataAccessException.class)
    public void testDeleteCity() {
        Long cityId = addCity();
        cityDAO.deleteCity(cityId);
        City cityFromDb = cityDAO.getCityDetail(cityId);
        assertThat(cityFromDb).isNull();
    }

    private Long addCity() {
        String countryCode = "IND";
        City city = new City();
        city.setCountryCode(countryCode);
        city.setDistrict("District");
        city.setName("City Name");
        city.setPopulation(101010l);
        return cityDAO.addCity(countryCode, city);
    }

}
