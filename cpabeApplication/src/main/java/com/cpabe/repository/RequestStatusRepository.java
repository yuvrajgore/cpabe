package com.cpabe.repository;

import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;

import com.cpabe.model.RequestStatusModel;
@Transactional
public interface RequestStatusRepository extends CrudRepository<RequestStatusModel,Integer> {

}
