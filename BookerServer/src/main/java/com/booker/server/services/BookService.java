package com.booker.server.services;

import com.booker.server.model.Book;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

/**
 * Created by Cheechyo on 2018. 1. 18..
 */

public interface BookService {
    Page<Book> findAll(Pageable pageable);
}
