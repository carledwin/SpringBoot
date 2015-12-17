package com.wordpress.carledwinj.service;

import java.util.Collection;
import java.util.Optional;

import com.wordpress.carledwinj.form.UserCreateForm;
import com.wordpress.carledwinj.model.User;

public interface UserService {
	Optional<User> getUserById(Long id);
	Optional<User> getUserByEmail(String email);
	Collection<User> getAllUsers();
	User create(UserCreateForm form);
}
