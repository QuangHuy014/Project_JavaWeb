package vn.webbanthuoc.entity;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

public class hoaDon {
    private int IDHoaDon;
    private int iDKhachHang;
    private int IDMaNV;
    private Date NgayDH;
    @ManyToOne(cascade = CascadeType.MERGE)
	@JoinColumn(name = "IDHoaDonChiTiet", referencedColumnName = "IDHoaDonChiTiet")
	@JsonIgnoreProperties(value = { "applications", "hibernateLazyInitializer" }) // help history not error because map
	private hoaDonChiTiet hoaDonChiTiet;
    // Constructors, getters, and setters
    // Constructor
    
    public hoaDon(int IDHoaDon, int iDKhachHang, int IDMaNV, Date NgayDH) {
        this.IDHoaDon = IDHoaDon;
        this.iDKhachHang = iDKhachHang;
        this.IDMaNV = IDMaNV;
        this.NgayDH = NgayDH;
    }

    public hoaDon() {
		super();
	}

	// Getters and setters
    public int getIDHoaDon() {
        return IDHoaDon;
    }

    public void setIDHoaDon(int IDHoaDon) {
        this.IDHoaDon = IDHoaDon;
    }

    public int getIDKhachHang() {
        return iDKhachHang;
    }

    public void setIDKhachHang(int iDKhachHang) {
        this.iDKhachHang = iDKhachHang;
    }

    public int getIDMaNV() {
        return IDMaNV;
    }

    public void setIDMaNV(int IDMaNV) {
        this.IDMaNV = IDMaNV;
    }

    public Date getNgayDH() {
        return NgayDH;
    }

    public void setNgayDH(Date NgayDH) {
        this.NgayDH = NgayDH;
    }
}
