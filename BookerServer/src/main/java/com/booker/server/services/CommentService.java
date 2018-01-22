package com.booker.server.services;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.booker.server.model.Comment;

@Service
public interface CommentService {
	Page<Comment> findByCommentBookId(Pageable pageable,int bookId);
	Comment insertComment(int bookId,int rate ,String bookComment,String userId);
	void deleteComment(int commentNo);
}
