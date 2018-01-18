package com.booker.server.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "B_Member")
public class MemberModel implements Serializable {

	
	 @Id
	 @SequenceGenerator(name="member_generator", sequenceName = "B_MEMBER_ID_SEQ")
	 @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "member_generator")
	 private Integer id;

	 private String username;
	 
	 private String password;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	 
	 
}
