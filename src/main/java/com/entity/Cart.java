package com.entity;

public class Cart {
	private int cid;
	private int uid;
	private int bookid;
	private String bookname;
	private String authorname;
	private Double price;
	private Double totalprice;

	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Cart(int cid, int uid, int bookid, String bookname, String authorname, Double price, Double totalprice) {
		super();
		this.cid = cid;
		this.uid = uid;
		this.bookid = bookid;
		this.bookname = bookname;
		this.authorname = authorname;
		this.price = price;
		this.totalprice = totalprice;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public int getBookid() {
		return bookid;
	}

	public void setBookid(int bookid) {
		this.bookid = bookid;
	}

	public String getBookname() {
		return bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	public String getAuthorname() {
		return authorname;
	}

	public void setAuthorname(String authorname) {
		this.authorname = authorname;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Double getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(Double totalprice) {
		this.totalprice = totalprice;
	}

	@Override
	public String toString() {
		return "Cart [cid=" + cid + ", uid=" + uid + ", bookid=" + bookid + ", bookname=" + bookname + ", authorname="
				+ authorname + ", price=" + price + ", totalprice=" + totalprice + "]";
	}
}
