package com.booker.server.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.booker.server.model.Comment;

public interface CommentRepository extends PagingAndSortingRepository<Comment, Integer> {
	
	Page<Comment> findByCommentBookId(Pageable pageable,int bookId);
	void deleteByCommentNo(int commentNo);
}
