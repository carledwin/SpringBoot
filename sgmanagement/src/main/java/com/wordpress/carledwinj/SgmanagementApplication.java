package com.wordpress.carledwinj;

import javax.sql.DataSource;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

@SpringBootApplication
public class SgmanagementApplication {

	@Bean
	public DataSource dataSource(Environment environmet){
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost:3306/sgmanagementdb");
		dataSource.setUsername("root");
		dataSource.setPassword("");
		return dataSource;
	}
	
    public static void main(String[] args) {
        SpringApplication.run(SgmanagementApplication.class, args);
    }
}
