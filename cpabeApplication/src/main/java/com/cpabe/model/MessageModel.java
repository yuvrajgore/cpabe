package com.cpabe.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="messagetable")
public class MessageModel {

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)    
    @Column(name="id")
	private int messageId;
	
	@Column(name="title")
	private String messageTitle;
	
	@Column(name="description")
	private String messageDescription;
	
	@Column(name="messagedata",length=100000)
	private byte[]  messageData;
	
	@Column(name="submittedby")
	private int submittedBy;	
	
	public int getSubmittedBy() {
		return submittedBy;
	}
	public void setSubmittedBy(int submittedBy) {
		this.submittedBy = submittedBy;
	}
	public int getMessageId() {
		return messageId;
	}
	public void setMessageId(int messageId) {
		this.messageId = messageId;
	}
	public String getMessageTitle() {
		return messageTitle;
	}
	public void setMessageTitle(String messageTitle) {
		this.messageTitle = messageTitle;
	}
	public String getMessageDescription() {
		return messageDescription;
	}
	public void setMessageDescription(String messageDescription) {
		this.messageDescription = messageDescription;
	}
	public byte[] getMessageData() {
		return messageData;
	}
	public void setMessageData(byte[] messageData) {
		this.messageData = messageData;
	}
	
	
	
}
