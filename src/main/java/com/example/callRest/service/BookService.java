package com.example.callRest.service;

import java.util.List;

import com.example.callRest.entity.Book;


public interface BookService {
	
	

	List<Book> findAllBook();

	Book saveBook(Book book);

	
	

}
