package vn.webbanthuoc.entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import java.util.Date;

@Entity
@Table(name = "NhanVien")
public class NhanVien {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "IDMaNV")
    private int idMaNV;

    @Column(name = "Ten", nullable = false)
    private String ten;

    @Column(name = "Age", nullable = false)
    private int age;

    
    @Column(name = "Birthday", nullable = false)
    @CreationTimestamp
    private Date birthday;

    @Column(name = "VaiTro", nullable = false)
    private boolean vaiTro;

    @Column(name = "DiaChi", nullable = false)
    private String diaChi;

    @Column(name = "GioiTinh", nullable = false)
    private boolean gioiTinh;

    @Column(name = "TrangThai", nullable = false)
    private boolean trangThai;

    @Column(name = "MatKhau", nullable = false)
    private String matKhau;

    @Column(name = "TenDangNhap", nullable = false)
    private String tenDangNhap;

    // Constructors, getters, and setters
    public NhanVien() {
    }

    // Constructors, getters, and setters
    public NhanVien(String ten, int age, Date birthday, boolean vaiTro, String diaChi, boolean gioiTinh, boolean trangThai, String matKhau, String tenDangNhap) {
        this.ten = ten;
        this.age = age;
        this.birthday = birthday;
        this.vaiTro = vaiTro;
        this.diaChi = diaChi;
        this.gioiTinh = gioiTinh;
        this.trangThai = trangThai;
        this.matKhau = matKhau;
        this.tenDangNhap = tenDangNhap;
    }

    public int getIdMaNV() {
        return idMaNV;
    }

    public void setIdMaNV(int idMaNV) {
        this.idMaNV = idMaNV;
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

    public boolean isVaiTro() {
        return vaiTro;
    }

    public void setVaiTro(boolean vaiTro) {
        this.vaiTro = vaiTro;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public boolean isGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(boolean gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public boolean isTrangThai() {
        return trangThai;
    }

    public void setTrangThai(boolean trangThai) {
        this.trangThai = trangThai;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    public String getTenDangNhap() {
        return tenDangNhap;
    }

    public void setTenDangNhap(String tenDangNhap) {
        this.tenDangNhap = tenDangNhap;
    }
}
