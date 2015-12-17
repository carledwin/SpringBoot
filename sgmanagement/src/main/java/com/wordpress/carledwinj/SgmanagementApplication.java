package com.wordpress.carledwinj;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import com.wordpress.carledwinj.security.WebSecurityConfig;

@SpringBootApplication
public class SgmanagementApplication {

	@Value("${spring.datasource.driver-class-name}")
	private String driverClassName;
	@Value("${spring.datasource.url}")
	private String url;
	@Value("${spring.datasource.username}")
	private String userName;
	@Value("${spring.datasource.password}")
	private String userPassword;
	
	@Bean
	public DataSource dataSource(Environment environmet){
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName(driverClassName);
		dataSource.setUrl(url);
		dataSource.setUsername(userName);
		dataSource.setPassword(userPassword);
		return dataSource;
	}
	
    public static void main(String[] args) {
        SpringApplication.run(SgmanagementApplication.class, args);
    }
    
    @Bean
    public WebSecurityConfigurerAdapter webSecurityConfigurerAdapter(){
    	return new WebSecurityConfig();
    }
}
