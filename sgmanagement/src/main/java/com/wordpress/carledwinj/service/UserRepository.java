package com.wordpress.carledwinj.service;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wordpress.carledwinj.model.User;

public interface UserRepository extends JpaRepository<User, Long>{
	Optional<User> findOneByEmail(String email);
}
