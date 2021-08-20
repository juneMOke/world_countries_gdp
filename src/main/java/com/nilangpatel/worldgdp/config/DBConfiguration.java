package com.nilangpatel.worldgdp.config;

import com.zaxxer.hikari.HikariDataSource;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import javax.sql.DataSource;

@Configuration
public class DBConfiguration {
    @Value("${jdbcUrl}")
    String jdbcUrl;

    @Value("${dataSource.user}")
    String user;

    @Value("${dataSource.password}")
    String password;

    @Value("${dataSourceClassName}")
    String className;

    @Bean
    public DataSource getDataSource() {
        HikariDataSource ds = new HikariDataSource();
        ds.setJdbcUrl(jdbcUrl);
        ds.setUsername(user);
        ds.setPassword(password);
        ds.setDriverClassName(className);
        return ds;
    }

    @Bean
    public NamedParameterJdbcTemplate namedParamJdbcTemplate() {
        return new NamedParameterJdbcTemplate(getDataSource());
    }


}
