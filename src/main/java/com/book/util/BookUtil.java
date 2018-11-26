package com.book.util;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import com.book.domain.Book;

public class BookUtil {
	
	private static Book book=new Book();
	
	private static Book book1=new Book();
	
	private static Map<String,List<Book>> bookMap;
	
public static Map<String,List<Book>> bookRepoByname(){

      List<Book> bookjavaList=new ArrayList<Book>();
      List<Book> bookSpringList=new ArrayList<Book>();
 	 
      bookMap=new LinkedHashMap<>();
      
		//code to communicate book table.
      
        book.setId(1);
        book.setTitle("OCJP");
        book.setName("Java");
		book.setAuthor("Khalid Khalid");
		book.setAddress("CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan");
		book.setEmail("khalid.moghalai@gmail.com");
		book.setContact("923335586757");
		
		book1.setId(2);
		book1.setTitle("spring core");
        book1.setName("Spring");
		book1.setAuthor("Khalid Khalid");
		book1.setAddress("CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan");
		book1.setEmail("khalid.moghalai@gmail.com");
		book1.setContact("131313113");
		
		bookjavaList.add(book);
		bookjavaList.add(book);
		bookjavaList.add(book);
		bookjavaList.add(book);
		
		bookMap.put(book.getName(),bookjavaList);
		
       
		bookSpringList.add(book1);
		bookSpringList.add(book1);
		bookSpringList.add(book1);
	
		bookMap.put(book1.getName(),bookSpringList);
		
		
		System.out.println("============bookMap==========");
		System.out.println(bookMap);
		
		return bookMap;
		
	}

}
