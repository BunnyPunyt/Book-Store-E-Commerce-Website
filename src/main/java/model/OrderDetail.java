package model;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name = "order_detail")
public class OrderDetail implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "maCT", nullable = false, length = 10)
	private String maCT;

	@ManyToOne
	@JoinColumn(name = "maHD", nullable = false)
	private Order order;

	@ManyToOne
	@JoinColumn(name = "maSP", nullable = false)
	private Book book;

	@Column(name = "gia", nullable = false)
	private int gia;

	@Column(name = "soluong", nullable = false)
	private int soluong;

	public OrderDetail() {
		super();
	}

	public OrderDetail(String maCT, Order order, Book book, int gia, int soluong) {
		super();
		this.maCT = maCT;
		this.order = order;
		this.book = book;
		this.gia = gia;
		this.soluong = soluong;
	}

	public String getMaCT() {
		return maCT;
	}

	public void setMaCT(String maCT) {
		this.maCT = maCT;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public int getGia() {
		return gia;
	}

	public void setGia(int gia) {
		this.gia = gia;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	
	
}
