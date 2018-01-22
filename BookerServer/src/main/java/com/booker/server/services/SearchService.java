package com.booker.server.services;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.booker.server.model.Book;

public interface SearchService {
	Page<Book> findAll(Pageable pageable);
	Page<Book> findByBook_titleStartingWith(Pageable pageable,String keyword);

}
