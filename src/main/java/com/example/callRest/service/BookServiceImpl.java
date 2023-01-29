package com.example.callRest.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.callRest.dao.BookDao;
import com.example.callRest.dao.BookDaoImpl;
import com.example.callRest.entity.Book;

@Service
public class BookServiceImpl implements BookService{
	
	@Autowired
	public BookDao bookDao;

	@Override
	public List<Book> findAllBook() {
		
		List<Book> allBookList = bookDao.findAll();
		return allBookList;
	}

	@Override
	public Book saveBook(Book book) {
		Book books = bookDao.save(book);
		return books;
	}


	
}
