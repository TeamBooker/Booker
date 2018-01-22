package com.booker.server.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.booker.server.model.Book;
import com.booker.server.repository.SearchRepository;
import com.booker.server.services.SearchService;

@Service
public class SearchServiceImpl implements SearchService {
	
	@Autowired
    SearchRepository searchRepository;
	
	@Override
	public Page<Book> findByBook_titleStartingWith(Pageable pageable,String keyword) {
		return searchRepository.findByBookTitleStartingWith(pageable,keyword);
	}

	@Override
	public Page<Book> findAll(Pageable pageable) {
		// TODO Auto-generated method stub
		return  searchRepository.findAll(pageable);
	}
}
