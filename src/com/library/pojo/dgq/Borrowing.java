package com.library.pojo.dgq;

public class Borrowing {
	private String bookno;
	private String bookname;
	private String author;
	private String borroweddate;
	private String shouldreturndate;
	
	
	public String getBookno() {
		return bookno;
	}
	public void setBookno(String bookno) {
		this.bookno = bookno;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getBorroweddate() {
		return borroweddate;
	}
	public void setBorroweddate(String borroweddate) {
		this.borroweddate = borroweddate;
	}
	public String getShouldreturndate() {
		return shouldreturndate;
	}
	public void setShouldreturndate(String shouldreturndate) {
		this.shouldreturndate = shouldreturndate;
	}
	@Override
	public String toString() {
		return "Borrowing [bookno=" + bookno + ", bookname=" + bookname + ", author=" + author + ", borroweddate="
				+ borroweddate + ", shouldreturndate=" + shouldreturndate + "]";
	}
	
	
	
	
}
