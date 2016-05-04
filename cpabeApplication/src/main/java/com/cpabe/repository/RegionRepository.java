package com.cpabe.repository;

import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;

import com.cpabe.model.Region;
@Transactional
public interface RegionRepository extends CrudRepository<Region,Integer> {

}
