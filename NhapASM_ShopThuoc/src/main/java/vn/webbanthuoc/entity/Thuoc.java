package vn.webbanthuoc.entity;



import org.hibernate.annotations.CreationTimestamp;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;	
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "Thuoc")
public class Thuoc {

	@Id
	@Column(name = "IDThuoc", length = 50)
	private String idThuoc;

	@Column(name = "Ten", nullable = false)
	private String ten;

	

	@Column(name = "SoLuong", nullable = false)
	private int soLuong;

	@Column(name = "Gia", nullable = false)
	private Float gia;

	@ManyToOne(cascade = CascadeType.MERGE)
	@JoinColumn(name = "idNhomThuoc", referencedColumnName = "idNhomThuoc")
	@JsonIgnoreProperties(value = { "applications", "hibernateLazyInitializer" }) // help history not error because map
	private NhomThuoc nhomThuoc;
	
	@ManyToOne(cascade = CascadeType.MERGE)
	@JoinColumn(name = "idKhachHang", referencedColumnName = "idKhachHang")
	@JsonIgnoreProperties(value = { "applications", "hibernateLazyInitializer" }) // help history not error because map
	private KhachHang khachHang;

	@ManyToOne(cascade = CascadeType.MERGE)
	@JoinColumn(name = "idMaNV", referencedColumnName = "idMaNV")
	@JsonIgnoreProperties(value = { "applications", "hibernateLazyInitializer" }) // help history not error because map
	private NhanVien nhanVien;

	@Column(name = "Hinh", nullable = false)
	private String hinh;

	@Column(name = "NguonGoc", nullable = false)
	private String nguonGoc;

	@Column(name = "CongDung", nullable = false)
	private String congDung;

	
	@Column(name = "NgaySanXuat", nullable = false)
	@CreationTimestamp
	private Date ngaySanXuat;

	@Column(name = "isActive", nullable = false)
	private boolean isActive;

	@Column(name = "BaoQuan", nullable = false)
	private String baoQuan;

	@Column(name = "DonVi", nullable = false)
	private String donVi;


	public Thuoc() {
	}

	public Thuoc(String idThuoc, String ten, NhomThuoc nhomThuoc, int soLuong, Float gia, KhachHang khachHang,
			NhanVien nhanVien, String hinh, String nguonGoc, String congDung, Date ngaySanXuat, boolean isActive,
			String baoQuan, String donVi) {
		this.idThuoc = idThuoc;
		this.ten = ten;
		this.nhomThuoc = nhomThuoc;
		this.soLuong = soLuong;
		this.gia = gia;
		this.khachHang = khachHang;
		this.nhanVien = nhanVien;
		this.hinh = hinh;
		this.nguonGoc = nguonGoc;
		this.congDung = congDung;
		this.ngaySanXuat = ngaySanXuat;
		this.isActive = isActive;
		this.baoQuan = baoQuan;
		this.donVi = donVi;
	}

	public String getIdThuoc() {
		return idThuoc;
	}

	public void setIdThuoc(String idThuoc) {
		this.idThuoc = idThuoc;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public NhomThuoc getNhomThuoc() {
		return nhomThuoc;
	}

	public void setNhomThuoc(NhomThuoc nhomThuoc) {
		this.nhomThuoc = nhomThuoc;

	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public Float getGia() {
		return gia;
	}

	public void setGia(Float gia) {
		this.gia = gia;
	}

	public KhachHang getKhachHang() {
		return khachHang;
	}

	public void setKhachHang(KhachHang khachHang) {
		this.khachHang = khachHang;
	}

	public NhanVien getNhanVien() {
		return nhanVien;
	}

	public void setNhanVien(NhanVien nhanVien) {
		this.nhanVien = nhanVien;
	}

	public String getHinh() {
		return hinh;
	}

	public void setHinh(String hinh) {
		this.hinh = hinh;
	}

	public String getNguonGoc() {
		return nguonGoc;
	}

	public void setNguonGoc(String nguonGoc) {
		this.nguonGoc = nguonGoc;
	}

	public String getCongDung() {
		return congDung;
	}

	public void setCongDung(String congDung) {
		this.congDung = congDung;
	}

	public Date getNgaySanXuat() {
		return ngaySanXuat;
	}

	public void setNgaySanXuat(Date ngaySanXuat) {
		this.ngaySanXuat = ngaySanXuat;
	}

	public boolean isActive() {
		return isActive;
	}

	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}

	public String getBaoQuan() {
		return baoQuan;
	}

	public void setBaoQuan(String baoQuan) {
		this.baoQuan = baoQuan;
	}

	public String getDonVi() {
		return donVi;
	}

	public void setDonVi(String donVi) {
		this.donVi = donVi;
	}
    
    @Transient
    private int quantity = 1;
	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	// Định nghĩa phương thức getTenThuoc
    
	
}