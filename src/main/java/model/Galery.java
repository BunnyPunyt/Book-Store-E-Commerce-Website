package model;
import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name = "Galery")
public class Galery implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
    @Column(name = "maTB", nullable = false, length = 10)
    private String maTB;

    @ManyToOne
    @JoinColumn(name = "maSP", nullable = false)
    private Book book;

    @Column(name = "img", nullable = false, length = 100)
    private String img;

	public Galery() {
		super();
	}

	public Galery(String maTB, Book book, String img) {
		super();
		this.maTB = maTB;
		this.book = book;
		this.img = img;
	}

	public String getMaTB() {
		return maTB;
	}

	public void setMaTB(String maTB) {
		this.maTB = maTB;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
    
    
}
