package vn.webbanthuoc.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import javax.persistence.Table;

@Entity
@Table(name = "NhomThuoc")
public class NhomThuoc {

    @Id
    @Column(name = "IDNhomThuoc", length = 50)
    private String idNhomThuoc;

    @Column(name = "TenLoai", nullable = false)
    private String tenLoai;

    // Constructors, getters, and setters
    public NhomThuoc() {
    }

    public NhomThuoc(String idNhomThuoc, String tenLoai) {
        this.idNhomThuoc = idNhomThuoc;
        this.tenLoai = tenLoai;
    }

    public String getIdNhomThuoc() {
        return idNhomThuoc;
    }

    public void setIdNhomThuoc(String idNhomThuoc) {
        this.idNhomThuoc = idNhomThuoc;
    }

    public String getTenLoai() {
        return tenLoai;
    }

    public void setTenLoai(String tenLoai) {
        this.tenLoai = tenLoai;
    }
}
