package com.booker.server.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "B_COMMENT")
public class Comment {
	@Id
    @SequenceGenerator(name="comment_generator", sequenceName = "B_COMMENT_NO_SEQ")
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "comment_generator")
	Integer commentNo;
	String commentId;
	Integer commentBookId;
	String commentContent;
	Integer commentRate;
	String commentRegdate;
	
	public Integer getCommentNo() {
		return commentNo;
	}
	public void setCommentNo(Integer commentNo) {
		this.commentNo = commentNo;
	}
	public String getCommentId() {
		return commentId;
	}
	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}
	
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public Integer getCommentRate() {
		return commentRate;
	}
	public void setCommentRate(Integer commentRate) {
		this.commentRate = commentRate;
	}
	public String getCommentRegdate() {
		return commentRegdate;
	}
	public void setCommentRegdate(String commentRegdate) {
		this.commentRegdate = commentRegdate;
	}
	public Integer getCommentBookId() {
		return commentBookId;
	}
	public void setCommentBookId(Integer commentBookId) {
		this.commentBookId = commentBookId;
	}
	
	
}
