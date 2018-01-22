package com.booker.server.services;

import com.booker.server.model.Book;

public interface DocumentService {
	Book findOneByBookId(int bookId);
}
