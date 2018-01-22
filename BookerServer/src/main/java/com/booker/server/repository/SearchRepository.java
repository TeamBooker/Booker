package com.booker.server.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.booker.server.model.Book;

public interface SearchRepository extends PagingAndSortingRepository<Book, Integer> {

	Page<Book> findByBookTitleStartingWith(Pageable pageable,String keyword);

}
