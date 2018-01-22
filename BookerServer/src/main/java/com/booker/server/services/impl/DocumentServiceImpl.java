package com.booker.server.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booker.server.model.Book;
import com.booker.server.repository.BookRepository;
import com.booker.server.services.DocumentService;

@Service
public class DocumentServiceImpl implements DocumentService {

	@Autowired
    BookRepository bookRepository;

	@Override
	public Book findOneByBookId(int bookId) {
		// TODO Auto-generated method stub
		return bookRepository.findOneByBookId(bookId);
	}

}
