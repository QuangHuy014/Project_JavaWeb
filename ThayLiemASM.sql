create database DuAnJava4
use DuAnJava4

select * from [NhanVien]
select * from [HoaDon]
select * from [Thuoc]
select * from [KhachHang]
select * from [HoaDon]
select * from [HoaDonChiTiet]

CREATE TABLE [NhanVien] (
  [IDMaNV] int primary key,
  [Ten] NVARCHAR(100) NOT NULL,
  [Age] int NOT NULL,
  [Birthday] date NOT NULL,
  [VaiTro] bit NOT NULL,
  [DiaChi] NVARCHAR(255) NOT NULL,
  [GioiTinh] bit NOT NULL,
  [TrangThai] bit NOT NULL,
  [MatKhau] NVARCHAR(100) NOT NULL,
  [TenDangNhap] NVARCHAR(100) NOT NULL
);

CREATE TABLE [KhachHang] (
  [IDKhachHang] int primary key,
  [TenDangNhap] NVARCHAR(100) NOT NULL,
  [MatKhau] NVARCHAR(100) NOT NULL,
  [Ten] NVARCHAR(100) NOT NULL,
  [GioiTinh] bit NOT NULL
);

CREATE TABLE [NhomThuoc] (
  [IDNhomThuoc] NVARCHAR(50) primary key,
  [TenLoai] NVARCHAR(100) NOT NULL
);

CREATE TABLE [Thuoc] (
  [IDThuoc] NVARCHAR(50) primary key,
  [Ten] NVARCHAR(100) NOT NULL,
  [IDNhomThuoc] NVARCHAR(50) NOT NULL,
  [SoLuong] int NOT NULL,
  [Gia] Float NOT NULL,
  [IDKhachHang] int,
  [IDMaNV] int,
  [Hinh] NVARCHAR(255) not null,
  [NguonGoc] NVARCHAR(255) NOT NULL,
  [CongDung] NVARCHAR(255) NOT NULL,
  [NgaySanXuat] date NOT NULL,
  isActive bit not null default 1,
  [BaoQuan] NVARCHAR(255) NOT NULL,
  [DonVi] NVARCHAR(50) NOT NULL,
  FOREIGN KEY (IDNhomThuoc) REFERENCES NhomThuoc(IDNhomThuoc) ON DELETE NO ACTION ON UPDATE CASCADE,
  FOREIGN KEY (IDKhachHang) REFERENCES KhachHang(IDKhachHang) ON DELETE NO ACTION ON UPDATE CASCADE,
  FOREIGN KEY (IDMaNV) REFERENCES NhanVien(IDMaNV) ON DELETE NO ACTION ON UPDATE CASCADE
);

CREATE TABLE [HoaDon] (
  [IDHoaDon] int primary key not null,
  [iDKhachHang] int not null,
  [IDMaNV] int not null,
  [NgayDH] Date not null,
  FOREIGN KEY ([IDMaNV]) REFERENCES [NhanVien]([IDMaNV]) ON DELETE NO ACTION ON UPDATE CASCADE,
  FOREIGN KEY (iDKhachHang) REFERENCES [KhachHang](iDKhachHang) ON DELETE NO ACTION ON UPDATE CASCADE
);

CREATE TABLE [HoaDonChiTiet] (
  [IDHoaDonChiTiet] int primary key,
  [IDHoaDon] int not null,
  [TenThuoc] NVARCHAR(255) not null,
  [IDThuoc] NVARCHAR(50) not null,
  [SoLuong] NVARCHAR(255) not null,
  [Gia] Float not null,
  [DonVi] NVARCHAR(255) not null,
  FOREIGN KEY ([IDHoaDon]) REFERENCES [HoaDon]([IDHoaDon]) ON DELETE NO ACTION ON UPDATE CASCADE,
  FOREIGN KEY ([IDThuoc]) REFERENCES [Thuoc]([IDThuoc]) ON DELETE NO ACTION ON UPDATE NO ACTION
);




delete NhanVien
delete NhomThuoc

-- Thêm dữ liệu vào bảng NhanVien
INSERT INTO NhanVien (IDMaNV, Ten, Age, Birthday, VaiTro, DiaChi, GioiTinh, TrangThai, MatKhau, TenDangNhap)
VALUES 
(1, 'Nguyen Van A', 30, '1992-01-15', 1, '123 Duong ABC', 1, 1, 'password123', 'nvana'),
(2, 'Tran Thi B', 35, '1987-05-20', 0, '456 Duong XYZ', 0, 1, 'pass321', 'ttb'),
(3, 'Le Van C', 25, '1997-09-10', 1, '789 Duong DEF', 1, 1, 'abc123', 'lvc'),
(4, 'Pham Thi D', 40, '1982-03-25', 0, '101 Duong GHI', 0, 1, 'dpass456', 'ptd'),
(5, 'Hoang Duc E', 28, '1994-11-05', 1, '111 Duong JKL', 1, 1, 'edf123', 'hde');

-- Thêm dữ liệu vào bảng KhachHang
INSERT INTO KhachHang (IDKhachHang, TenDangNhap, MatKhau, Ten, GioiTinh)
VALUES 
(1, 'kh1', 'kh1pass', 'Customer 1', 1),
(2, 'kh2', 'kh2pass', 'Customer 2', 0),
(3, 'kh3', 'kh3pass', 'Customer 3', 1),
(4, 'kh4', 'kh4pass', 'Customer 4', 0),
(5, 'kh5', 'kh5pass', 'Customer 5', 1);

-- Thêm dữ liệu vào bảng NhomThuoc
INSERT INTO NhomThuoc (IDNhomThuoc, TenLoai)
VALUES 
('nt1', 'Loai thuoc 1'),
('nt2', 'Loai thuoc 2'),
('nt3', 'Loai thuoc 3'),
('nt4', 'Loai thuoc 4'),
('nt5', 'Loai thuoc 5');

-- Thêm dữ liệu vào bảng Thuoc
INSERT INTO Thuoc (IDThuoc, Ten, IDNhomThuoc, SoLuong, Gia, IDKhachHang, IDMaNV, Hinh, NguonGoc, CongDung, NgaySanXuat, isActive, BaoQuan, DonVi)
VALUES 
('t1', 'Thuoc 1', 'nt1', 100, 50.5, NULL, 1, 'image1.jpg', 'Nguon goc 1', 'Cong dung 1', '2024-04-03', 1, 'Bao quan 1', 'Vi'),
('t2', 'Thuoc 2', 'nt2', 150, 75.25, 1, NULL, 'image2.jpg', 'Nguon goc 2', 'Cong dung 2', '2024-04-03', 1, 'Bao quan 2', 'Vi'),
('t3', 'Thuoc 3', 'nt3', 200, 30.75, NULL, 2, 'image3.jpg', 'Nguon goc 3', 'Cong dung 3', '2024-04-03', 1, 'Bao quan 3', 'Vi'),
('t4', 'Thuoc 4', 'nt4', 80, 100.0, NULL, 3, 'image4.jpg', 'Nguon goc 4', 'Cong dung 4', '2024-04-03', 1, 'Bao quan 4', 'Vi'),
('t5', 'Thuoc 5', 'nt5', 120, 45.0, NULL, 4, 'image5.jpg', 'Nguon goc 5', 'Cong dung 5', '2024-04-03', 1, 'Bao quan 5', 'Vi');
