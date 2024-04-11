package vn.webbanthuoc.entity;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "HoaDon")
public class hoaDon {
	@Id
	private int IDHoaDon;
	private int IDKhachHang;
	private int IDMaNV;
	@Column(name = "NgayDH", nullable = false)
	@CreationTimestamp
	private Date ngayDH;

	@Column(name = "Email", nullable = false)
	private String email;
	// Thêm trường Email của khách hàng

	@Column(name = "TenKhachHang", nullable = false)
	private String tenKhachHang;
	// Thêm trường Tên khách hàng

	@Column(name = "DiaChiKhachHang", nullable = false)
	private String diaChiKhachHang;
	
	@Column(name = "SoDienThoaiKhachHang", nullable = false)
	private String soDienThoaiKhachHang; // Thêm trường Địa chỉ của khách hàng

	public hoaDon() {

	}

	public hoaDon(int iDHoaDon, int iDKhachHang, int iDMaNV, Date ngayDH, String email, String tenKhachHang,
			String diaChiKhachHang, String soDienThoaiKhachHang) {
		super();
		IDHoaDon = iDHoaDon;
		IDKhachHang = iDKhachHang;
		IDMaNV = iDMaNV;
		this.ngayDH = ngayDH;
		this.email = email;
		this.tenKhachHang = tenKhachHang;
		this.diaChiKhachHang = diaChiKhachHang;
		this.soDienThoaiKhachHang = soDienThoaiKhachHang;
	}

	public int getIDHoaDon() {
		return IDHoaDon;
	}

	public void setIDHoaDon(int iDHoaDon) {
		IDHoaDon = iDHoaDon;
	}

	public int getIDKhachHang() {
		return IDKhachHang;
	}

	public void setIDKhachHang(int iDKhachHang) {
		IDKhachHang = iDKhachHang;
	}

	public int getIDMaNV() {
		return IDMaNV;
	}

	public void setIDMaNV(int iDMaNV) {
		IDMaNV = iDMaNV;
	}

	public Date getNgayDH() {
		return ngayDH;
	}

	public void setNgayDH(Date ngayDH) {
		this.ngayDH = ngayDH;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTenKhachHang() {
		return tenKhachHang;
	}

	public void setTenKhachHang(String tenKhachHang) {
		this.tenKhachHang = tenKhachHang;
	}

	public String getDiaChiKhachHang() {
		return diaChiKhachHang;
	}

	public void setDiaChiKhachHang(String diaChiKhachHang) {
		this.diaChiKhachHang = diaChiKhachHang;
	}

	public String getSoDienThoaiKhachHang() {
		return soDienThoaiKhachHang;
	}

	public void setSoDienThoaiKhachHang(String soDienThoaiKhachHang) {
		this.soDienThoaiKhachHang = soDienThoaiKhachHang;
	}

}
