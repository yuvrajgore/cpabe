package com.cpabe.repository;

import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;

import com.cpabe.model.MessageModel;
@Transactional
public interface MessageRepository extends CrudRepository<MessageModel, Integer> {

}
