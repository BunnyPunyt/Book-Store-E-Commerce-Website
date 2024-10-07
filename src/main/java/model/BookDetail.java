package model;
import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name = "Book_detail")
public class BookDetail implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
    @Column(name = "maCTS", nullable = false, length = 10)
    private String maCTS;

    @ManyToOne
    @JoinColumn(name = "maSP", nullable = false)
    private Book book;

    @Column(name = "mua", nullable = false, length = 50)
    private String mua;

    @Column(name = "soluong")
    private int soluong;

	public BookDetail() {
		super();
	}

	public BookDetail(String maCTS, Book book, String mua, int soluong) {
		super();
		this.maCTS = maCTS;
		this.book = book;
		this.mua = mua;
		this.soluong = soluong;
	}

	public String getMaCTS() {
		return maCTS;
	}

	public void setMaCTS(String maCTS) {
		this.maCTS = maCTS;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public String getMua() {
		return mua;
	}

	public void setMua(String mua) {
		this.mua = mua;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
    
    
    
}
