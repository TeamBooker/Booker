package com.booker.server.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "B_BOOK")
public class DocumentModel {


	 @Id
	 @SequenceGenerator(name="member_generator", sequenceName = "B_MEMBER_ID_SEQ")
	 @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "member_generator")
	 private Integer book_id;
	 private String book_title;
	 private String book_writer;
	 private String book_publisher;
	 private String book_date;
	 
		public Integer getBook_id() {
			return book_id;
		}
		public void setBook_id(Integer book_id) {
			this.book_id = book_id;
		}
		public String getBook_title() {
			return book_title;
		}
		public void setBook_title(String book_title) {
			this.book_title = book_title;
		}
		public String getBook_writer() {
			return book_writer;
		}
		public void setBook_writer(String book_writer) {
			this.book_writer = book_writer;
		}
		public String getBook_publisher() {
			return book_publisher;
		}
		public void setBook_publisher(String book_publisher) {
			this.book_publisher = book_publisher;
		}
		public String getBook_date() {
			return book_date;
		}
		public void setBook_date(String book_date) {
			this.book_date = book_date;
		}
		 
	 
}
