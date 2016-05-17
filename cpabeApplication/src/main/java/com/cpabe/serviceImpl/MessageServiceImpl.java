package com.cpabe.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cpabe.model.MessageModel;
import com.cpabe.model.RequestStatusModel;
import com.cpabe.model.User;
import com.cpabe.repository.MessageRepository;
import com.cpabe.repository.RequestStatusRepository;
import com.cpabe.repository.UserJdbcRepository;
import com.cpabe.service.MessageService;
@Service
public class MessageServiceImpl implements MessageService {

	@Autowired
	MessageRepository messageRepository;
	
	@Autowired
	RequestStatusRepository requestStatusRepository; 
	@Autowired
	UserJdbcRepository userJdbcRepository;
	@Override
	public MessageModel getMessageInformationById(MessageModel messageModel) {
		try {
			messageModel=messageRepository.findOne(messageModel.getMessageId());
		} catch (Exception e) {
			System.out.println("Error occured to fetch data:"+e.getMessage());
		}
		return messageModel;
	}

	@Override
	public void submitMessage(MessageModel messageModel) {
		try {
			messageRepository.save(messageModel);
		} catch (Exception e) {
			System.out.println("Error occured to submit:"+e.getMessage());
		}
	}

	@Override
	public void delete(MessageModel messageModel) {
		try {
			messageRepository.delete(messageModel.getMessageId());
		} catch (Exception e) {
			System.out.println("Error occured to delete:"+e.getMessage());
		}
	}

	@Override
	public Iterable<MessageModel> getMessageInformation() {
		Iterable<MessageModel> messageList=null;
		try {
			messageList =messageRepository.findAll();
		} catch (Exception e) {
			System.out.println("Error occured to fetch Messages:"+e.getMessage());
		}
		return messageList;
	}

	@Override
	public Iterable<User> requestUserInfo(User user) {
		return userJdbcRepository.requestUserInfo(user);
	}

	@Override
	public Iterable<User> requestKeyAuthorityInfo() {
		return userJdbcRepository.requestKeyAuthorityInfo();
	}

	@Override
	public void sendRequest(RequestStatusModel requestStatusModel) {
		try {
			requestStatusRepository.save(requestStatusModel);
		} catch (Exception e) {
			System.out.println("Error occured to submit request:"+e.getMessage());
		}
	}

}
