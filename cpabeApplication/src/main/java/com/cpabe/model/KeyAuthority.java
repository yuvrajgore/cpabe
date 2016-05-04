package com.cpabe.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="keyauthority")
public class KeyAuthority {

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)    
    @Column(name="id")
	private int keyAuthorityId;
	
	@Column(name="senderid")
	private int senderId;
	
	@Column(name="secretkey")
	private String secretKey;

	public int getKeyAuthorityId() {
		return keyAuthorityId;
	}

	public void setKeyAuthorityId(int keyAuthorityId) {
		this.keyAuthorityId = keyAuthorityId;
	}

	public int getSenderId() {
		return senderId;
	}

	public void setSenderId(int senderId) {
		this.senderId = senderId;
	}

	public String getSecretKey() {
		return secretKey;
	}

	public void setSecretKey(String secretKey) {
		this.secretKey = secretKey;
	}
	
	
}
