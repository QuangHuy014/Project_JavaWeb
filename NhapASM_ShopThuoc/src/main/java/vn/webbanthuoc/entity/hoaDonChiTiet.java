package vn.webbanthuoc.entity;

public class hoaDonChiTiet {
    private int IDHoaDonChiTiet;
    private int IDHoaDon;
    private String TenThuoc;
    private String IDThuoc;
    private String SoLuong;
    private float Gia;
    private String DonVi;

    public hoaDonChiTiet() {
		super();
	}

	public hoaDonChiTiet(int IDHoaDonChiTiet, int IDHoaDon, String TenThuoc, String IDThuoc, String SoLuong, float Gia, String DonVi) {
        this.IDHoaDonChiTiet = IDHoaDonChiTiet;
        this.IDHoaDon = IDHoaDon;
        this.TenThuoc = TenThuoc;
        this.IDThuoc = IDThuoc;
        this.SoLuong = SoLuong;
        this.Gia = Gia;
        this.DonVi = DonVi;
    }

	public int getIDHoaDonChiTiet() {
		return IDHoaDonChiTiet;
	}

	public void setIDHoaDonChiTiet(int iDHoaDonChiTiet) {
		IDHoaDonChiTiet = iDHoaDonChiTiet;
	}

	public int getIDHoaDon() {
		return IDHoaDon;
	}

	public void setIDHoaDon(int iDHoaDon) {
		IDHoaDon = iDHoaDon;
	}

	public String getTenThuoc() {
		return TenThuoc;
	}

	public void setTenThuoc(String tenThuoc) {
		TenThuoc = tenThuoc;
	}

	public String getIDThuoc() {
		return IDThuoc;
	}

	public void setIDThuoc(String iDThuoc) {
		IDThuoc = iDThuoc;
	}

	public String getSoLuong() {
		return SoLuong;
	}

	public void setSoLuong(String i) {
		SoLuong = i;
	}

	public float getGia() {
		return Gia;
	}

	public void setGia(float gia) {
		Gia = gia;
	}

	public String getDonVi() {
		return DonVi;
	}

	public void setDonVi(String donVi) {
		DonVi = donVi;
	}


 
}
