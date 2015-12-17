package com.wordpress.carledwinj.security;

import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

public class WebSecurityConfig extends WebSecurityConfigurerAdapter{

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable().authorizeRequests().anyRequest().authenticated()
		.and()
		.formLogin().loginPage("/login").defaultSuccessUrl("/")
		.failureUrl("/login?error=bad_credentials")
		.permitAll();
		
		http.authorizeRequests().antMatchers("/admin/**").hasRole("ADMIN");
		http.authorizeRequests().antMatchers("/fonts/**").permitAll();
	}
}
