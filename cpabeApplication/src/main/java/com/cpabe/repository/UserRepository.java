package com.cpabe.repository;

import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;

import com.cpabe.model.User;
@Transactional
public interface UserRepository extends CrudRepository<User,Integer> {

}
