package model;

import java.io.Serializable;
import javax.persistence.*;

@Entity
@Table(name = "Cart")
public class Cart implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
    @Column(name = "maGH", nullable = false, length = 10)
    private String maGH;

    @ManyToOne
    @JoinColumn(name = "maND", nullable = false)
    private User user;

    @ManyToOne
    @JoinColumn(name = "maSP", nullable = false)
    private Book book;

    @Column(name = "soluong", nullable = false)
    private int soluong;

    @Column(name = "mua", nullable = false, length = 50)
    private String mua;

	public Cart() {
		super();
	}

	public Cart(String maGH, User user, Book book, int soluong, String mua) {
		super();
		this.maGH = maGH;
		this.user = user;
		this.book = book;
		this.soluong = soluong;
		this.mua = mua;
	}

	public String getMaGH() {
		return maGH;
	}

	public void setMaGH(String maGH) {
		this.maGH = maGH;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	public String getMua() {
		return mua;
	}

	public void setMua(String mua) {
		this.mua = mua;
	}
    
    
}
