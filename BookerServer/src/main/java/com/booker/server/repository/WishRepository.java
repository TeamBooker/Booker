package com.booker.server.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.booker.server.model.Book;
import com.booker.server.model.Wish;

public interface WishRepository extends PagingAndSortingRepository<Wish, Integer> {
	
	Page<Wish> findByUserId(Pageable pageable,String userId);
	Wish findOneByBookIdAndUserId(Integer bookId,String userId);

}
