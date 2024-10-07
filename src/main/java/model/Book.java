package model;

import java.io.Serializable;
import javax.persistence.*;

import java.util.Date;
import java.util.List;

@Entity
@Table(name = "Books")
public class Book implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
    @Column(name = "maSP", nullable = false, length = 10)
    private String maSP;

    @ManyToOne
    @JoinColumn(name = "maDM", nullable = false)
    private Category category;

    @Column(name = "tenSP", nullable = false, length = 255)
    private String tenSP;

    @Column(name = "gia", nullable = false)
    private int gia;

    @Column(name = "tacgia", nullable = false, length = 255)
    private String tacgia;

    @Column(name = "nxb", nullable = false, length = 255)
    private String nxb;

    @Column(name = "mota", nullable = false, length = 255)
    private String mota;

    @Column(name = "ngaythem", nullable = false)
    private Date ngaythem;

    @Column(name = "hinhchinh", nullable = false, length = 255)
    private String hinhchinh;

    @OneToMany(mappedBy = "book", cascade = CascadeType.ALL)
    private List<BookDetail> bookDetails;

    @OneToMany(mappedBy = "book", cascade = CascadeType.ALL)
    private List<Galery> galeries;

    @OneToMany(mappedBy = "book", cascade = CascadeType.ALL)
    private List<OrderDetail> orderDetails;

    @OneToMany(mappedBy = "book", cascade = CascadeType.ALL)
    private List<Cart> carts;

	public Book() {
		super();
	}
	
	

	public Book(String maSP, Category category, String tenSP, int gia, String tacgia, String nxb, String mota,
			Date ngaythem, String hinhchinh) {
		super();
		this.maSP = maSP;
		this.category = category;
		this.tenSP = tenSP;
		this.gia = gia;
		this.tacgia = tacgia;
		this.nxb = nxb;
		this.mota = mota;
		this.ngaythem = ngaythem;
		this.hinhchinh = hinhchinh;
	}



	public Book(String maSP, Category category, String tenSP, int gia, String tacgia, String nxb, String mota,
			Date ngaythem, String hinhchinh, List<BookDetail> bookDetails, List<Galery> galeries,
			List<OrderDetail> orderDetails, List<Cart> carts) {
		super();
		this.maSP = maSP;
		this.category = category;
		this.tenSP = tenSP;
		this.gia = gia;
		this.tacgia = tacgia;
		this.nxb = nxb;
		this.mota = mota;
		this.ngaythem = ngaythem;
		this.hinhchinh = hinhchinh;
		this.bookDetails = bookDetails;
		this.galeries = galeries;
		this.orderDetails = orderDetails;
		this.carts = carts;
	}

	public String getMaSP() {
		return maSP;
	}

	public void setMaSP(String maSP) {
		this.maSP = maSP;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getTenSP() {
		return tenSP;
	}

	public void setTenSP(String tenSP) {
		this.tenSP = tenSP;
	}

	public int getGia() {
		return gia;
	}

	public void setGia(int gia) {
		this.gia = gia;
	}

	public String getTacgia() {
		return tacgia;
	}

	public void setTacgia(String tacgia) {
		this.tacgia = tacgia;
	}

	public String getNxb() {
		return nxb;
	}

	public void setNxb(String nxb) {
		this.nxb = nxb;
	}

	public String getMota() {
		return mota;
	}

	public void setMota(String mota) {
		this.mota = mota;
	}

	public Date getNgaythem() {
		return ngaythem;
	}

	public void setNgaythem(Date ngaythem) {
		this.ngaythem = ngaythem;
	}

	public String getHinhchinh() {
		return hinhchinh;
	}

	public void setHinhchinh(String hinhchinh) {
		this.hinhchinh = hinhchinh;
	}

	public List<BookDetail> getBookDetails() {
		return bookDetails;
	}

	public void setBookDetails(List<BookDetail> bookDetails) {
		this.bookDetails = bookDetails;
	}

	public List<Galery> getGaleries() {
		return galeries;
	}

	public void setGaleries(List<Galery> galeries) {
		this.galeries = galeries;
	}

	public List<OrderDetail> getOrderDetails() {
		return orderDetails;
	}

	public void setOrderDetails(List<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}

	public List<Cart> getCarts() {
		return carts;
	}

	public void setCarts(List<Cart> carts) {
		this.carts = carts;
	}
    
    
	
}
