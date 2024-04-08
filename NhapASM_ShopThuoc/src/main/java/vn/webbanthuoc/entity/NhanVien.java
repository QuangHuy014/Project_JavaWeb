package vn.webbanthuoc.entity;


import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "NhanVien")
//@NamedQuery(name = "User.findAll", query = "SELECT u FROM User u order by u.idkhachhang")
public class NhanVien {
    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "IDMaNv")
    private int idmanv;
    
    @Column(name = "Ten")
    private String ten;

    @Column(name = "Age")	
    private int age;

    @Column(name = "Birthday")
    private Date birthday;

    @Column(name = "VaiTro")
    private boolean vaitro;
    
    @Column(name = "DiaChi")
    private String diachi;
    
    @Column(name = "GioiTinh")
    private boolean gioitinh;
    
    @Column(name = "TrangThai")
    private boolean trangthai;
    
    @Column(name = "MatKhau")
    private String matkhau;
    
    @Column(name = "TenDangNhap")
    private String tendangnhap;

	public NhanVien() {
		super();
	}

	public NhanVien(int idmanv, String ten, int age, Date birthday, boolean vaitro, String diachi, boolean gioitinh,
			boolean trangthai, String matkhau, String tendangnhap) {
		super();
		this.idmanv = idmanv;
		this.ten = ten;
		this.age = age;
		this.birthday = birthday;
		this.vaitro = vaitro;
		this.diachi = diachi;
		this.gioitinh = gioitinh;
		this.trangthai = trangthai;
		this.matkhau = matkhau;
		this.tendangnhap = tendangnhap;
	}

	public int getIdmanv() {
		return idmanv;
	}

	public void setIdmanv(int idmanv) {
		this.idmanv = idmanv;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public boolean isVaitro() {
		return vaitro;
	}

	public void setVaitro(boolean vaitro) {
		this.vaitro = vaitro;
	}

	public String getDiachi() {
		return diachi;
	}

	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}

	public boolean isGioitinh() {
		return gioitinh;
	}

	public void setGioitinh(boolean gioitinh) {
		this.gioitinh = gioitinh;
	}

	public boolean isTrangthai() {
		return trangthai;
	}

	public void setTrangthai(boolean trangthai) {
		this.trangthai = trangthai;
	}

	public String getMatkhau() {
		return matkhau;
	}

	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}

	public String getTendangnhap() {
		return tendangnhap;
	}

	public void setTendangnhap(String tendangnhap) {
		this.tendangnhap = tendangnhap;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}

