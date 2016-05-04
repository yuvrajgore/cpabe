package com.cpabe.repository;

import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;

import com.cpabe.model.Battalion;
@Transactional
public interface BattalionRepository extends CrudRepository<Battalion,Integer> {

}
