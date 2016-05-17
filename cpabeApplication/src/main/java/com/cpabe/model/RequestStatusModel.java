package com.cpabe.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="requeststatus")
public class RequestStatusModel {
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)    
    @Column(name="id")
	private int requestId;
	
	@Column(name="messageid")
	private int messageId;
	
	@Column(name="userid")
	private int userId;
	
	@Column(name="battalionid")
	private int battalionId;
	
	@Column(name="keyauthorityid")
	private int keyAuthorityId;
	
	@Column(name="secretkey")
	private String secretKey;
	
	@Column(name="status")
	private int status;

	public int getRequestId() {
		return requestId;
	}

	public void setRequestId(int requestId) {
		this.requestId = requestId;
	}

	public int getMessageId() {
		return messageId;
	}

	public void setMessageId(int messageId) {
		this.messageId = messageId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getBattalionId() {
		return battalionId;
	}

	public void setBattalionId(int battalionId) {
		this.battalionId = battalionId;
	}

	public int getKeyAuthorityId() {
		return keyAuthorityId;
	}

	public void setKeyAuthorityId(int keyAuthorityId) {
		this.keyAuthorityId = keyAuthorityId;
	}

	public String getSecretKey() {
		return secretKey;
	}

	public void setSecretKey(String secretKey) {
		this.secretKey = secretKey;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
	
}
