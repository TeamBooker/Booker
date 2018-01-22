package com.booker.server.services.impl;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.booker.server.model.Book;
import com.booker.server.model.Comment;
import com.booker.server.repository.CommentRepository;
import com.booker.server.services.CommentService;

@Service
public class CommnetServiceImpl implements CommentService {
	
	@Autowired
	CommentRepository commentRepository;
	
	@Override
	public Page<Comment> findByCommentBookId(Pageable pageable,int bookId){
		// TODO Auto-generated method stub
		return commentRepository.findByCommentBookId(pageable,bookId);
	}

	@Override
	public Comment insertComment(int bookId,int rate ,String bookComment,String userId) {
		// TODO Auto-generated method stub
		Comment comment = new Comment();
		Date date = new Date();
		SimpleDateFormat strDate = new SimpleDateFormat("yyyy-MM-dd");
		
		String regdate = strDate.format(date).toString();
		
		comment.setCommentBookId(bookId);
		comment.setCommentContent(bookComment);
		comment.setCommentRate(rate);
		comment.setCommentId(userId);
		comment.setCommentRegdate(regdate);
		
		return commentRepository.save(comment);
	}

	@Override
	@Transactional
	public void deleteComment(int commentNo) {
		// TODO Auto-generated method stub
		
		commentRepository.deleteByCommentNo(commentNo);
	}

}
