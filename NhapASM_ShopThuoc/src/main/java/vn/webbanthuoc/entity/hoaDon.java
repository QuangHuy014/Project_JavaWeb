package vn.webbanthuoc.entity;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
@Entity
@Table(name="HoaDon")
public class hoaDon {
	@Id
    private int IDHoaDon;
    private int IDKhachHang;
    private int IDMaNV;
    private Date NgayDH;
    private String Email; // Thêm trường Email của khách hàng
    private String TenKhachHang; // Thêm trường Tên khách hàng
    private String DiaChiKhachHang; // Thêm trường Địa chỉ của khách hàng
    private String SoDienThoaiKhachHang; // Thêm trường Số điện thoại của khách hàng


	public hoaDon(int IDHoaDon, int iDKhachHang, int IDMaNV, Date NgayDH) {
        this.IDHoaDon = IDHoaDon;
        this.IDKhachHang = iDKhachHang;
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
        return IDKhachHang;
    }

    public void setIDKhachHang(int iDKhachHang) {
        this.IDKhachHang = iDKhachHang;
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

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getTenKhachHang() {
        return TenKhachHang;
    }

    public void setTenKhachHang(String TenKhachHang) {
        this.TenKhachHang = TenKhachHang;
    }

    public String getDiaChiKhachHang() {
        return DiaChiKhachHang;
    }

    public void setDiaChiKhachHang(String DiaChiKhachHang) {
        this.DiaChiKhachHang = DiaChiKhachHang;
    }

    public String getSoDienThoaiKhachHang() {
        return SoDienThoaiKhachHang;
    }

    public void setSoDienThoaiKhachHang(String SoDienThoaiKhachHang) {
        this.SoDienThoaiKhachHang = SoDienThoaiKhachHang;
    }
}
