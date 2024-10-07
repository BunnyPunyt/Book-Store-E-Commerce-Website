package model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class CartDetail implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	String MaGH;
	String MaND;
	String MaSP;
	int soluong;
	String mua;
	String tenSP;
	int gia;
	String img;
	
	public CartDetail() {
		super();
	}

	public CartDetail(String maND, String maGH, String maSP, int soluong, String mua, String tenSP, int gia,
			String img) {
		super();
		MaND = maND;
		MaGH = maGH;
		MaSP = maSP;
		this.soluong = soluong;
		this.mua = mua;
		this.tenSP = tenSP;
		this.gia = gia;
		this.img = img;
	}

	public String getMaND() {
		return MaND;
	}

	public void setMaND(String maND) {
		MaND = maND;
	}

	public String getMaGH() {
		return MaGH;
	}

	public void setMaGH(String maGH) {
		MaGH = maGH;
	}

	public String getMaSP() {
		return MaSP;
	}

	public void setMaSP(String maSP) {
		MaSP = maSP;
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

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
	
	public int getThanhtien() {
		return getGia()*getSoluong();
	}

}
