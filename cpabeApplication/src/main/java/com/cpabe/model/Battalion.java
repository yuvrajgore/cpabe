package com.cpabe.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="battalion")
public class Battalion {
	
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)    
    @Column(name="id")
	private int battalionId;
	
	@Column(name="name")
	private String battalionName;
	
	@Column(name="description")
	private String battalionDescription;

	public int getBattalionId() {
		return battalionId;
	}

	public void setBattalionId(int battalionId) {
		this.battalionId = battalionId;
	}

	public String getBattalionName() {
		return battalionName;
	}

	public void setBattalionName(String battalionName) {
		this.battalionName = battalionName;
	}

	public String getBattalionDescription() {
		return battalionDescription;
	}

	public void setBattalionDescription(String battalionDescription) {
		this.battalionDescription = battalionDescription;
	}
	
	

}
