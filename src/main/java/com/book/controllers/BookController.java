package com.book.controllers;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.book.domain.Book;
import com.book.service.BookService;


@Controller
public class BookController {
	
	@Autowired
	BookService bookService;
	
	public void bookAttribute(Model model) {
		model.addAttribute("book",new Book());
	}
	
	@RequestMapping(path="/byName", method=RequestMethod.POST)
	public String searchBookByname(@ModelAttribute Book book,Model model) {
		System.out.println("Inside book controller ================= bookName : " + book.getName());
		
		List<Book> booklist=bookService.searchBookByName(book.getName());
		
		model.addAttribute("booklist",booklist);
		
		return "searchHome";
	}
	
	
	@RequestMapping(path="/edit", method=RequestMethod.GET)
	public String editBook() {
		
		return "redirect:byName";
	}
}
