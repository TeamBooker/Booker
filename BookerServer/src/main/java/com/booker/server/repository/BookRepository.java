package com.booker.server.repository;

import com.booker.server.model.Book;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 * Created by Cheechyo on 2018. 1. 18..
 */
public interface BookRepository extends PagingAndSortingRepository<Book, Integer> {
	Book findOneByBookId(int bookId);
}
