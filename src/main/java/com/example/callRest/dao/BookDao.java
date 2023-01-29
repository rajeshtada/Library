package com.example.callRest.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.callRest.entity.Book;

public interface BookDao extends JpaRepository<Book, Long> {
	
//	List<Book> getAllBook();
	
	
	

}
