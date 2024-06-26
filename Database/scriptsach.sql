USE [master]
GO
/****** Object:  Database [QuanLyThuVienDB]    Script Date: 5/25/2023 4:36:28 PM ******/
CREATE DATABASE [QuanLyThuVienDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyThuVienDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QuanLyThuVienDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyThuVienDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QuanLyThuVienDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QuanLyThuVienDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyThuVienDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyThuVienDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyThuVienDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyThuVienDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyThuVienDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyThuVienDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyThuVienDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyThuVienDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyThuVienDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyThuVienDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyThuVienDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyThuVienDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyThuVienDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyThuVienDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyThuVienDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyThuVienDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyThuVienDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyThuVienDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyThuVienDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyThuVienDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyThuVienDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyThuVienDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyThuVienDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyThuVienDB] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyThuVienDB] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyThuVienDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyThuVienDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyThuVienDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyThuVienDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyThuVienDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyThuVienDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyThuVienDB', N'ON'
GO
ALTER DATABASE [QuanLyThuVienDB] SET QUERY_STORE = OFF
GO
USE [QuanLyThuVienDB]
GO
/****** Object:  Table [dbo].[LoaiSach]    Script Date: 5/25/2023 4:36:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSach](
	[MaLoai] [nvarchar](10) NOT NULL,
	[TenLoaiSach] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSach] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MuonTraSach]    Script Date: 5/25/2023 4:36:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MuonTraSach](
	[MaPhieuMuon] [int] IDENTITY(1,1) NOT NULL,
	[MaSV] [nvarchar](10) NOT NULL,
	[MaSach] [nvarchar](10) NOT NULL,
	[NgayMuon] [date] NOT NULL,
	[NgayTra] [date] NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_MuonTraSach] PRIMARY KEY CLUSTERED 
(
	[MaPhieuMuon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/25/2023 4:36:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [nvarchar](10) NOT NULL,
	[TenNhanVien] [nvarchar](50) NOT NULL,
	[SoDienThoai] [int] NOT NULL,
	[GioiTinh] [nvarchar](10) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[MatKhau] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 5/25/2023 4:36:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaXuatBan](
	[MaXB] [nvarchar](10) NOT NULL,
	[NhaXuatBan] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[MaXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 5/25/2023 4:36:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [nvarchar](10) NOT NULL,
	[TenSach] [nvarchar](50) NOT NULL,
	[MaTacGia] [nvarchar](10) NOT NULL,
	[MaXB] [nvarchar](10) NOT NULL,
	[MaLoai] [nvarchar](10) NOT NULL,
	[SoTrang] [int] NOT NULL,
	[GiaBan] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 5/25/2023 4:36:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [nvarchar](10) NOT NULL,
	[TenSV] [nvarchar](50) NOT NULL,
	[NganhHoc] [nvarchar](50) NOT NULL,
	[KhoaHoc] [nvarchar](50) NOT NULL,
	[SoDienThoai] [int] NOT NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 5/25/2023 4:36:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[MaTacGia] [nvarchar](10) NOT NULL,
	[TacGia] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[MaTacGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LoaiSach] ([MaLoai], [TenLoaiSach], [GhiChu]) VALUES (N'baitap', N'sach bai tap', N'Khong')
INSERT [dbo].[LoaiSach] ([MaLoai], [TenLoaiSach], [GhiChu]) VALUES (N'giaokhoa', N'giao khoa', N'kh')
INSERT [dbo].[LoaiSach] ([MaLoai], [TenLoaiSach], [GhiChu]) VALUES (N'giaotrinh', N'Giáo trình', N'khong')
INSERT [dbo].[LoaiSach] ([MaLoai], [TenLoaiSach], [GhiChu]) VALUES (N'L1', N'SGK', N'Khong')
INSERT [dbo].[LoaiSach] ([MaLoai], [TenLoaiSach], [GhiChu]) VALUES (N'L4', N'SGK', N'Khong')
INSERT [dbo].[LoaiSach] ([MaLoai], [TenLoaiSach], [GhiChu]) VALUES (N'L6', N'SBT', N'Khong')
INSERT [dbo].[LoaiSach] ([MaLoai], [TenLoaiSach], [GhiChu]) VALUES (N'L7', N'Truyen Tranh', N'Khong')
INSERT [dbo].[LoaiSach] ([MaLoai], [TenLoaiSach], [GhiChu]) VALUES (N'L8', N'Từ Điển', N'Khong')
INSERT [dbo].[LoaiSach] ([MaLoai], [TenLoaiSach], [GhiChu]) VALUES (N'L9', N'SBT', N'khong')
INSERT [dbo].[LoaiSach] ([MaLoai], [TenLoaiSach], [GhiChu]) VALUES (N'loai1', N'truyen', N'khong')
INSERT [dbo].[LoaiSach] ([MaLoai], [TenLoaiSach], [GhiChu]) VALUES (N'Loai2', N'Bai Tap', N'khong')
INSERT [dbo].[LoaiSach] ([MaLoai], [TenLoaiSach], [GhiChu]) VALUES (N'loai3', N'SGK', N'Khong')
INSERT [dbo].[LoaiSach] ([MaLoai], [TenLoaiSach], [GhiChu]) VALUES (N'tailieu', N'tài liệu', N'khong')
INSERT [dbo].[LoaiSach] ([MaLoai], [TenLoaiSach], [GhiChu]) VALUES (N'tamlinh', N'Tâm Linh', N'Khong')
INSERT [dbo].[LoaiSach] ([MaLoai], [TenLoaiSach], [GhiChu]) VALUES (N'thieunhi', N'thieu nhi', N'Khong')
INSERT [dbo].[LoaiSach] ([MaLoai], [TenLoaiSach], [GhiChu]) VALUES (N'tieuthuyet', N'Tiểu thuyết', N'Khong')
INSERT [dbo].[LoaiSach] ([MaLoai], [TenLoaiSach], [GhiChu]) VALUES (N'tongiao', N'tôn giáo', N'Khong')
INSERT [dbo].[LoaiSach] ([MaLoai], [TenLoaiSach], [GhiChu]) VALUES (N'truyen', N'truyen tieu thuyet', N'kh')
GO
SET IDENTITY_INSERT [dbo].[MuonTraSach] ON 

INSERT [dbo].[MuonTraSach] ([MaPhieuMuon], [MaSV], [MaSach], [NgayMuon], [NgayTra], [GhiChu]) VALUES (2, N'1002', N'S2', CAST(N'2023-02-05' AS Date), CAST(N'2023-02-10' AS Date), N'cu')
INSERT [dbo].[MuonTraSach] ([MaPhieuMuon], [MaSV], [MaSach], [NgayMuon], [NgayTra], [GhiChu]) VALUES (3, N'1003', N'S2', CAST(N'2023-02-05' AS Date), CAST(N'2023-02-06' AS Date), N'moi')
INSERT [dbo].[MuonTraSach] ([MaPhieuMuon], [MaSV], [MaSach], [NgayMuon], [NgayTra], [GhiChu]) VALUES (7, N'1006', N'S3', CAST(N'2023-02-06' AS Date), CAST(N'2023-02-09' AS Date), N'mới')
INSERT [dbo].[MuonTraSach] ([MaPhieuMuon], [MaSV], [MaSach], [NgayMuon], [NgayTra], [GhiChu]) VALUES (8, N'1007', N'sach6', CAST(N'2023-02-07' AS Date), CAST(N'2023-02-10' AS Date), N'sach dang moi')
INSERT [dbo].[MuonTraSach] ([MaPhieuMuon], [MaSV], [MaSach], [NgayMuon], [NgayTra], [GhiChu]) VALUES (11, N'1001', N'sach 4', CAST(N'2023-02-08' AS Date), CAST(N'2023-02-09' AS Date), N'cu')
INSERT [dbo].[MuonTraSach] ([MaPhieuMuon], [MaSV], [MaSach], [NgayMuon], [NgayTra], [GhiChu]) VALUES (12, N'1001', N'sachh', CAST(N'2023-02-08' AS Date), CAST(N'2023-02-10' AS Date), N'cu')
INSERT [dbo].[MuonTraSach] ([MaPhieuMuon], [MaSV], [MaSach], [NgayMuon], [NgayTra], [GhiChu]) VALUES (13, N'1001', N'S3', CAST(N'2023-02-08' AS Date), CAST(N'2023-02-09' AS Date), N'cu')
INSERT [dbo].[MuonTraSach] ([MaPhieuMuon], [MaSV], [MaSach], [NgayMuon], [NgayTra], [GhiChu]) VALUES (15, N'1002', N'S2', CAST(N'2023-02-08' AS Date), CAST(N'2023-02-09' AS Date), N'cu')
INSERT [dbo].[MuonTraSach] ([MaPhieuMuon], [MaSV], [MaSach], [NgayMuon], [NgayTra], [GhiChu]) VALUES (16, N'1003', N'sachh', CAST(N'2023-02-08' AS Date), CAST(N'2023-02-10' AS Date), N'cu')
INSERT [dbo].[MuonTraSach] ([MaPhieuMuon], [MaSV], [MaSach], [NgayMuon], [NgayTra], [GhiChu]) VALUES (17, N'1002', N'sach6', CAST(N'2023-02-08' AS Date), CAST(N'2023-02-10' AS Date), N'cu')
INSERT [dbo].[MuonTraSach] ([MaPhieuMuon], [MaSV], [MaSach], [NgayMuon], [NgayTra], [GhiChu]) VALUES (1010, N'1001', N'S2', CAST(N'2023-02-08' AS Date), CAST(N'2023-02-10' AS Date), N'cu')
INSERT [dbo].[MuonTraSach] ([MaPhieuMuon], [MaSV], [MaSach], [NgayMuon], [NgayTra], [GhiChu]) VALUES (1012, N'1002', N'S2', CAST(N'2023-05-25' AS Date), CAST(N'2023-08-09' AS Date), N'cu')
SET IDENTITY_INSERT [dbo].[MuonTraSach] OFF
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [SoDienThoai], [GioiTinh], [DiaChi], [MatKhau]) VALUES (N'nv10', N'Tran Quang Huy', 987654321, N'Nam', N'Nghe An', N'huyhuy')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [SoDienThoai], [GioiTinh], [DiaChi], [MatKhau]) VALUES (N'NV3', N'Van Tai', 321456789, N'Nữ', N'Nam Dan', N'huy')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [SoDienThoai], [GioiTinh], [DiaChi], [MatKhau]) VALUES (N'NV6', N'Quang Huy', 987654321, N'Nam', N'Nam Đàn Nghệ An', N'1')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [SoDienThoai], [GioiTinh], [DiaChi], [MatKhau]) VALUES (N'quanghuy', N'Quang Huy', 1234567890, N'Nam', N'Nghệ An', N'123456')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [SoDienThoai], [GioiTinh], [DiaChi], [MatKhau]) VALUES (N'tranhuy', N'Trần Huy', 987654321, N'Nam', N'Ha Noi', N'123456789')
GO
INSERT [dbo].[NhaXuatBan] ([MaXB], [NhaXuatBan], [GhiChu]) VALUES (N'4XB2', N'Viet Nam', N'khhongg')
INSERT [dbo].[NhaXuatBan] ([MaXB], [NhaXuatBan], [GhiChu]) VALUES (N'4XB4', N'Nam Binh', N'khong')
INSERT [dbo].[NhaXuatBan] ([MaXB], [NhaXuatBan], [GhiChu]) VALUES (N'4XB7', N'Ha Noi', N'khong')
INSERT [dbo].[NhaXuatBan] ([MaXB], [NhaXuatBan], [GhiChu]) VALUES (N'4XB88', N'Quoc Linh', N'khong')
INSERT [dbo].[NhaXuatBan] ([MaXB], [NhaXuatBan], [GhiChu]) VALUES (N'hanoi', N'Hà Nội', N'khhongg')
INSERT [dbo].[NhaXuatBan] ([MaXB], [NhaXuatBan], [GhiChu]) VALUES (N'hongduc', N'Hồng Đức', N'khhongg')
INSERT [dbo].[NhaXuatBan] ([MaXB], [NhaXuatBan], [GhiChu]) VALUES (N'laodong', N'Lao Động', N'khhongg')
INSERT [dbo].[NhaXuatBan] ([MaXB], [NhaXuatBan], [GhiChu]) VALUES (N'ngaymoi', N'Ngày Mới', N'khhongg')
INSERT [dbo].[NhaXuatBan] ([MaXB], [NhaXuatBan], [GhiChu]) VALUES (N'NhaVan', N'Nhà Văn', N'khhongg')
INSERT [dbo].[NhaXuatBan] ([MaXB], [NhaXuatBan], [GhiChu]) VALUES (N'tuoitre', N'Viet Nam', N'khhongg')
INSERT [dbo].[NhaXuatBan] ([MaXB], [NhaXuatBan], [GhiChu]) VALUES (N'viet nam', N'viet nam', N'khong')
INSERT [dbo].[NhaXuatBan] ([MaXB], [NhaXuatBan], [GhiChu]) VALUES (N'XB2', N'Kim Dong', N'khong')
INSERT [dbo].[NhaXuatBan] ([MaXB], [NhaXuatBan], [GhiChu]) VALUES (N'XB3', N'Van Dung', N'khong')
GO
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTacGia], [MaXB], [MaLoai], [SoTrang], [GiaBan], [SoLuong]) VALUES (N'S2', N'Sach Van', N'vancu', N'tuoitre', N'tieuthuyet', 1000, 20000, 6)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTacGia], [MaXB], [MaLoai], [SoTrang], [GiaBan], [SoLuong]) VALUES (N's22', N'Sach DG', N'TG5', N'4XB88', N'L6', 99, 50000, 99)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTacGia], [MaXB], [MaLoai], [SoTrang], [GiaBan], [SoLuong]) VALUES (N'S3', N'Sach Mac', N'vancu', N'hongduc', N'tailieu', 99, 20000, 8)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTacGia], [MaXB], [MaLoai], [SoTrang], [GiaBan], [SoLuong]) VALUES (N'sach 4', N'Sach Vat Ly', N'vancu', N'laodong', N'L1', 100, 20000, 99)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTacGia], [MaXB], [MaLoai], [SoTrang], [GiaBan], [SoLuong]) VALUES (N'sach6', N'Sach Lap Trình C', N'TG1', N'4XB7', N'L4', 1000, 20000, 5)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTacGia], [MaXB], [MaLoai], [SoTrang], [GiaBan], [SoLuong]) VALUES (N'sach7', N'Sach Toan', N'TG5', N'4XB7', N'L7', 1000, 50000, 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTacGia], [MaXB], [MaLoai], [SoTrang], [GiaBan], [SoLuong]) VALUES (N'sachh', N'Sach Hoa', N'TG1', N'4XB7', N'L4', 1000, 20000, 5)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTacGia], [MaXB], [MaLoai], [SoTrang], [GiaBan], [SoLuong]) VALUES (N'sachls', N'Lịch Sử', N'vancu', N'tuoitre', N'tieuthuyet', 99, 10000, 99)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [MaTacGia], [MaXB], [MaLoai], [SoTrang], [GiaBan], [SoLuong]) VALUES (N'sachtin', N'Sách Tin', N'vancu', N'tuoitre', N'tieuthuyet', 99, 10000, 9)
GO
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NganhHoc], [KhoaHoc], [SoDienThoai]) VALUES (N'1001', N'Quang Huy', N'CNTT', N'K63', 90355454)
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NganhHoc], [KhoaHoc], [SoDienThoai]) VALUES (N'1002', N'Trần Đình Dũng', N'CNTT', N'K62', 17623482)
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NganhHoc], [KhoaHoc], [SoDienThoai]) VALUES (N'1003', N'Trần Anh Hoàng', N'CNTT', N'K62', 63623523)
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NganhHoc], [KhoaHoc], [SoDienThoai]) VALUES (N'1004', N'Nguyễn Văn Nam', N'CNTT', N'K62', 90355454)
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NganhHoc], [KhoaHoc], [SoDienThoai]) VALUES (N'1005', N'Tran Văn Thắng', N'CNTT', N'K62', 90355454)
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NganhHoc], [KhoaHoc], [SoDienThoai]) VALUES (N'1006', N'Trần Huy Nam', N'CNTT', N'K62', 90355454)
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NganhHoc], [KhoaHoc], [SoDienThoai]) VALUES (N'1007', N'Trân Quang Đức', N'CNTT', N'K62', 90355454)
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NganhHoc], [KhoaHoc], [SoDienThoai]) VALUES (N'1008', N'Trần Anh Vinh', N'CNTT', N'K61', 63623523)
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [NganhHoc], [KhoaHoc], [SoDienThoai]) VALUES (N'1009', N'Ba Huy', N'GDTH', N'K61', 987654321)
GO
INSERT [dbo].[TacGia] ([MaTacGia], [TacGia], [GhiChu]) VALUES (N'maichi', N'Mai Chi', N'khong')
INSERT [dbo].[TacGia] ([MaTacGia], [TacGia], [GhiChu]) VALUES (N'quoclinh', N'Quốc Linh', N'khong')
INSERT [dbo].[TacGia] ([MaTacGia], [TacGia], [GhiChu]) VALUES (N'tacgia8', N'Tac Gia 8', N'khong')
INSERT [dbo].[TacGia] ([MaTacGia], [TacGia], [GhiChu]) VALUES (N'TG1', N'Tac Gia 15', N'khong có gi')
INSERT [dbo].[TacGia] ([MaTacGia], [TacGia], [GhiChu]) VALUES (N'TG4', N'Tac Gia 3', N'khong co gi')
INSERT [dbo].[TacGia] ([MaTacGia], [TacGia], [GhiChu]) VALUES (N'TG5', N'Tac Gia 5', N'khong')
INSERT [dbo].[TacGia] ([MaTacGia], [TacGia], [GhiChu]) VALUES (N'TG6', N'Van Quang', N'khong')
INSERT [dbo].[TacGia] ([MaTacGia], [TacGia], [GhiChu]) VALUES (N'TG7', N'Van A', N'khong')
INSERT [dbo].[TacGia] ([MaTacGia], [TacGia], [GhiChu]) VALUES (N'TG8', N'Tac Gia 8', N'khong')
INSERT [dbo].[TacGia] ([MaTacGia], [TacGia], [GhiChu]) VALUES (N'truongquy', N'Trương Quý', N'khong')
INSERT [dbo].[TacGia] ([MaTacGia], [TacGia], [GhiChu]) VALUES (N'vancu', N'van cu', N'khong')
INSERT [dbo].[TacGia] ([MaTacGia], [TacGia], [GhiChu]) VALUES (N'vinhnguyen', N'Vinh Nguyen', N'khong')
GO
ALTER TABLE [dbo].[MuonTraSach]  WITH CHECK ADD  CONSTRAINT [FK_MuonTraSach_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[MuonTraSach] CHECK CONSTRAINT [FK_MuonTraSach_Sach]
GO
ALTER TABLE [dbo].[MuonTraSach]  WITH CHECK ADD  CONSTRAINT [FK_MuonTraSach_SinhVien] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[MuonTraSach] CHECK CONSTRAINT [FK_MuonTraSach_SinhVien]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_LoaiSach] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSach] ([MaLoai])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_LoaiSach]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_NhaXuatBan] FOREIGN KEY([MaXB])
REFERENCES [dbo].[NhaXuatBan] ([MaXB])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_NhaXuatBan]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_TacGia] FOREIGN KEY([MaTacGia])
REFERENCES [dbo].[TacGia] ([MaTacGia])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_TacGia]
GO
USE [master]
GO
ALTER DATABASE [QuanLyThuVienDB] SET  READ_WRITE 
GO
