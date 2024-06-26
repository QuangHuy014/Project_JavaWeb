﻿create database DuAnJava4
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
  [IDHoaDon] int PRIMARY KEY ,
  [IDKhachHang] int NOT NULL,
  [IDMaNV] int NOT NULL,
  [NgayDH] DATE NOT NULL,
  [Email] NVARCHAR(255), -- Thêm cột Email của khách hàng
  [TenKhachHang] NVARCHAR(100), -- Thêm cột Tên khách hàng
  [DiaChiKhachHang] NVARCHAR(255), -- Thêm cột Địa chỉ của khách hàng
  [SoDienThoaiKhachHang] NVARCHAR(20), -- Thêm cột Số điện thoại của khách hàng
  FOREIGN KEY ([IDMaNV]) REFERENCES [NhanVien]([IDMaNV]) ON DELETE NO ACTION ON UPDATE CASCADE,
  FOREIGN KEY ([IDKhachHang]) REFERENCES [KhachHang]([IDKhachHang]) ON DELETE NO ACTION ON UPDATE CASCADE
);


CREATE TABLE [HoaDonChiTiet] (
  [IDHoaDonChiTiet] int primary key,
  [IDHoaDon] int not null,
  [TenThuoc] NVARCHAR(255) not null,
  [IDThuoc] NVARCHAR(50) not null,
  [SoLuong] int not null,
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

delete Thuoc
INSERT INTO Thuoc (IDThuoc, Ten, IDNhomThuoc, SoLuong, Gia, IDKhachHang, IDMaNV, Hinh, NguonGoc, CongDung, NgaySanXuat, isActive, BaoQuan, DonVi)
VALUES 
('t1', N'Viên uống Perfect White Jpanwell giảm triệu chứng rối loạn', 'nt1', 1, 2235000, NULL, 1, 'https://cdn.nhathuoclongchau.com.vn/unsafe/300x300/https://cms-prod.s3-sgn09.fptcloud.com/00021929_perfect_white_60v_3739_600f_large_6794b33ce3.JPG', N'Nguồn gốc 1', N' tiêu hóa (2 vỉ x 10 viên)', '2024-04-03', 1, N'Bảo quản 1', N'Hộp lớn'),
('t2', N'Viên nang cứng Vương Nữ Khang Royal Care hỗ trợ hạn chế sự', 'nt2', 1, 750000,  NULL,1, 'https://cdn.nhathuoclongchau.com.vn/unsafe/300x300/https://cms-prod.s3-sgn09.fptcloud.com/00032785_vuong_nu_khang_royal_care_60v_5656_61aa_large_7ec72e2f67.jpg', N'Nguồn gốc 2', N'hạn chế sự phát triển u xơ tử cung, u vú lành tính (60 viên)', '2024-04-03', 1, N'Bảo quản 2', N'Hộp lớn'),
('t3', N'Viên uống Đại Tràng Hải Thượng Vương hỗ trợ kiện tỳ vị', 'nt3', 1, 300000, NULL, 2, 'https://cdn.nhathuoclongchau.com.vn/unsafe/300x300/https://cms-prod.s3-sgn09.fptcloud.com/00031834_dai_trang_hai_thuong_vuong_vesta_2x10_6583_616d_large_a83f90816b.jpg', N'Nguồn gốc 3', N'giảm triệu chứng rối loạn tiêu hóa (2 vỉ x 10 viên)', '2024-04-03', 1, N'Bảo quản 3', N'Hộp lớn'),
('t4', N'Viên uống Phế Khang Hải Thượng Vương Vesta hỗ trợ giảm ,', 'nt4', 1, 100000, NULL, 1, 'https://cdn.nhathuoclongchau.com.vn/unsafe/300x300/https://cms-prod.s3-sgn09.fptcloud.com/00032568_phe_khang_hai_thuong_vuong_3x10_7009_616f_large_12889d8d3b.jpg', N'Nguồn gốc 4', N' đau rát họng khản tiếng do ho kéo dài (3 vỉ x 10 viên)', '2024-04-03', 1, N'Bảo quản 4', N'Hộp lớn'),
('t5', N'Mặt nạ xông hơi mắt MegRhythm KAO không hương dễ chịu,', 'nt4', 1, 100000, NULL, 1, 'https://cdn.nhathuoclongchau.com.vn/unsafe/300x300/https://cms-prod.s3-sgn09.fptcloud.com/00033675_mat_na_xong_hoi_mat_megrhythm_khong_huong_9663_641a_large_b1d577c8a2.jpg', N'Nguồn gốc 4', N'thư giãn đôi mắt (5 miếng)', '2024-04-03', 1, N'Bảo quản 4', N'Hộp lớn'),
('t6', N'Viên uống Natto Gold 3000FU Royal Care hỗ trợ hoạt huyết ', 'nt4', 1, 110000, NULL, 1, 'https://cdn.nhathuoclongchau.com.vn/unsafe/300x300/https://cms-prod.s3-sgn09.fptcloud.com/00503276_vien_uong_ho_tro_tang_cuong_tuan_hoan_nao_natto_gold_3000fu_royal_care_60v_8247_63ed_large_1d74618cb5.jpg', N'Nguồn gốc 4', N' tăng cường tuần hoàn não (60 viên)', '2024-04-03', 1, N'Bảo quản 4', N'Hộp lớn'),
('t7', N'Siro Healthy New Kids bổ sung vitamin,', 'nt4', 1, 120000, NULL, 1, 'https://cdn.nhathuoclongchau.com.vn/unsafe/300x300/filters:quality(90)/https://cms-prod.s3-sgn09.fptcloud.com/00345454_siro_an_ngon_healthy_new_kid_8980_5f62_large_f0c20d905d.jpg', N'Nguồn gốc 4', N'lysine, taurin, hỗ trợ kích thích tiêu hóa (120ml)', '2024-04-03', 1, N'Bảo quản 4', N'Hộp lớn'),
('t8', N'Viên uống Hair Volume New Nordic giúp tóc chắc khỏe', 'nt4', 1, 130000, NULL, 1, 'https://cdn.nhathuoclongchau.com.vn/unsafe/300x300/https://cms-prod.s3-sgn09.fptcloud.com/00345353_hair_volume_vien_uong_duong_toc_7952_62af_large_46a5a99e57.jpg', N'Nguồn gốc 4', N'đẹp tóc, hạn chế rụng tóc (30 viên)', '2024-04-03', 1, N'Bảo quản 4', N'Hộp lớn'),
('t9', N'Viên uống BIO Hair, Nail & Skin Royal Care hỗ trợ cải thiện sạm da,', 'nt4', 1, 100000, NULL, 1, 'https://cdn.nhathuoclongchau.com.vn/unsafe/300x300/https://cms-prod.s3-sgn09.fptcloud.com/1_a2daaedb7c.jpg', N'Nguồn gốc 4', N'khô da, giúp móng tóc chắc khỏe (30 viên)', '2024-04-03', 1, N'Bảo quản 4', N'Hộp lớn')

-- Chèn dữ liệu cho bảng HoaDon
INSERT INTO HoaDon (IDHoaDon, IDKhachHang, IDMaNV, NgayDH, Email, TenKhachHang, DiaChiKhachHang, SoDienThoaiKhachHang)
VALUES
(1, 1, 1, '2024-04-10', 'example1@example.com', 'Khách hàng 1', 'Địa chỉ khách hàng 1', '123456789'),
(2, 2, 2, '2024-04-10', 'example2@example.com', 'Khách hàng 2', 'Địa chỉ khách hàng 2', '987654321'),
(3, 3, 3, '2024-04-11', 'example3@example.com', 'Khách hàng 3', 'Địa chỉ khách hàng 3', '111222333'),
(4, 1, 1, '2024-04-11', 'example1@example.com', 'Khách hàng 1', 'Địa chỉ khách hàng 1', '123456789'),
(5, 2, 2, '2024-04-12', 'example2@example.com', 'Khách hàng 2', 'Địa chỉ khách hàng 2', '987654321');

-- Chèn dữ liệu cho bảng HoaDonChiTiet
INSERT INTO HoaDonChiTiet (IDHoaDonChiTiet, IDHoaDon, TenThuoc, IDThuoc, SoLuong, Gia, DonVi)
VALUES
(1, 1, 'Thuốc A', 't1', 2, 10000, 'Viên'),
(2, 1, 'Thuốc B', 't2', 1, 20000, 'Viên'),
(3, 2, 'Thuốc C', 't3', 3, 15000, 'Viên'),
(4, 3, 'Thuốc D', 't4', 1, 30000, 'Viên'),
(5, 4, 'Thuốc E', 't5', 2, 25000, 'Viên');
