package model;
import javax.persistence.*;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "[order]")
public class Order implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
    @Column(name = "maHD", nullable = false, length = 10)
    private String maHD;

    @ManyToOne
    @JoinColumn(name = "maND", nullable = false)
    private User user;

    @Column(name = "diachiGH", nullable = false, length = 255)
    private String diachiGH;

    @Column(name = "tongtien", nullable = false)
    private int tongtien;

    @Column(name = "ngaydathang", nullable = false)
    private Date ngaydathang;

    @OneToMany(mappedBy = "order", cascade = CascadeType.ALL)
    private List<OrderDetail> orderDetails;

    @OneToMany(mappedBy = "order", cascade = CascadeType.ALL)
    private List<Payment> payments;

	public Order() {
		super();
	}

	public Order(String maHD, User user, String diachiGH, int tongtien, Date ngaydathang,
			List<OrderDetail> orderDetails, List<Payment> payments) {
		super();
		this.maHD = maHD;
		this.user = user;
		this.diachiGH = diachiGH;
		this.tongtien = tongtien;
		this.ngaydathang = ngaydathang;
		this.orderDetails = orderDetails;
		this.payments = payments;
	}

	public Order(String maHD, User user, String diachiGH, int tongtien, Date ngaydathang) {
		super();
		this.maHD = maHD;
		this.user = user;
		this.diachiGH = diachiGH;
		this.tongtien = tongtien;
		this.ngaydathang = ngaydathang;
	}

	public String getMaHD() {
		return maHD;
	}

	public void setMaHD(String maHD) {
		this.maHD = maHD;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getDiachiGH() {
		return diachiGH;
	}

	public void setDiachiGH(String diachiGH) {
		this.diachiGH = diachiGH;
	}

	public int getTongtien() {
		return tongtien;
	}

	public void setTongtien(int tongtien) {
		this.tongtien = tongtien;
	}

	public Date getNgaydathang() {
		return ngaydathang;
	}

	public void setNgaydathang(Date ngaydathang) {
		this.ngaydathang = ngaydathang;
	}

	public List<OrderDetail> getOrderDetails() {
		return orderDetails;
	}

	public void setOrderDetails(List<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}

	public List<Payment> getPayments() {
		return payments;
	}

	public void setPayments(List<Payment> payments) {
		this.payments = payments;
	}
    
    
}
