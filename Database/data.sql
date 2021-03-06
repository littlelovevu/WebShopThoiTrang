USE [master]
GO
/****** Object:  Database [QLShopThoiTrang]    Script Date: 12/29/2020 9:12:31 PM ******/
CREATE DATABASE [QLShopThoiTrang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLShopThoiTrang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QLShopThoiTrang.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLShopThoiTrang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QLShopThoiTrang_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLShopThoiTrang] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLShopThoiTrang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLShopThoiTrang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLShopThoiTrang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLShopThoiTrang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLShopThoiTrang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLShopThoiTrang] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLShopThoiTrang] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLShopThoiTrang] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QLShopThoiTrang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLShopThoiTrang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLShopThoiTrang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLShopThoiTrang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLShopThoiTrang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLShopThoiTrang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLShopThoiTrang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLShopThoiTrang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLShopThoiTrang] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLShopThoiTrang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLShopThoiTrang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLShopThoiTrang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLShopThoiTrang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLShopThoiTrang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLShopThoiTrang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLShopThoiTrang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLShopThoiTrang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLShopThoiTrang] SET  MULTI_USER 
GO
ALTER DATABASE [QLShopThoiTrang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLShopThoiTrang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLShopThoiTrang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLShopThoiTrang] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QLShopThoiTrang]
GO
/****** Object:  Table [dbo].[BangSize]    Script Date: 12/29/2020 9:12:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangSize](
	[MaSize] [int] IDENTITY(1000,1) NOT NULL,
	[Size] [nchar](50) NOT NULL,
	[CanNang] [nchar](50) NOT NULL,
 CONSTRAINT [pk_bangSize] PRIMARY KEY CLUSTERED 
(
	[MaSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 12/29/2020 9:12:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHD] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [pk_cthd] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietSize]    Script Date: 12/29/2020 9:12:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSize](
	[MaSP] [int] NOT NULL,
	[MaSize] [int] NOT NULL,
 CONSTRAINT [pk_ctsize] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[MaSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/29/2020 9:12:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [int] IDENTITY(2020,1) NOT NULL,
	[MaKH] [int] NOT NULL,
	[NgayTao] [date] NOT NULL,
	[TinhTrang] [nchar](50) NOT NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [pk_hd] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/29/2020 9:12:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[TenKhachHang] [nchar](50) NOT NULL,
	[TenTaiKhoan] [char](50) NOT NULL,
	[MatKhau] [char](50) NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [char](15) NULL,
	[MaLTK] [int] NOT NULL,
 CONSTRAINT [pk_kh] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LienHe]    Script Date: 12/29/2020 9:12:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LienHe](
	[MaLienHe] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nchar](50) NULL,
	[SDT] [nchar](20) NULL,
	[Email] [nchar](50) NULL,
	[TieuDe] [nvarchar](100) NULL,
	[NoiDung] [nvarchar](max) NULL,
 CONSTRAINT [pk_LienHe] PRIMARY KEY CLUSTERED 
(
	[MaLienHe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 12/29/2020 9:12:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSanPham] [int] IDENTITY(100,1) NOT NULL,
	[TenLoaiSanPham] [nchar](50) NOT NULL,
 CONSTRAINT [pk_lsp] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiTaiKhoan]    Script Date: 12/29/2020 9:12:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTaiKhoan](
	[MaLoaiTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiTaiKhoan] [nchar](20) NOT NULL,
 CONSTRAINT [pk_ltk] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 12/29/2020 9:12:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNhaSanXuat] [int] IDENTITY(100,1) NOT NULL,
	[TenNhaSanXuat] [nchar](50) NOT NULL,
 CONSTRAINT [pk_nsx] PRIMARY KEY CLUSTERED 
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/29/2020 9:12:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [int] IDENTITY(1000,1) NOT NULL,
	[TenSanPham] [nvarchar](100) NOT NULL,
	[Gia] [money] NOT NULL,
	[HinhMinhHoa] [nvarchar](100) NOT NULL,
	[DanhSachHinh] [nvarchar](max) NOT NULL,
	[MaLSP] [int] NOT NULL,
	[MaNSX] [int] NOT NULL,
 CONSTRAINT [pk_sp] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BangSize] ON 

INSERT [dbo].[BangSize] ([MaSize], [Size], [CanNang]) VALUES (1000, N'Size 8                                            ', N'7-10kg                                            ')
INSERT [dbo].[BangSize] ([MaSize], [Size], [CanNang]) VALUES (1001, N'Size 10                                           ', N'11-15kg                                           ')
INSERT [dbo].[BangSize] ([MaSize], [Size], [CanNang]) VALUES (1002, N'Size 12                                           ', N'16-25kg                                           ')
INSERT [dbo].[BangSize] ([MaSize], [Size], [CanNang]) VALUES (1003, N'Size 14                                           ', N'26-35kg                                           ')
INSERT [dbo].[BangSize] ([MaSize], [Size], [CanNang]) VALUES (1004, N'Size 16                                           ', N'36-45kg                                           ')
INSERT [dbo].[BangSize] ([MaSize], [Size], [CanNang]) VALUES (1005, N'Size 18                                           ', N'46-60kg                                           ')
INSERT [dbo].[BangSize] ([MaSize], [Size], [CanNang]) VALUES (1006, N'Size 20                                           ', N'60-70kg                                           ')
INSERT [dbo].[BangSize] ([MaSize], [Size], [CanNang]) VALUES (1007, N'Size 22                                           ', N'70-85kg                                           ')
INSERT [dbo].[BangSize] ([MaSize], [Size], [CanNang]) VALUES (1008, N'Size 24                                           ', N'85-100kg                                          ')
SET IDENTITY_INSERT [dbo].[BangSize] OFF
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2021, 1003, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2022, 1002, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2022, 1003, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2022, 1010, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2022, 1024, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2023, 1002, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2023, 1003, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2023, 1010, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2023, 1024, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2024, 1002, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2024, 1003, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2024, 1010, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2024, 1024, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2025, 1003, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2025, 1008, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2025, 1011, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2026, 1003, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2026, 1008, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2026, 1011, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2027, 1007, 1)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2028, 1007, 4)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2028, 1008, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2029, 1008, 3)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2029, 1010, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2030, 1002, 4)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2030, 1007, 3)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2031, 1002, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2032, 1003, 3)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2032, 1008, 25)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2033, 1008, 2)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2033, 1012, 5)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (2033, 1020, 3)
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKH], [NgayTao], [TinhTrang], [GhiChu]) VALUES (2020, 1, CAST(0xE0410B00 AS Date), N'Đã đặt hàng                                       ', N'giao lẹ nha ')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKH], [NgayTao], [TinhTrang], [GhiChu]) VALUES (2021, 1, CAST(0xE0410B00 AS Date), N'Đã đặt hàng                                       ', N'giao lẹ nha ')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKH], [NgayTao], [TinhTrang], [GhiChu]) VALUES (2022, 6, CAST(0xE1410B00 AS Date), N'Đã đặt hàng                                       ', N'giao lẹ nha ')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKH], [NgayTao], [TinhTrang], [GhiChu]) VALUES (2023, 6, CAST(0xE1410B00 AS Date), N'Đã đặt hàng                                       ', N'giao lẹ nha ')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKH], [NgayTao], [TinhTrang], [GhiChu]) VALUES (2024, 6, CAST(0xE1410B00 AS Date), N'Đã đặt hàng                                       ', N'giao lẹ nha ')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKH], [NgayTao], [TinhTrang], [GhiChu]) VALUES (2025, 1, CAST(0xE1410B00 AS Date), N'Đã đặt hàng                                       ', N'v')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKH], [NgayTao], [TinhTrang], [GhiChu]) VALUES (2026, 1, CAST(0xE1410B00 AS Date), N'Đã đặt hàng                                       ', N'giao lẹ nha ')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKH], [NgayTao], [TinhTrang], [GhiChu]) VALUES (2027, 1, CAST(0xE1410B00 AS Date), N'Đã đặt hàng                                       ', N'test')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKH], [NgayTao], [TinhTrang], [GhiChu]) VALUES (2028, 1, CAST(0xE1410B00 AS Date), N'Đã đặt hàng                                       ', N'Test hihi')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKH], [NgayTao], [TinhTrang], [GhiChu]) VALUES (2029, 1, CAST(0xE1410B00 AS Date), N'Đã đặt hàng                                       ', N'giao lẹ')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKH], [NgayTao], [TinhTrang], [GhiChu]) VALUES (2030, 1, CAST(0xE6410B00 AS Date), N'Đã đặt hàng                                       ', N'Test')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKH], [NgayTao], [TinhTrang], [GhiChu]) VALUES (2031, 6, CAST(0xF7410B00 AS Date), N'Đã đặt hàng                                       ', N'a')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKH], [NgayTao], [TinhTrang], [GhiChu]) VALUES (2032, 6, CAST(0xF9410B00 AS Date), N'Đã đặt hàng                                       ', N'giao lẹ nha ')
INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKH], [NgayTao], [TinhTrang], [GhiChu]) VALUES (2033, 13, CAST(0xFB410B00 AS Date), N'Đã đặt hàng                                       ', N'giao giúp cô sản phẩm này nha tụi em')
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [TenTaiKhoan], [MatKhau], [DiaChi], [SDT], [MaLTK]) VALUES (1, N'Lê Danh Vũ                                        ', N'vu                                                ', N'1                                                 ', N'Tân Phú, TP. HCM', N'0123456789     ', 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [TenTaiKhoan], [MatKhau], [DiaChi], [SDT], [MaLTK]) VALUES (2, N'Nguyễn Thái Bảo                                   ', N'bao                                               ', N'1                                                 ', N'Tân Phú, TP. HCM', N'0999999999     ', 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [TenTaiKhoan], [MatKhau], [DiaChi], [SDT], [MaLTK]) VALUES (3, N'Tạ Trường Giang                                   ', N'giang                                             ', N'1                                                 ', N'Tân Phú, TP. HCM', N'0111111111     ', 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [TenTaiKhoan], [MatKhau], [DiaChi], [SDT], [MaLTK]) VALUES (5, N'Nguyễn Hoài Khang                                 ', N'khang                                             ', N'1                                                 ', N'Tân Phú, TP. HCM', N'0123456666     ', 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [TenTaiKhoan], [MatKhau], [DiaChi], [SDT], [MaLTK]) VALUES (6, N'Lê Minh Thuận                                     ', N'thuan                                             ', N'1                                                 ', N'Ấp 4 Hiệp Phước', N'0123123123     ', 2)
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [TenTaiKhoan], [MatKhau], [DiaChi], [SDT], [MaLTK]) VALUES (10, N'tạ trường                                         ', N'truonggiang                                       ', N'1                                                 ', N'sài gòn', N'01111111       ', 2)
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [TenTaiKhoan], [MatKhau], [DiaChi], [SDT], [MaLTK]) VALUES (12, N'Lê Văn A                                          ', N'a                                                 ', N'1                                                 ', N'140 LTT', N'0112233445     ', 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [TenTaiKhoan], [MatKhau], [DiaChi], [SDT], [MaLTK]) VALUES (13, N'Dương Thị Mộng Thùy                               ', N'thuy                                              ', N'123                                               ', N'140 Lê Trọng Tấn', N'0123456789     ', 2)
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [TenTaiKhoan], [MatKhau], [DiaChi], [SDT], [MaLTK]) VALUES (14, N'Nguyễn Văn Đô                                     ', N'vando                                             ', N'123                                               ', N'140 Lê Trọng Tấn', N'0112233445     ', 1)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[LienHe] ON 

INSERT [dbo].[LienHe] ([MaLienHe], [Ten], [SDT], [Email], [TieuDe], [NoiDung]) VALUES (1, N'Giang                                             ', N'0112233445          ', N'giang@gmail.com                                   ', N'Shop như ...', N'Shop đẹp :))')
INSERT [dbo].[LienHe] ([MaLienHe], [Ten], [SDT], [Email], [TieuDe], [NoiDung]) VALUES (5, N'Dương Thị Mộng Thùy                               ', N'0112233445          ', N'thuy@gmail.com                                    ', N'Shop em rất đẹp', N'Cô sẽ cho nhóm em 9 điểm :))')
SET IDENTITY_INSERT [dbo].[LienHe] OFF
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (100, N'ÁO SƠ MI NAM                                      ')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (101, N'ÁO THUN                                           ')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (102, N'ÁO KHOÁC                                          ')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (103, N'QUẦN NAM                                          ')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (104, N'CÁC SET ĐỒ MỚI NHẤT                               ')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (105, N'PHỤ KIỆN THỜI TRANG                               ')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoan] ON 

INSERT [dbo].[LoaiTaiKhoan] ([MaLoaiTaiKhoan], [TenLoaiTaiKhoan]) VALUES (1, N'Admin               ')
INSERT [dbo].[LoaiTaiKhoan] ([MaLoaiTaiKhoan], [TenLoaiTaiKhoan]) VALUES (2, N'Khách hàng          ')
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoan] OFF
SET IDENTITY_INSERT [dbo].[NhaSanXuat] ON 

INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (100, N'Ralph Lauren                                      ')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (101, N'Brooks Brothers                                   ')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (102, N'Zara                                              ')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (103, N'Guess                                             ')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (104, N'H&M                                               ')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (105, N'Calvin Klein                                      ')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (106, N'J.Crew                                            ')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (107, N'Topman                                            ')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (108, N'Gucci                                             ')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat]) VALUES (109, N'Kenneth Cole                                      ')
SET IDENTITY_INSERT [dbo].[NhaSanXuat] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1002, N'Áo sơ mi design in ngắn tay', 200000.0000, N'sanpham1.jpg', N'sanpham1.jpg', 101, 100)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1003, N'Áo sơ mi nam in chữ kapo', 220000.0000, N'sanpham2.jpg', N'sanpham2.jpg', 100, 100)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1007, N'Áo sơ mi tay ngắn Trendylook KAPO', 200000.0000, N'sanpham3.jpg', N'sanpham3.jpg', 100, 101)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1008, N'Áo sơ mi nam kapo túi hộp Kapo', 190000.0000, N'sanpham4.jpg', N'sanpham4.jpg', 100, 101)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1009, N'Áo sơ mi in tay dài in chữ ở vai', 220000.0000, N'sanpham5.jpg', N'sanpham5.jpg', 100, 102)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1010, N'Áo sơ mi đen chui đầu cổ bẻ nam Kapo', 220000.0000, N'sanpham6.jpg', N'sanpham6.jpg', 100, 102)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1011, N'Áo sơ mi tay dài in hình design kapo
', 220000.0000, N'sanpham7.jpg', N'sanpham7.jpg', 100, 103)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1012, N'Áo sơ mi in hình thiết kế kapo', 220000.0000, N'sanpham8.jpg', N'sanpham8.jpg', 100, 103)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1013, N'Áo sơ mi chui đầu denim KP24', 220000.0000, N'sanpham9.jpg', N'sanpham9.jpg', 100, 104)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1014, N'Áo sơ mi ngắn tay họa tiết camo KP19', 190000.0000, N'sanpham10.jpg', N'sanpham10.jpg', 100, 104)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1015, N'Basic shirt PK 18', 220000.0000, N'sanpham11.jpg', N'sanpham11.jpg', 100, 105)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1016, N'Áo sơ mi basic tay dài nam PK17', 220000.0000, N'sanpham12.jpg', N'sanpham12.jpg', 100, 105)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1017, N'Áo sơ mi chui đầu màu trắng dài tay cổ bẻ', 220000.0000, N'sanpham13.jpg', N'sanpham13.jpg', 100, 106)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1018, N'Áo sơ mi chui đầu cổ bẻ PK15', 220000.0000, N'sanpham14.jpg', N'sanpham14.jpg', 100, 106)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1019, N'Áo sơ mi in tay dài in chữ ở vai', 220000.0000, N'sanpham15.jpg', N'sanpham15.jpg', 100, 100)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1020, N'Áo thun nam ngắn tay in chữ 003', 190000.0000, N'sanpham16.jpg', N'sanpham16.jpg', 101, 109)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1021, N'Áo thun nam xám oversize will be ok', 190000.0000, N'sanpham17.jpg', N'sanpham17.jpg', 101, 109)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1022, N'Áo thun nam Kapo Black printed 2', 190000.0000, N'sanpham18.jpg', N'sanpham18.jpg', 101, 108)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1023, N'Áo thun nam Kapo Black printed 1', 190000.0000, N'sanpham19.jpg', N'sanpham19.jpg', 101, 108)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1024, N'Áo thun nam trắngoversize Holy other', 190000.0000, N'sanpham20.jpg', N'sanpham20.jpg', 101, 107)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1025, N'Áo thun nam đen oversize will be ok', 190000.0000, N'sanpham21.jpg', N'sanpham21.jpg', 101, 107)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1026, N'Áo thun nam xám oversize Holy other 2', 190000.0000, N'sanpham22.jpg', N'sanpham22.jpg', 101, 106)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1027, N'Áo thun nam xám oversize Holy other', 190000.0000, N'sanpham23.jpg', N'sanpham23.jpg', 101, 106)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1028, N'Áo thun nam ngắn tay màu vàng vạt bầu MsTL7-2', 180000.0000, N'sanpham24.jpg', N'sanpham24.jpg', 101, 105)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1029, N'Áo thun nam ngắn tay màu vàng vạt bầu MsTL7-1', 180000.0000, N'sanpham25.jpg', N'sanpham25.jpg', 101, 105)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1030, N'Áo thun polo nam kapo ngắn tay cổ bẻ 006', 170000.0000, N'sanpham26.jpg', N'sanpham26.jpg', 101, 104)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1031, N'Áo thun nam ngắn tay in chữ kapo 005', 190000.0000, N'sanpham27.jpg', N'sanpham27.jpg', 101, 104)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1032, N'Áo thun ngắn tay in chữ nam kapo 004', 190000.0000, N'sanpham28.jpg', N'sanpham28.jpg', 101, 103)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1033, N'Áo thun nam ngắn tay in 002', 190000.0000, N'sanpham29.jpg', N'sanpham29.jpg', 101, 103)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1034, N'Áo thun polo nam kapo ngắn tay 001', 170000.0000, N'sanpham30.jpg', N'sanpham30.jpg', 101, 100)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1035, N'Áo Khoác hoodie nam Kapo KH-003', 270000.0000, N'sanpham31.jpg', N'sanpham31.jpg', 102, 100)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1036, N'Áo Khoác hoodie nam Kapo KH-002', 270000.0000, N'sanpham32.jpg', N'sanpham32.jpg', 102, 101)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1037, N'Áo khoác hoodie nam Kapo', 270000.0000, N'sanpham33.jpg', N'sanpham33.jpg', 102, 101)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1038, N'Áo khoác Hoodie nam màu xám W', 270000.0000, N'sanpham34.jpg', N'sanpham34.jpg', 102, 101)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1039, N'ÁO KHOÁC JEAN KAPO AK0015', 350000.0000, N'sanpham35.jpg', N'sanpham35.jpg', 102, 102)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1040, N'ÁO KHOÁC KAPO AK014', 290000.0000, N'sanpham36.jpg', N'sanpham36.jpg', 102, 102)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1041, N'ÁO KHOÁC KAPO AK013', 290000.0000, N'sanpham37.jpg', N'sanpham37.jpg', 102, 103)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1042, N'Áo khoác Jean AK012', 350000.0000, N'sanpham38.jpg', N'sanpham38.jpg', 102, 103)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1043, N'Áo khoác jean AK011', 350000.0000, N'sanpham39.jpg', N'sanpham39.jpg', 102, 103)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1045, N'Áo khoác AK010', 290000.0000, N'sanpham40.jpg', N'sanpham40.jpg', 102, 103)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1046, N'Áo khoác AK09', 290000.0000, N'sanpham41.jpg', N'sanpham41.jpg', 102, 103)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1047, N'Áo khoác AK08', 290000.0000, N'sanpham42.jpg', N'sanpham42.jpg', 102, 103)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1048, N'Áo khoác AK07', 290000.0000, N'sanpham43.jpg', N'sanpham43.jpg', 102, 103)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1049, N'Áo khoác kaki AK06', 290000.0000, N'sanpham44.jpg', N'sanpham44.jpg', 102, 104)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1050, N'Áo khoác kaki AK05', 290000.0000, N'sanpham45.jpg', N'sanpham45.jpg', 102, 105)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1051, N'quần jean Q04', 360000.0000, N'sanpham46.jpg', N'sanpham46.jpg', 103, 105)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1052, N'QUÀN JOGGER JEAN Q0019', 360000.0000, N'sanpham47.jpg', N'sanpham47.jpg', 103, 105)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1053, N'QUÀN JOGGER JEAN Q0018', 360000.0000, N'sanpham48.jpg', N'sanpham48.jpg', 103, 106)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1054, N'QUÀN JOGGER KAKI Q0016', 260000.0000, N'sanpham49.jpg', N'sanpham49.jpg', 103, 106)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1056, N'QUÀN JOGGER KAKI Q0015', 260000.0000, N'sanpham50.jpg', N'sanpham50.jpg', 103, 106)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1057, N'QUÀN JOGGER KAKI Q0014', 260000.0000, N'sanpham51.jpg', N'sanpham51.jpg', 103, 107)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1058, N'QUÀN JOGGER KAKI Q0013', 260000.0000, N'sanpham52.jpg', N'sanpham52.jpg', 103, 107)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1059, N'QUÀN JOGGER KAKI Q0012', 260000.0000, N'sanpham53.jpg', N'sanpham53.jpg', 103, 108)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1060, N'quần short thun Q005', 180000.0000, N'sanpham54.jpg', N'sanpham54.jpg', 103, 108)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1061, N'quần short thun Q004', 180000.0000, N'sanpham55.jpg', N'sanpham55.jpg', 103, 109)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1062, N'quần jean Q011', 360000.0000, N'sanpham56.jpg', N'sanpham56.jpg', 103, 109)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1063, N'quần jean Q010', 360000.0000, N'sanpham57.jpg', N'sanpham57.jpg', 103, 108)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1064, N'quần jogger jean Q09', 290000.0000, N'sanpham58.jpg', N'sanpham58.jpg', 103, 107)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1065, N'quần short thun Q003', 180000.0000, N'sanpham59.jpg', N'sanpham59.jpg', 103, 106)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1066, N'quần short thun Q002', 180000.0000, N'sanpham60.jpg', N'sanpham60.jpg', 103, 106)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1067, N'quần short thun Q001', 180000.0000, N'sanpham61.jpg', N'sanpham61.jpg', 104, 106)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1068, N'áo somi K0034.', 190000.0000, N'sanpham62.jpg', N'sanpham62.jpg', 104, 106)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1069, N'quần short kaki S02', 190000.0000, N'sanpham63.jpg', N'sanpham63.jpg', 104, 105)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1070, N'quần thun freesize viền chữ', 170000.0000, N'sanpham64.jpg', N'sanpham64.jpg', 104, 104)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1071, N'áo thun freesize T0004', 170000.0000, N'sanpham65.jpg', N'sanpham65.jpg', 104, 103)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1072, N'áo thun cổ T0003', 170000.0000, N'sanpham66.jpg', N'sanpham66.jpg', 104, 102)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1073, N'áo thun cổ T0002', 170000.0000, N'sanpham67.jpg', N'sanpham67.jpg', 104, 104)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1074, N'áo thun freesize T0001', 170000.0000, N'sanpham68.jpg', N'sanpham68.jpg', 104, 100)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1075, N'áo somi K0003', 200000.0000, N'sanpham69.jpg', N'sanpham69.jpg', 104, 100)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1076, N'áo somi K0002', 200000.0000, N'sanpham70.png', N'sanpham70.png', 104, 101)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1077, N'áo somi K0001', 200000.0000, N'sanpham71.jpg', N'sanpham71.jpg', 104, 104)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1078, N'áo khoác dù họa tiết xanh', 290000.0000, N'sanpham72.jpg', N'sanpham72.jpg', 104, 103)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1079, N'Set sơ mi sọc và quần jean', 450000.0000, N'sanpham73.jpg', N'sanpham73.jpg', 104, 102)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1080, N'all black với thun khoác short và nón', 600000.0000, N'sanpham74.jpg', N'sanpham74.jpg', 104, 101)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1081, N'Áo sơ mi họa tiết mĩ cùng jean và giày', 500000.0000, N'sanpham75.jpg', N'sanpham75.jpg', 104, 100)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1082, N'Thắt lưng dây nịt nam ms TL106', 300000.0000, N'sanpham76.jpg', N'sanpham76.jpg', 105, 100)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1083, N'Thắt lưng dây nịt nam ms TL105', 300000.0000, N'sanpham77.jpg', N'sanpham77.jpg', 105, 101)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1084, N'Thắt lưng dây nịt nam ms TL102', 350000.0000, N'sanpham78.jpg', N'sanpham78.jpg', 105, 101)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1085, N'Thắt lưng nam ms TL101', 300000.0000, N'sanpham79.jpg', N'sanpham79.jpg', 105, 102)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1086, N'Thắt lưng nam ms TL100', 300000.0000, N'sanpham80.jpg', N'sanpham80.jpg', 105, 101)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1087, N'Thắt Lưng Nam TL12', 250000.0000, N'sanpham81.jpg', N'sanpham81.jpg', 105, 102)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1088, N'Thắt Lưng Nam TL027', 250000.0000, N'sanpham82.jpg', N'sanpham82.jpg', 105, 103)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1089, N'Thắt Lưng Nam TL018', 250000.0000, N'sanpham83.jpg', N'sanpham83.jpg', 105, 104)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1090, N'Thắt Lưng Nam TL016', 250000.0000, N'sanpham84.jpg', N'sanpham84.jpg', 105, 105)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [Gia], [HinhMinhHoa], [DanhSachHinh], [MaLSP], [MaNSX]) VALUES (1091, N'Thắt Lưng Nam TL2', 250000.0000, N'sanpham85.jpg', N'sanpham85.jpg', 105, 100)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [fk_cthd_hd] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [fk_cthd_hd]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [fk_cthd_sp] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [fk_cthd_sp]
GO
ALTER TABLE [dbo].[ChiTietSize]  WITH CHECK ADD  CONSTRAINT [fk_ctsize_size] FOREIGN KEY([MaSize])
REFERENCES [dbo].[BangSize] ([MaSize])
GO
ALTER TABLE [dbo].[ChiTietSize] CHECK CONSTRAINT [fk_ctsize_size]
GO
ALTER TABLE [dbo].[ChiTietSize]  WITH CHECK ADD  CONSTRAINT [fk_ctsize_sp] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietSize] CHECK CONSTRAINT [fk_ctsize_sp]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [fk_hd_kh] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [fk_hd_kh]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [fk_kh_ltk] FOREIGN KEY([MaLTK])
REFERENCES [dbo].[LoaiTaiKhoan] ([MaLoaiTaiKhoan])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [fk_kh_ltk]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [fk_sp_lsp] FOREIGN KEY([MaLSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSanPham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [fk_sp_lsp]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [fk_sp_nsx] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNhaSanXuat])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [fk_sp_nsx]
GO
USE [master]
GO
ALTER DATABASE [QLShopThoiTrang] SET  READ_WRITE 
GO
