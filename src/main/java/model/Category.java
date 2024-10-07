package model;
import javax.persistence.*;

import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "Category")
public class Category implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
    @Column(name = "maDM", nullable = false, length = 10)
    private String maDM;

    @Column(name = "temDM", nullable = false, length = 255)
    private String temDM;

    @Column(name = "mota", nullable = false, length = 255)
    private String mota;

    @OneToMany(mappedBy = "category", cascade = CascadeType.ALL)
    private List<Book> books;

	public Category() {
		super();
	}

	public Category(String maDM, String temDM, String mota, List<Book> books) {
		super();
		this.maDM = maDM;
		this.temDM = temDM;
		this.mota = mota;
		this.books = books;
	}

	public String getMaDM() {
		return maDM;
	}

	public void setMaDM(String maDM) {
		this.maDM = maDM;
	}

	public String getTemDM() {
		return temDM;
	}

	public void setTemDM(String temDM) {
		this.temDM = temDM;
	}

	public String getMota() {
		return mota;
	}

	public void setMota(String mota) {
		this.mota = mota;
	}

	public List<Book> getBooks() {
		return books;
	}

	public void setBooks(List<Book> books) {
		this.books = books;
	}
    
    
}
