package com.book.domain;

import org.springframework.stereotype.Component;

@Component
public class Book {
	
	private long id;
	private String title;
	private String name;
	private String author;
	private String address;
	private String email;
	private String contact;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	@Override
	public String toString() {
		return "Book [id=" + id + ", title=" + title + ", name=" + name + ", author=" + author + ", address=" + address
				+ ", email=" + email + ", contact=" + contact + "]";
	}
	
	
	
	

}
