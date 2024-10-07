package model;
import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name = "Payment")
public class Payment implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
    @Column(name = "maPT", nullable = false, length = 10)
    private String maPT;

    @ManyToOne
    @JoinColumn(name = "maHD", nullable = false)
    private Order order;

    @Column(name = "pttt", nullable = false, length = 50)
    private String pttt;

    @Column(name = "sotien", nullable = false)
    private int sotien;

	public Payment() {
		super();
	}

	public Payment(String maPT, Order order, String pttt, int sotien) {
		super();
		this.maPT = maPT;
		this.order = order;
		this.pttt = pttt;
		this.sotien = sotien;
	}

	public String getMaPT() {
		return maPT;
	}

	public void setMaPT(String maPT) {
		this.maPT = maPT;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public String getPttt() {
		return pttt;
	}

	public void setPttt(String pttt) {
		this.pttt = pttt;
	}

	public int getSotien() {
		return sotien;
	}

	public void setSotien(int sotien) {
		this.sotien = sotien;
	}
    
    

}
