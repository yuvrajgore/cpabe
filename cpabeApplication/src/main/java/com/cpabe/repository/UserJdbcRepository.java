package com.cpabe.repository;

import com.cpabe.model.User;

public interface UserJdbcRepository {

	public Iterable<User> getUsersByRole(User user);
}
