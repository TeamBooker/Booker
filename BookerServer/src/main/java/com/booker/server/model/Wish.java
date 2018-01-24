package com.booker.server.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "B_WISH")
public class Wish {
	 	@Id
	    @SequenceGenerator(name="wish_generator", sequenceName = "B_WISH_NO_SEQ")
	    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "wish_generator")
	 	Integer wishNo;
	 	Integer bookId;
	 	String userId;
	 	
		public Integer getBookId() {
			return bookId;
		}
		public void setBookId(Integer bookId) {
			this.bookId = bookId;
		}
		public Integer getWishNo() {
			return wishNo;
		}
		public void setWishNo(Integer wishNo) {
			this.wishNo = wishNo;
		}
		public String getUserId() {
			return userId;
		}
		public void setUserId(String userId) {
			this.userId = userId;
		}
	 	
	 	
}	
