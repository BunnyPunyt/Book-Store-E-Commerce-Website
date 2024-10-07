package model;
import javax.persistence.*;

import java.io.Serializable;
import java.util.List;


@Entity
@Table(name = "Users")
public class User implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
    @Column(name = "maND", nullable = false, length = 10)
    private String maND;

    @Column(name = "matkhau", nullable = false, length = 50)
    private String matkhau;

    @Column(name = "hoten", nullable = false, length = 50)
    private String hoten;

    @Column(name = "email", nullable = false, length = 50)
    private String email;

    @Column(name = "sdt", nullable = false, length = 15)
    private String sdt;

    @Column(name = "vaitro", nullable = false)
    private String vaitro;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private List<Address> addresses;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private List<Order> orders;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private List<Cart> carts;

	public User() {
		super();
	}

	public User(String maND, String matkhau, String hoten, String email, String sdt, String vaitro,
			List<Address> addresses, List<Order> orders, List<Cart> carts) {
		super();
		this.maND = maND;
		this.matkhau = matkhau;
		this.hoten = hoten;
		this.email = email;
		this.sdt = sdt;
		this.vaitro = vaitro;
		this.addresses = addresses;
		this.orders = orders;
		this.carts = carts;
	}
	
	

	public User(String maND, String matkhau, String hoten, String email, String sdt, String vaitro) {
		super();
		this.maND = maND;
		this.matkhau = matkhau;
		this.hoten = hoten;
		this.email = email;
		this.sdt = sdt;
		this.vaitro = vaitro;
	}

	public String getMaND() {
		return maND;
	}

	public void setMaND(String maND) {
		this.maND = maND;
	}

	public String getMatkhau() {
		return matkhau;
	}

	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}

	public String getHoten() {
		return hoten;
	}

	public void setHoten(String hoten) {
		this.hoten = hoten;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public String getVaitro() {
		return vaitro;
	}

	public void setVaitro(String vaitro) {
		this.vaitro = vaitro;
	}

	public List<Address> getAddresses() {
		return addresses;
	}

	public void setAddresses(List<Address> addresses) {
		this.addresses = addresses;
	}

	public List<Order> getOrders() {
		return orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}

	public List<Cart> getCarts() {
		return carts;
	}

	public void setCarts(List<Cart> carts) {
		this.carts = carts;
	}
    
    
    
}
