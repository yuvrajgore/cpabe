package com.cpabe.service;

import com.cpabe.model.MessageModel;
import com.cpabe.model.RequestStatusModel;
import com.cpabe.model.User;

public interface MessageService {

	public Iterable<MessageModel> getMessageInformation();
	public MessageModel  getMessageInformationById(MessageModel messageModel);
	public void submitMessage(MessageModel messageModel);
	public void delete(MessageModel messageModel);
	public Iterable<User> requestUserInfo(User user);
	public Iterable<User> requestKeyAuthorityInfo();
	public void sendRequest(RequestStatusModel requestStatusModel);
}
