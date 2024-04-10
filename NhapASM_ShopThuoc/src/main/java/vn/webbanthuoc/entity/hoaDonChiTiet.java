package vn.webbanthuoc.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name="HoaDonChiTiet")
public class hoaDonChiTiet {
	@Id
	  @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int IDHoaDonChiTiet;
    private String TenThuoc;
    private int SoLuong;
    private float Gia;
    private String DonVi;
	@ManyToOne(cascade = CascadeType.MERGE)
	@JoinColumn(name = "IDThuoc", referencedColumnName = "IDThuoc")
	@JsonIgnoreProperties(value = { "applications", "hibernateLazyInitializer" }) // help history not error because map
	private Thuoc thuoc;

    @ManyToOne(cascade = CascadeType.MERGE)
    @JoinColumn(name = "IDHoaDon", referencedColumnName = "IDHoaDon")
    @JsonIgnoreProperties(value = { "applications", "hibernateLazyInitializer" }) // help history not error because map
    private hoaDon hoaDon;
    public hoaDonChiTiet() {
		super();
	}

	public hoaDonChiTiet(int iDHoaDonChiTiet, int iDHoaDon, String tenThuoc, int soLuong, float gia, String donVi,
			Thuoc thuoc) {
		super();
		IDHoaDonChiTiet = iDHoaDonChiTiet;
	
		TenThuoc = tenThuoc;
		SoLuong = soLuong;
		Gia = gia;
		DonVi = donVi;
		this.thuoc = thuoc;
	}

	public int getIDHoaDonChiTiet() {
		return IDHoaDonChiTiet;
	}

	public void setIDHoaDonChiTiet(int iDHoaDonChiTiet) {
		IDHoaDonChiTiet = iDHoaDonChiTiet;
	}



	public void setDonVi(String donVi) {
		DonVi = donVi;
	}

	public String getTenThuoc() {
		return TenThuoc;
	}

	public void setTenThuoc(String tenThuoc) {
		TenThuoc = tenThuoc;
	}

	public int getSoLuong() {
		return SoLuong;
	}

	public void setSoLuong(int soLuong) {
		SoLuong = soLuong;
	}

	public float getGia() {
		return Gia;
	}

	public void setGia(float gia) {
		Gia = gia;
	}

	public hoaDon getHoaDon() {
		return hoaDon;
	}

	public void setHoaDon(hoaDon hoaDon) {
		this.hoaDon = hoaDon;
	}

	public String getDonVi() {
		return DonVi;
	}

	public Thuoc getThuoc() {
		return thuoc;
	}

	public void setThuoc(Thuoc thuoc) {
		this.thuoc = thuoc;
	}

	

	 public String getIDThuoc() {
	        return this.thuoc != null ? this.thuoc.getIdThuoc() : (String) null;
	    }

	    public void setIDThuoc(String idThuoc) {
	        if (this.thuoc == null) {
	            this.thuoc = new Thuoc();
	        }
	        this.thuoc.setIdThuoc(idThuoc);
	    }


 
}
