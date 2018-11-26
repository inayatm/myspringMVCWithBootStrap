package com.book.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.book.domain.Book;
import com.book.util.BookUtil;

@Service
public class BookService {

   Map<String,List<Book>> listBooksmap=BookUtil.bookRepoByname();
   List<Book> matchedBooklist=null;
	
	public List<Book> searchBookByName(String bookName){
		
		System.out.println("======searchBookByName "+bookName);
		
		
		

		for(String key :listBooksmap.keySet()) {
		
			if(key.equalsIgnoreCase(bookName)) {
				
				System.out.println("========== key " +key );
				
				matchedBooklist=listBooksmap.get(key);
				
			return matchedBooklist;
		}
//			if(book.getName().equalsIgnoreCase(bookName)) {
//				System.out.println("======Found==== " +listBooks);
//				
//				matchedBooklist.add(listBooks.)
//				return listBooks;
//			}
		}
		
		
		return null;
	}
	
	
	
	
	
	

}
