package com.booker.server.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.booker.server.model.Book;
import com.booker.server.model.Wish;
import com.booker.server.repository.BookRepository;
import com.booker.server.repository.WishRepository;
import com.booker.server.services.DocumentService;

@Service
public class DocumentServiceImpl implements DocumentService {

	@Autowired
    BookRepository bookRepository;
	@Autowired
	WishRepository wishRepository;

	@Override
	public Book findOneByBookId(int bookId) {
		// TODO Auto-generated method stub
		return bookRepository.findOneByBookId(bookId);
	}

	@Override
	public Page<Wish> findByUserId(Pageable pageable, String userId) {
		// TODO Auto-generated method stub
		return wishRepository.findByUserId(pageable, userId);
	}

	@Override
	public Wish insertWish(Integer bookId,String userId) {
		// TODO Auto-generated method stub
		Wish wish = new Wish();
		wish.setBookId(bookId);
		wish.setUserId(userId);
		return wishRepository.save(wish);
	}

	@Override
	public void deleteWish(Integer wishNo) {
		// TODO Auto-generated method stub
		wishRepository.delete(wishNo);;
	}

	@Override
	public Wish findOneByBookIdAndUserId(Integer bookId, String userId) {
		// TODO Auto-generated method stub
		return wishRepository.findOneByBookIdAndUserId(bookId, userId);
	}

}
