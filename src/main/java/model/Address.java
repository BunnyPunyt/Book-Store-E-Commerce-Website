package model;
import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name = "Address")
public class Address implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
    @Column(name = "maDC", nullable = false, length = 10)
    private String maDC;

    @ManyToOne
    @JoinColumn(name = "maND", nullable = false)
    private User user;

    @Column(name = "tinhtp", nullable = false, length = 255)
    private String tinhtp;

    @Column(name = "quanhuyen", nullable = false, length = 255)
    private String quanhuyen;

    @Column(name = "sonha", nullable = false, length = 255)
    private String sonha;

	public Address() {
		super();
	}

	public Address(String maDC, User user, String tinhtp, String quanhuyen, String sonha) {
		super();
		this.maDC = maDC;
		this.user = user;
		this.tinhtp = tinhtp;
		this.quanhuyen = quanhuyen;
		this.sonha = sonha;
	}

	public String getMaDC() {
		return maDC;
	}

	public void setMaDC(String maDC) {
		this.maDC = maDC;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getTinhtp() {
		return tinhtp;
	}

	public void setTinhtp(String tinhtp) {
		this.tinhtp = tinhtp;
	}

	public String getQuanhuyen() {
		return quanhuyen;
	}

	public void setQuanhuyen(String quanhuyen) {
		this.quanhuyen = quanhuyen;
	}

	public String getSonha() {
		return sonha;
	}

	public void setSonha(String sonha) {
		this.sonha = sonha;
	}
    
    

}
