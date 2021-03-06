package com.booker.server.services;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.booker.server.model.Book;
import com.booker.server.model.Wish;

public interface DocumentService {
	Book findOneByBookId(int bookId);
	Page<Wish> findByUserId(Pageable pageable,String userId);
	Wish findOneByBookIdAndUserId(Integer bookId,String userId);
	Wish insertWish(Integer bookId,String userId);
	void deleteWish(Integer wishNo);
}
