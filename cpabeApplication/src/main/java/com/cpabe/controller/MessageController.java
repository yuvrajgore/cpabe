package com.cpabe.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.cpabe.model.MessageModel;
import com.cpabe.model.RequestStatusModel;
import com.cpabe.model.User;
import com.cpabe.service.MessageService;


@Controller
public class MessageController {

	@Autowired
	private MessageService messageService;
	@RequestMapping("/sendMessage")
	public String sendMessage(){
		return "cpabe/sendMessage";
	}
	@RequestMapping(value="/getMessageInfo",method=RequestMethod.POST,produces = "application/json")
	public @ResponseBody Iterable<MessageModel> getMessageInfo(){
		return this.messageService.getMessageInformation();
	}
	@RequestMapping(value="/getMessageIdInfo",method=RequestMethod.POST,produces = "application/json")
	public @ResponseBody MessageModel getMessageIdInfo(@RequestBody MessageModel messageModel){
		return this.messageService.getMessageInformationById(messageModel);	
	}
	@RequestMapping(value="/getMessageData",method=RequestMethod.POST,produces = "application/json")
	public @ResponseBody String getFileIData(@RequestBody MessageModel messageModel){
		messageModel= this.messageService.getMessageInformationById(messageModel);
		byte[] bytes=messageModel.getMessageData();
		String messageData = new String(bytes);
		return messageData;
	}
	@RequestMapping(value = "/submitMessage", method = RequestMethod.POST,headers = "Accept=application/json")
	public @ResponseBody MessageModel submitMessage(@RequestParam("messageData") MultipartFile messageData,@RequestParam("messageTitle") String messageTitle,@RequestParam("messageDescription") String messageDescription,
																@RequestParam("messageId") Integer messageId) {
	
		MessageModel messageModel=new MessageModel();
			try {
				if (messageId!=null) {
				messageModel.setMessageId(messageId);
				}
				messageModel.setMessageTitle(messageTitle);
				messageModel.setMessageDescription(messageDescription);
				messageModel.setMessageData(messageData.getBytes());
				messageService.submitMessage(messageModel);
			} catch (Exception e) {
				System.out.println("You failed to upload " + messageTitle + " => " + e.getMessage());
			}
		return messageModel;
	}
	@RequestMapping(value = "/deleteMessage", method = RequestMethod.POST,headers = "Accept=application/json")
	public @ResponseBody void deleteMessage(@RequestBody MessageModel messageModel) {
		messageService.delete(messageModel);
	}
	
	@RequestMapping(value = "/requestUserInfo", method = RequestMethod.POST,headers = "Accept=application/json")
	public @ResponseBody Iterable<User> requestUserInfo(@RequestBody User user) {
		return messageService.requestUserInfo(user);
	}
	@RequestMapping(value = "/requestKeyAuthorityInfo", method = RequestMethod.POST,headers = "Accept=application/json")
	public @ResponseBody Iterable<User> requestKeyAuthorityInfo() {
		return messageService.requestKeyAuthorityInfo();
	}
	
	@RequestMapping(value = "/submitRequest", method = RequestMethod.POST,headers = "Accept=application/json")
	public @ResponseBody RequestStatusModel submitRequest(@RequestBody RequestStatusModel requestStatusModel) {
		messageService.sendRequest(requestStatusModel);
		return requestStatusModel;
	}
}
