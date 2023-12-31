USE [master]
GO
/****** Object:  Database [DatVeMayBay]    Script Date: 6/19/2023 1:07:08 PM ******/
CREATE DATABASE [DatVeMayBay]

GO
ALTER DATABASE [DatVeMayBay] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DatVeMayBay] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DatVeMayBay] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DatVeMayBay] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DatVeMayBay] SET ARITHABORT OFF 
GO
ALTER DATABASE [DatVeMayBay] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DatVeMayBay] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DatVeMayBay] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DatVeMayBay] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DatVeMayBay] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DatVeMayBay] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DatVeMayBay] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DatVeMayBay] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DatVeMayBay] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DatVeMayBay] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DatVeMayBay] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DatVeMayBay] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DatVeMayBay] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DatVeMayBay] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DatVeMayBay] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DatVeMayBay] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DatVeMayBay] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DatVeMayBay] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DatVeMayBay] SET  MULTI_USER 
GO
ALTER DATABASE [DatVeMayBay] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DatVeMayBay] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DatVeMayBay] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DatVeMayBay] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DatVeMayBay] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DatVeMayBay] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DatVeMayBay', N'ON'
GO
ALTER DATABASE [DatVeMayBay] SET QUERY_STORE = OFF
GO
USE [DatVeMayBay]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 6/19/2023 1:07:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[MaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[HoTen] [nvarchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChangBay]    Script Date: 6/19/2023 1:07:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChangBay](
	[MaChangBay] [int] IDENTITY(1,1) NOT NULL,
	[SanBay_CatCanh] [varchar](10) NULL,
	[SanBay_HaCanh] [varchar](10) NULL,
 CONSTRAINT [PK_ChangBay] PRIMARY KEY CLUSTERED 
(
	[MaChangBay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuyenBay]    Script Date: 6/19/2023 1:07:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenBay](
	[MaChuyenBay] [int] IDENTITY(1,1) NOT NULL,
	[NgayCatCanh] [date] NULL,
	[GioCatCanh] [time](7) NULL,
	[ThoiGianBay] [time](5) NULL,
	[LoaiMayBay] [varchar](10) NULL,
	[MaChangBay] [int] NOT NULL,
	[GiaNguoiLon] [decimal](18, 0) NULL,
	[GiaTreEm] [decimal](18, 0) NULL,
 CONSTRAINT [PK_ChuyenBay] PRIMARY KEY CLUSTERED 
(
	[MaChuyenBay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HanhLy]    Script Date: 6/19/2023 1:07:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HanhLy](
	[MaHanhLy] [varchar](10) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[KhoiLuong] [float] NULL,
	[GiaTien] [decimal](18, 0) NULL,
 CONSTRAINT [PK_HanhLy] PRIMARY KEY CLUSTERED 
(
	[MaHanhLy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HinhThucThanhToan]    Script Date: 6/19/2023 1:07:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhThucThanhToan](
	[MaHinhThucTT] [varchar](10) NOT NULL,
	[TenHinhThucTT] [nvarchar](50) NULL,
	[ThongTinHuongDan] [nvarchar](max) NULL,
 CONSTRAINT [PK_HinhThucThanhToan] PRIMARY KEY CLUSTERED 
(
	[MaHinhThucTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 6/19/2023 1:07:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[NgayLap] [date] NULL,
	[ThanhTien] [decimal](18, 0) NULL,
	[MaVe] [int] NULL,
	[MaHinhThucTT] [varchar](10) NULL,
	[MaTTXuat] [int] NULL,
	[MaKhuyenMai] [int] NULL,
 CONSTRAINT [PK_HoaDonCT] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 6/19/2023 1:07:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoKH] [nvarchar](50) NULL,
	[TenKH] [nvarchar](50) NULL,
	[CMND] [nchar](10) NULL,
	[SDT] [char](10) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DanhXung] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[YeuCau] [nvarchar](50) NULL,
	[TaiKhoan] [varchar](20) NULL,
	[MatKhau] [varchar](20) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang_DatVe]    Script Date: 6/19/2023 1:07:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang_DatVe](
	[MaPhieuDatVe] [int] NOT NULL,
	[MaKH] [int] NOT NULL,
	[NguoiDat] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 6/19/2023 1:07:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[MaKhuyenMai] [int] IDENTITY(1,1) NOT NULL,
	[TenKhuyenMai] [nvarchar](50) NULL,
	[ThongTinChiTiet] [nvarchar](max) NULL,
	[PhanTramSale] [float] NULL,
	[ThoiGianBD] [date] NULL,
	[ThoiGianKT] [date] NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[MaKhuyenMai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiVe]    Script Date: 6/19/2023 1:07:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiVe](
	[MaLoaiVe] [varchar](10) NOT NULL,
	[TenLoaiVe] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiVe] PRIMARY KEY CLUSTERED 
(
	[MaLoaiVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MayBay]    Script Date: 6/19/2023 1:07:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MayBay](
	[LoaiMayBay] [varchar](10) NOT NULL,
	[TenMayBay] [nvarchar](50) NULL,
	[HangMayBay] [nvarchar](50) NULL,
	[KyHieuHang] [varchar](50) NULL,
 CONSTRAINT [PK_MayBay] PRIMARY KEY CLUSTERED 
(
	[LoaiMayBay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NganHang]    Script Date: 6/19/2023 1:07:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NganHang](
	[MaNganHang] [varchar](10) NOT NULL,
	[TenNganHang] [nvarchar](50) NULL,
 CONSTRAINT [PK_NganHang] PRIMARY KEY CLUSTERED 
(
	[MaNganHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDatVe]    Script Date: 6/19/2023 1:07:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDatVe](
	[MaPhieuDatVe] [int] IDENTITY(1,1) NOT NULL,
	[NgayDat] [date] NULL,
	[MaChuyenBay] [int] NULL,
	[MaLoaiVe] [varchar](10) NULL,
 CONSTRAINT [PK_PhieuDatVe] PRIMARY KEY CLUSTERED 
(
	[MaPhieuDatVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDatVe_HanhLy]    Script Date: 6/19/2023 1:07:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDatVe_HanhLy](
	[MaPhieuDatVe] [int] NOT NULL,
	[MaHanhLy] [varchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanBay]    Script Date: 6/19/2023 1:07:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanBay](
	[MaSanBay] [varchar](10) NOT NULL,
	[TenSanBay] [nvarchar](50) NULL,
	[ViTri] [nvarchar](100) NULL,
	[KhuVuc] [nvarchar](50) NULL,
	[NoiDia] [int] NULL,
	[QuocTe] [int] NULL,
 CONSTRAINT [PK_SanBay] PRIMARY KEY CLUSTERED 
(
	[MaSanBay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhToan_NganHang]    Script Date: 6/19/2023 1:07:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhToan_NganHang](
	[MaHinhThucTT] [varchar](10) NOT NULL,
	[MaNganHang] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinXuatHoaDon]    Script Date: 6/19/2023 1:07:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinXuatHoaDon](
	[MaTTXuat] [int] IDENTITY(1,1) NOT NULL,
	[MaSoThue] [int] NULL,
	[TenCongTy] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DiaChiNhanHoaDon] [nvarchar](100) NULL,
 CONSTRAINT [PK_ThongTinXuatHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaTTXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ve]    Script Date: 6/19/2023 1:07:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ve](
	[MaVe] [int] IDENTITY(1,1) NOT NULL,
	[SoGhe] [int] NULL,
	[KhoangGhe] [char](10) NULL,
	[MaPhieuDatVe] [int] NULL,
 CONSTRAINT [PK_Ve] PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([MaTaiKhoan], [TaiKhoan], [MatKhau], [HoTen]) VALUES (1, N'viet', N'123', N'Nguyễn Đình Việt')
INSERT [dbo].[Admin] ([MaTaiKhoan], [TaiKhoan], [MatKhau], [HoTen]) VALUES (2, N'linh', N'123', N'Nguyễn Duy Linh')
INSERT [dbo].[Admin] ([MaTaiKhoan], [TaiKhoan], [MatKhau], [HoTen]) VALUES (3, N'ngocanh', N'123', N'Nhữ Ngọc Anh')
INSERT [dbo].[Admin] ([MaTaiKhoan], [TaiKhoan], [MatKhau], [HoTen]) VALUES (4, N'dien', N'123', N'Ma Đình Diện')
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[ChangBay] ON 

INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (1, N'HAN', N'THD')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (2, N'HAN', N'DAD')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (3, N'HAN', N'VCS')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (4, N'HAN', N'SBN')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (5, N'HAN', N'SIN')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (6, N'HAN', N'BKK')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (7, N'HAN', N'VTE')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (8, N'HAN', N'PEK')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (9, N'HAN', N'SYD')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (10, N'HAN', N'LHR')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (11, N'HAN', N'SFO')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (12, N'HAN', N'CDG')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (13, N'SBN', N'HAN')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (14, N'SBN', N'HPH')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (15, N'SBN', N'DAD')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (16, N'SBN', N'PNH')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (17, N'SBN', N'REP')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (18, N'SBN', N'CGK')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (19, N'SBN', N'MNL')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (21, N'SBN', N'PKZ')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (22, N'SBN', N'DRW')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (23, N'SBN', N'MEL')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (24, N'SBN', N'AKL')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (25, N'SBN', N'MFM')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (26, N'HAN', N'CAN')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (28, N'SBN', N'SHA')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (29, N'HAN', N'NNG')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (31, N'SBN', N'HYD')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (32, N'HAN', N'TRV')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (33, N'SBN', N'NGO')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (34, N'HAN', N'KIX')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (35, N'SBN', N'NRT')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (36, N'HAN', N'PUS')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (37, N'SBN', N'GMP')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (39, N'HAN', N'PRG')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (40, N'SBN', N'FRA')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (41, N'HAN', N'MOW')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (42, N'SBN', N'LHR')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (43, N'HAN', N'YTO')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (44, N'SBN', N'CHI')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (45, N'HAN', N'BOS')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (46, N'SBN', N'MSP')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (48, N'HAN', N'SEA')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (49, N'SBN', N'LAX')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (51, N'HPH', N'THD')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (52, N'HPH', N'DAD')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (53, N'HPH', N'VDH')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (54, N'HPH', N'VCL')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (55, N'DIN', N'VII')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (56, N'DIN', N'HUI')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (57, N'DIN', N'TBB')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (58, N'DIN', N'PXU')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (59, N'VDO', N'CXR')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (60, N'VDO', N'DLI')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (61, N'VDO', N'PQC')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (62, N'VDO', N'VCA')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (63, N'HPH', N'VCS')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (64, N'HPH', N'VKG')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (66, N'HPH', N'VAH')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (67, N'HPH', N'BMV')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (68, N'HPH', N'UIH')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (69, N'HAN', N'VII')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (70, N'HAN', N'HUI')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (71, N'HAN', N'VDH')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (72, N'HAN', N'TBB')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (73, N'HAN', N'VCL')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (74, N'HAN', N'PXU')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (75, N'HAN', N'CXR')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (76, N'HAN', N'DLI')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (77, N'HAN', N'PQC')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (78, N'HAN', N'VCA')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (79, N'HAN', N'VKG')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (80, N'HAN', N'VAH')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (81, N'HAN', N'BMV')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (82, N'HAN', N'UIH')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (83, N'SBN', N'DIN')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (84, N'SBN', N'VDO')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (85, N'SBN', N'VII')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (86, N'SBN', N'THD')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (87, N'SBN', N'HUI')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (88, N'SBN', N'VDH')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (89, N'SBN', N'TBB')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (90, N'SBN', N'VCL')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (91, N'SBN', N'PXU')
INSERT [dbo].[ChangBay] ([MaChangBay], [SanBay_CatCanh], [SanBay_HaCanh]) VALUES (92, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ChangBay] OFF
GO
SET IDENTITY_INSERT [dbo].[ChuyenBay] ON 

INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [NgayCatCanh], [GioCatCanh], [ThoiGianBay], [LoaiMayBay], [MaChangBay], [GiaNguoiLon], [GiaTreEm]) VALUES (1, CAST(N'2021-05-26' AS Date), CAST(N'23:15:00' AS Time), CAST(N'03:30:00' AS Time), N'VJ124', 1, CAST(559000 AS Decimal(18, 0)), CAST(120000 AS Decimal(18, 0)))
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [NgayCatCanh], [GioCatCanh], [ThoiGianBay], [LoaiMayBay], [MaChangBay], [GiaNguoiLon], [GiaTreEm]) VALUES (7, CAST(N'2021-05-30' AS Date), CAST(N'12:10:00' AS Time), CAST(N'02:00:00' AS Time), N'VJ124', 2, CAST(490000 AS Decimal(18, 0)), CAST(120000 AS Decimal(18, 0)))
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [NgayCatCanh], [GioCatCanh], [ThoiGianBay], [LoaiMayBay], [MaChangBay], [GiaNguoiLon], [GiaTreEm]) VALUES (8, CAST(N'2021-07-31' AS Date), CAST(N'12:30:00' AS Time), CAST(N'01:15:00' AS Time), N'VJ137', 3, CAST(699000 AS Decimal(18, 0)), CAST(120000 AS Decimal(18, 0)))
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [NgayCatCanh], [GioCatCanh], [ThoiGianBay], [LoaiMayBay], [MaChangBay], [GiaNguoiLon], [GiaTreEm]) VALUES (9, CAST(N'2021-07-31' AS Date), CAST(N'12:10:00' AS Time), CAST(N'02:15:00' AS Time), N'VN4567', 4, CAST(540000 AS Decimal(18, 0)), CAST(120000 AS Decimal(18, 0)))
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [NgayCatCanh], [GioCatCanh], [ThoiGianBay], [LoaiMayBay], [MaChangBay], [GiaNguoiLon], [GiaTreEm]) VALUES (12, CAST(N'2021-05-30' AS Date), CAST(N'12:10:00' AS Time), CAST(N'01:15:00' AS Time), N'VN6552', 5, CAST(540000 AS Decimal(18, 0)), CAST(120000 AS Decimal(18, 0)))
INSERT [dbo].[ChuyenBay] ([MaChuyenBay], [NgayCatCanh], [GioCatCanh], [ThoiGianBay], [LoaiMayBay], [MaChangBay], [GiaNguoiLon], [GiaTreEm]) VALUES (15, CAST(N'2021-09-11' AS Date), CAST(N'12:10:00' AS Time), CAST(N'01:15:00' AS Time), N'VN4567', 6, CAST(540000 AS Decimal(18, 0)), CAST(120000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[ChuyenBay] OFF
GO
INSERT [dbo].[HanhLy] ([MaHanhLy], [Ten], [KhoiLuong], [GiaTien]) VALUES (N'HL1', N'Không, Cảm ơn', 0, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[HanhLy] ([MaHanhLy], [Ten], [KhoiLuong], [GiaTien]) VALUES (N'HL2', N'Gói(Bag) 5kg', 5, CAST(77000 AS Decimal(18, 0)))
INSERT [dbo].[HanhLy] ([MaHanhLy], [Ten], [KhoiLuong], [GiaTien]) VALUES (N'HL3', N'Gói(Bag) 10kg', 10, CAST(132000 AS Decimal(18, 0)))
INSERT [dbo].[HanhLy] ([MaHanhLy], [Ten], [KhoiLuong], [GiaTien]) VALUES (N'HL4', N'Gói(Bag) 15kg', 15, CAST(171000 AS Decimal(18, 0)))
INSERT [dbo].[HanhLy] ([MaHanhLy], [Ten], [KhoiLuong], [GiaTien]) VALUES (N'HL5', N'Gói(Bag) 20kg', 20, CAST(198000 AS Decimal(18, 0)))
GO
INSERT [dbo].[HinhThucThanhToan] ([MaHinhThucTT], [TenHinhThucTT], [ThongTinHuongDan]) VALUES (N'CK', N'Thanh toán bằng hình thức chuyển khoản', N'Lựa chọn các ngân hàng')
INSERT [dbo].[HinhThucThanhToan] ([MaHinhThucTT], [TenHinhThucTT], [ThongTinHuongDan]) VALUES (N'NET', N'Thanh toán tại 322Airlines.COM', N'Thanh toán tại 322Airlines.COM')
INSERT [dbo].[HinhThucThanhToan] ([MaHinhThucTT], [TenHinhThucTT], [ThongTinHuongDan]) VALUES (N'Payoo', N'Tại các điểm giao dịch và cửa hàng tiện lợi', N'Qua cổng Payoo')
INSERT [dbo].[HinhThucThanhToan] ([MaHinhThucTT], [TenHinhThucTT], [ThongTinHuongDan]) VALUES (N'TTKH', N'Thanh toán tại địa chỉ khách hàng', N'Thanh toán tại địa chỉ khách hàng')
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [CMND], [SDT], [DiaChi], [DanhXung], [NgaySinh], [YeuCau], [TaiKhoan], [MatKhau]) VALUES (1, N'Triệu Ninh', N'Ngân', N'1234567888', N'0934694228', N'Hưng Yên', N'Chị', CAST(N'1999-12-12' AS Date), NULL, N'ngan', N'123')
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [CMND], [SDT], [DiaChi], [DanhXung], [NgaySinh], [YeuCau], [TaiKhoan], [MatKhau]) VALUES (2, N'Trần Thị', N'Vân Anh', N'1234567888', N'0934694228', N'Hải Dương', N'Chị', CAST(N'1999-12-12' AS Date), NULL, N'vananh', N'123')
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [CMND], [SDT], [DiaChi], [DanhXung], [NgaySinh], [YeuCau], [TaiKhoan], [MatKhau]) VALUES (3, N'Nguyễn', N'Ngọc Anh', N'1234567888', N'0934694228', N'Nam Định', N'Chị', CAST(N'1999-12-12' AS Date), NULL, N'ngocanh', N'123')
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [CMND], [SDT], [DiaChi], [DanhXung], [NgaySinh], [YeuCau], [TaiKhoan], [MatKhau]) VALUES (4, N'Nguyễn Ánh', N'Tuyết', N'1234567888', N'0934694228', N'Lào Cai', N'Chị', CAST(N'1999-12-12' AS Date), NULL, N'tuyet', N'123')
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [CMND], [SDT], [DiaChi], [DanhXung], [NgaySinh], [YeuCau], [TaiKhoan], [MatKhau]) VALUES (5, N'Nguyễn Thanh', N'Hà', N'1234567888', N'0934694228', N'Hà Nam', N'Anh', CAST(N'1999-12-12' AS Date), NULL, N'ha', N'123')
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [CMND], [SDT], [DiaChi], [DanhXung], [NgaySinh], [YeuCau], [TaiKhoan], [MatKhau]) VALUES (6, N'Nguyễn Hữu', N'Hải', N'1234567888', N'0934694228', N'Hà Nội', N'Anh', CAST(N'1999-12-12' AS Date), NULL, N'hai', N'123')
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [CMND], [SDT], [DiaChi], [DanhXung], [NgaySinh], [YeuCau], [TaiKhoan], [MatKhau]) VALUES (7, N'Phạm Tiến', N'Duật', N'1234567888', N'0934694228', N'Thái Bình', N'Anh', CAST(N'1999-12-12' AS Date), NULL, N'duat', N'123')
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [CMND], [SDT], [DiaChi], [DanhXung], [NgaySinh], [YeuCau], [TaiKhoan], [MatKhau]) VALUES (8, N'Hà Vĩnh', N'Phúc', N'1234567888', N'0934694228', N'Bắc Ninh', N'Anh', CAST(N'1999-12-12' AS Date), NULL, N'phuc', N'123')
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [CMND], [SDT], [DiaChi], [DanhXung], [NgaySinh], [YeuCau], [TaiKhoan], [MatKhau]) VALUES (9, N'Đỗ Văn', N'Quyền', N'1234567888', N'0934694228', N'Nam Định', N'Anh', CAST(N'1999-12-12' AS Date), NULL, N'quyen', N'123')
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [CMND], [SDT], [DiaChi], [DanhXung], [NgaySinh], [YeuCau], [TaiKhoan], [MatKhau]) VALUES (11, N'Nguyễn Van', N'A', N'1234567888', N'0934694228', N'Hà Nam', N'Anh', CAST(N'1999-12-12' AS Date), NULL, N'ha', N'123')
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [CMND], [SDT], [DiaChi], [DanhXung], [NgaySinh], [YeuCau], [TaiKhoan], [MatKhau]) VALUES (1011, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [CMND], [SDT], [DiaChi], [DanhXung], [NgaySinh], [YeuCau], [TaiKhoan], [MatKhau]) VALUES (1012, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [CMND], [SDT], [DiaChi], [DanhXung], [NgaySinh], [YeuCau], [TaiKhoan], [MatKhau]) VALUES (1013, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [CMND], [SDT], [DiaChi], [DanhXung], [NgaySinh], [YeuCau], [TaiKhoan], [MatKhau]) VALUES (1014, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [CMND], [SDT], [DiaChi], [DanhXung], [NgaySinh], [YeuCau], [TaiKhoan], [MatKhau]) VALUES (1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [CMND], [SDT], [DiaChi], [DanhXung], [NgaySinh], [YeuCau], [TaiKhoan], [MatKhau]) VALUES (1016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [CMND], [SDT], [DiaChi], [DanhXung], [NgaySinh], [YeuCau], [TaiKhoan], [MatKhau]) VALUES (1017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [CMND], [SDT], [DiaChi], [DanhXung], [NgaySinh], [YeuCau], [TaiKhoan], [MatKhau]) VALUES (1018, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [CMND], [SDT], [DiaChi], [DanhXung], [NgaySinh], [YeuCau], [TaiKhoan], [MatKhau]) VALUES (1019, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [CMND], [SDT], [DiaChi], [DanhXung], [NgaySinh], [YeuCau], [TaiKhoan], [MatKhau]) VALUES (1020, NULL, N'', NULL, N'          ', N'', N'm', NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [CMND], [SDT], [DiaChi], [DanhXung], [NgaySinh], [YeuCau], [TaiKhoan], [MatKhau]) VALUES (1021, NULL, N'', NULL, NULL, N'', N'm', NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [CMND], [SDT], [DiaChi], [DanhXung], [NgaySinh], [YeuCau], [TaiKhoan], [MatKhau]) VALUES (1022, NULL, N'', NULL, NULL, NULL, N'm', NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [CMND], [SDT], [DiaChi], [DanhXung], [NgaySinh], [YeuCau], [TaiKhoan], [MatKhau]) VALUES (1023, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [CMND], [SDT], [DiaChi], [DanhXung], [NgaySinh], [YeuCau], [TaiKhoan], [MatKhau]) VALUES (1024, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [CMND], [SDT], [DiaChi], [DanhXung], [NgaySinh], [YeuCau], [TaiKhoan], [MatKhau]) VALUES (1025, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhuyenMai] ON 

INSERT [dbo].[KhuyenMai] ([MaKhuyenMai], [TenKhuyenMai], [ThongTinChiTiet], [PhanTramSale], [ThoiGianBD], [ThoiGianKT]) VALUES (1, N'Tặng ngàn dặm bay', N'Tặng ngàn dặm bay – Mở ngay Thẻ tín dụng liên kết Sacombank – Vietnam Airlines – Visa', 60, CAST(N'2021-11-03' AS Date), CAST(N'2021-12-04' AS Date))
INSERT [dbo].[KhuyenMai] ([MaKhuyenMai], [TenKhuyenMai], [ThongTinChiTiet], [PhanTramSale], [ThoiGianBD], [ThoiGianKT]) VALUES (11, N'FridaySmiles', N'FridaySmiles – Ngày hội ưu đãi dành cho tất cả hội viên Bông Sen Vàng!', 20, CAST(N'2021-10-03' AS Date), CAST(N'2021-11-04' AS Date))
INSERT [dbo].[KhuyenMai] ([MaKhuyenMai], [TenKhuyenMai], [ThongTinChiTiet], [PhanTramSale], [ThoiGianBD], [ThoiGianKT]) VALUES (12, N'Ra mắt Thẻ liên kết Sacombank', N'Ra mắt Thẻ liên kết Sacombank – Vietnam Airlines – Visa', 25, CAST(N'2021-09-24' AS Date), CAST(N'2021-10-24' AS Date))
INSERT [dbo].[KhuyenMai] ([MaKhuyenMai], [TenKhuyenMai], [ThongTinChiTiet], [PhanTramSale], [ThoiGianBD], [ThoiGianKT]) VALUES (15, N'Sở hữu ngay thẻ Titan', N'Sở hữu ngay thẻ Titan thời hạn 5 năm khi mở thẻ với Vietcombank', 15, CAST(N'2021-10-01' AS Date), CAST(N'2021-10-31' AS Date))
INSERT [dbo].[KhuyenMai] ([MaKhuyenMai], [TenKhuyenMai], [ThongTinChiTiet], [PhanTramSale], [ThoiGianBD], [ThoiGianKT]) VALUES (16, N'Nghỉ dưỡng tại Fusion', N'Nghỉ dưỡng tại Fusion và nhận ưu đãi đặc biệt', 10, CAST(N'2021-09-23' AS Date), CAST(N'2021-10-24' AS Date))
INSERT [dbo].[KhuyenMai] ([MaKhuyenMai], [TenKhuyenMai], [ThongTinChiTiet], [PhanTramSale], [ThoiGianBD], [ThoiGianKT]) VALUES (17, N'Nâng hạng thẻ Bông Sen Vàng', N'Nâng hạng thẻ Bông Sen Vàng với Techcombank', 30, CAST(N'2021-08-14' AS Date), CAST(N'2021-06-14' AS Date))
SET IDENTITY_INSERT [dbo].[KhuyenMai] OFF
GO
INSERT [dbo].[LoaiVe] ([MaLoaiVe], [TenLoaiVe]) VALUES (N'KH', N'Khứ Hồi')
INSERT [dbo].[LoaiVe] ([MaLoaiVe], [TenLoaiVe]) VALUES (N'MC', N'Một Chiều')
GO
INSERT [dbo].[MayBay] ([LoaiMayBay], [TenMayBay], [HangMayBay], [KyHieuHang]) VALUES (N'VJ124', N'VietJet 124', N'VietJet', N'VJ')
INSERT [dbo].[MayBay] ([LoaiMayBay], [TenMayBay], [HangMayBay], [KyHieuHang]) VALUES (N'VJ137', N'VietJet 137', N'VietJet', N'VJ')
INSERT [dbo].[MayBay] ([LoaiMayBay], [TenMayBay], [HangMayBay], [KyHieuHang]) VALUES (N'VJ545', N'VietJet 545', N'VietJet', N'VJ')
INSERT [dbo].[MayBay] ([LoaiMayBay], [TenMayBay], [HangMayBay], [KyHieuHang]) VALUES (N'VJ587', N'VietJet 587', N'VietJet', N'VJ')
INSERT [dbo].[MayBay] ([LoaiMayBay], [TenMayBay], [HangMayBay], [KyHieuHang]) VALUES (N'VJ792', N'VietJet 792', N'VietJet', N'VJ')
INSERT [dbo].[MayBay] ([LoaiMayBay], [TenMayBay], [HangMayBay], [KyHieuHang]) VALUES (N'VN4567', N'Vietnam airlines - Pacific 4567', N'Vietnam airlines - Pacific', N'VN')
INSERT [dbo].[MayBay] ([LoaiMayBay], [TenMayBay], [HangMayBay], [KyHieuHang]) VALUES (N'VN6017', N'Vietnam airlines - Pacific 6017', N'Vietnam airlines - Pacific', N'VN')
INSERT [dbo].[MayBay] ([LoaiMayBay], [TenMayBay], [HangMayBay], [KyHieuHang]) VALUES (N'VN6552', N'Vietnam airlines - Pacific 6552', N'Vietnam airlines - Pacific', N'VN')
INSERT [dbo].[MayBay] ([LoaiMayBay], [TenMayBay], [HangMayBay], [KyHieuHang]) VALUES (N'VN8922', N'Vietnam airlines - Pacific 8922', N'Vietnam airlines - Pacific', N'VN')
INSERT [dbo].[MayBay] ([LoaiMayBay], [TenMayBay], [HangMayBay], [KyHieuHang]) VALUES (N'VN8924', N'Vietnam airlines - Pacific 8924', N'Vietnam airlines - Pacific', N'VN')
GO
INSERT [dbo].[NganHang] ([MaNganHang], [TenNganHang]) VALUES (N'AGB', N'Agribank')
INSERT [dbo].[NganHang] ([MaNganHang], [TenNganHang]) VALUES (N'BIDV', N'BIDV')
INSERT [dbo].[NganHang] ([MaNganHang], [TenNganHang]) VALUES (N'MB', N'MBBank')
INSERT [dbo].[NganHang] ([MaNganHang], [TenNganHang]) VALUES (N'SHB', N'Shinhan Bank')
INSERT [dbo].[NganHang] ([MaNganHang], [TenNganHang]) VALUES (N'TCB', N'TechcomBank')
INSERT [dbo].[NganHang] ([MaNganHang], [TenNganHang]) VALUES (N'VCB', N'VietcomBank')
INSERT [dbo].[NganHang] ([MaNganHang], [TenNganHang]) VALUES (N'VTB', N'VietinBank')
GO
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'AKL', N'Auckland', N'Auckland - New Zealand', N'Châu Úc', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'BKK', N'Suvarnabhumi', N'Bangkok - Thái Lan', N'Đông Nam Á', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'BMV', N'Buôn Ma Thuột', N'Đắk Lắk - Việt Nam', N'Việt Nam', 1, 0)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'BOS', N'Logan', N'Boston - Hoa Kỳ', N'Châu Mỹ', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'CAN', N'Bạch Vân', N'Quảng Châu - Trung Quốc', N'Trung Quốc', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'CDG', N'Charles de Gaulle Airport', N'Paris - Pháp', N'Châu Âu', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'CGK', N'Soekarno-Hatta', N'Jakarta - Indonesia', N'Đông Nam Á', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'CHI', N'O''Hare', N'Chicago - Hoa Kỳ', N'Châu Mỹ', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'CXR', N'Nha Trang', N'Khánh Hòa - Việt Nam', N'Việt Nam', 1, 0)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'DAD', N'Đà Nẵng', N'Đà Nẵng - Việt Nam', N'Việt Nam', 1, 0)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'DIN', N'Điện Biên', N'Điện Biên - Việt Nam', N'Việt Nam', 1, 0)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'DLI', N'Đà Lạt', N'Lâm Đồng - Việt Nam', N'Việt Nam', 1, 0)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'DRW', N'Darwin', N'Northern Territory - Australia', N'Châu Úc', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'FRA', N'Frankfurt', N'Frankfurt - Đức', N'Châu Âu', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'GMP', N'Gimpo', N'Seoul - Hàn Quốc', N'Bắc Á', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'HAN', N'Nội Bài', N'Hà Nội - Việt Nam', N'Đông Nam Á', 1, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'HKG', N'Chek Lap Kok', N'Hong Kong - Trung Quốc', N'Trung Quốc', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'HPH', N'Cát Bi', N'Hải Phòng - Việt Nam', N'Việt Nam', 1, 0)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'HUI', N'Phú Bài', N'Thừa Thiên Huế - Việt Nam', N'Việt Nam', 1, 0)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'HYD', N'Rajiv Gandhi', N'Hyderabad - Ấn Độ', N'Bắc Á', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'KIX', N'Osaka', N'Osaka - Nhật Bản', N'Bắc Á', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'KUL', N'Kuala Lumpur', N'Selangor - Malaysia', N'Đông Nam Á', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'LAX', N'Los Angeles', N'Los Angeles - Hoa Kỳ', N'Châu Mỹ', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'LHR', N'London Heathrow', N'London - Anh', N'Châu Âu', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'MEL', N'Melbourne', N'Victoria - Australia', N'Châu Úc', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'MFM', N'Macau', N'Ma Cao - Trung Quốc', N'Trung Quốc', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'MNL', N'Ninoy Aquino', N'Manila - Philippines', N'Đông Nam Á', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'MOW', N'Sheremetyevo', N'Moscow - Nga', N'Châu Âu', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'MSP', N'Minneapolis-Saint Paul', N'Minnesota - Hoa Kỳ', N'Châu Mỹ', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'NGO', N'Chubu', N'Nagoya - Nhật Bản', N'Bắc Á', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'NNG', N'Ngô Vu Nam Ninh', N'Quảng Tây - Trung Quốc', N'Trung Quốc', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'NRT', N'Tokyo', N'Tokyo - Nhật Bản', N'Bắc Á', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'PEK', N'Bắc Kinh', N'Bắc Kinh - Trung Quốc', N'Trung Quốc', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'PKZ', N'Pakse', N'Pakse - Lào', N'Đông Nam Á', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'PNH', N'Phnom Penh', N'Phnom Penh - Campuchia', N'Đông Nam Á', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'PQC', N'Phú Quốc', N'Kiên Giang - Việt Nam', N'Việt Nam', 1, 0)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'PRG', N'Prague', N'Prague - Cộng hòa Séc', N'Châu Âu', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'PUS', N'Gimhae', N'Busan - Hàn Quốc', N'Bắc Á', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'PXU', N'Pleiku', N'Gia Lai - Việt Nam', N'Việt Nam', 1, 0)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'REP', N'Angkor', N'Siem Reap - Campuchia', N'Đông Nam Á', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'SBN', N'Tân Sơn Nhất', N'Hồ Chí Minh - Việt Nam', N'Đông Nam Á', 1, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'SEA', N'Seattle-Tacoma', N'Seattle - Hoa Kỳ', N'Châu Mỹ', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'SFO', N'San Francisco', N'San Francisco - Hoa Kỳ', N'Châu Mỹ', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'SHA', N'Phố Đông Thượng Hải', N'Thượng Hải - Trung Quốc', N'Trung Quốc', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'SIN', N'Singapore Changi', N'Singapore', N'Đông Nam Á', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'SYD', N'Sydney', N'Sydney - Australia', N'Châu Úc', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'TBB', N'Tuy Hòa', N'Phú Yên - Việt Nam', N'Việt Nam', 1, 0)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'THD', N'Thọ Xuân', N'Thanh Hóa - Việt Nam', N'Việt Nam', 1, 0)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'TRV', N'Trivandrum', N'Kerala - Ấn Độ', N'Bắc Á', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'UIH', N'Phù Cát', N'Bình Định - Việt Nam', N'Việt Nam', 1, 0)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'VAH', N'Cà Mau', N'Cà Mau - Việt Nam', N'Việt Nam', 1, 0)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'VCA', N'Trà Nóc', N'Cần Thơ - Việt Nam', N'Việt Nam', 1, 0)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'VCL', N'Chu Lai', N'Quảng Nam - Việt Nam', N'Việt Nam', 1, 0)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'VCS', N'Côn Đảo', N'Vũng Tàu - Việt Nam', N'Việt Nam', 1, 0)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'VDH', N'Đồng Hới', N'Quảng Bình - Việt Nam', N'Việt Nam', 1, 0)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'VDO', N'Vân Đồn', N'Quảng Ninh - Việt Nam', N'Việt Nam', 1, 0)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'VII', N'Vinh', N'Nghệ An - Việt Nam', N'Việt Nam', 1, 0)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'VKG', N'Rạch Giá', N'Kiên Giang - Việt Nam', N'Việt Nam', 1, 0)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'VTE', N'Wattay', N'Vientiane - Lào', N'Đông Nam Á', 0, 1)
INSERT [dbo].[SanBay] ([MaSanBay], [TenSanBay], [ViTri], [KhuVuc], [NoiDia], [QuocTe]) VALUES (N'YTO', N'Toronto Pearson', N'Toronto - Canada', N'Châu Mỹ', 0, 1)
GO
INSERT [dbo].[ThanhToan_NganHang] ([MaHinhThucTT], [MaNganHang]) VALUES (N'CK', N'AGB')
INSERT [dbo].[ThanhToan_NganHang] ([MaHinhThucTT], [MaNganHang]) VALUES (N'CK', N'SHB')
INSERT [dbo].[ThanhToan_NganHang] ([MaHinhThucTT], [MaNganHang]) VALUES (N'CK', N'TCB')
INSERT [dbo].[ThanhToan_NganHang] ([MaHinhThucTT], [MaNganHang]) VALUES (N'CK', N'VCB')
INSERT [dbo].[ThanhToan_NganHang] ([MaHinhThucTT], [MaNganHang]) VALUES (N'CK', N'VTB')
INSERT [dbo].[ThanhToan_NganHang] ([MaHinhThucTT], [MaNganHang]) VALUES (N'CK', N'MB')
INSERT [dbo].[ThanhToan_NganHang] ([MaHinhThucTT], [MaNganHang]) VALUES (N'CK', N'BIDV')
GO
ALTER TABLE [dbo].[ChangBay]  WITH CHECK ADD  CONSTRAINT [FK_ChangBay_SanBay] FOREIGN KEY([SanBay_CatCanh])
REFERENCES [dbo].[SanBay] ([MaSanBay])
GO
ALTER TABLE [dbo].[ChangBay] CHECK CONSTRAINT [FK_ChangBay_SanBay]
GO
ALTER TABLE [dbo].[ChangBay]  WITH CHECK ADD  CONSTRAINT [FK_ChangBay_SanBay1] FOREIGN KEY([SanBay_HaCanh])
REFERENCES [dbo].[SanBay] ([MaSanBay])
GO
ALTER TABLE [dbo].[ChangBay] CHECK CONSTRAINT [FK_ChangBay_SanBay1]
GO
ALTER TABLE [dbo].[ChuyenBay]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenBay_ChangBay] FOREIGN KEY([MaChangBay])
REFERENCES [dbo].[ChangBay] ([MaChangBay])
GO
ALTER TABLE [dbo].[ChuyenBay] CHECK CONSTRAINT [FK_ChuyenBay_ChangBay]
GO
ALTER TABLE [dbo].[ChuyenBay]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenBay_MayBay] FOREIGN KEY([LoaiMayBay])
REFERENCES [dbo].[MayBay] ([LoaiMayBay])
GO
ALTER TABLE [dbo].[ChuyenBay] CHECK CONSTRAINT [FK_ChuyenBay_MayBay]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_HinhThucThanhToan] FOREIGN KEY([MaHinhThucTT])
REFERENCES [dbo].[HinhThucThanhToan] ([MaHinhThucTT])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_HinhThucThanhToan]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhuyenMai] FOREIGN KEY([MaKhuyenMai])
REFERENCES [dbo].[KhuyenMai] ([MaKhuyenMai])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhuyenMai]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_ThongTinXuatHoaDon] FOREIGN KEY([MaTTXuat])
REFERENCES [dbo].[ThongTinXuatHoaDon] ([MaTTXuat])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_ThongTinXuatHoaDon]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_Ve] FOREIGN KEY([MaVe])
REFERENCES [dbo].[Ve] ([MaVe])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_Ve]
GO
ALTER TABLE [dbo].[KhachHang_DatVe]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_DatVe_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[KhachHang_DatVe] CHECK CONSTRAINT [FK_KhachHang_DatVe_KhachHang]
GO
ALTER TABLE [dbo].[KhachHang_DatVe]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_DatVe_PhieuDatVe] FOREIGN KEY([MaPhieuDatVe])
REFERENCES [dbo].[PhieuDatVe] ([MaPhieuDatVe])
GO
ALTER TABLE [dbo].[KhachHang_DatVe] CHECK CONSTRAINT [FK_KhachHang_DatVe_PhieuDatVe]
GO
ALTER TABLE [dbo].[PhieuDatVe]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDatVe_ChuyenBay] FOREIGN KEY([MaChuyenBay])
REFERENCES [dbo].[ChuyenBay] ([MaChuyenBay])
GO
ALTER TABLE [dbo].[PhieuDatVe] CHECK CONSTRAINT [FK_PhieuDatVe_ChuyenBay]
GO
ALTER TABLE [dbo].[PhieuDatVe]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDatVe_LoaiVe] FOREIGN KEY([MaLoaiVe])
REFERENCES [dbo].[LoaiVe] ([MaLoaiVe])
GO
ALTER TABLE [dbo].[PhieuDatVe] CHECK CONSTRAINT [FK_PhieuDatVe_LoaiVe]
GO
ALTER TABLE [dbo].[PhieuDatVe_HanhLy]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDatVe_HanhLy_HanhLy] FOREIGN KEY([MaHanhLy])
REFERENCES [dbo].[HanhLy] ([MaHanhLy])
GO
ALTER TABLE [dbo].[PhieuDatVe_HanhLy] CHECK CONSTRAINT [FK_PhieuDatVe_HanhLy_HanhLy]
GO
ALTER TABLE [dbo].[PhieuDatVe_HanhLy]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDatVe_HanhLy_PhieuDatVe] FOREIGN KEY([MaPhieuDatVe])
REFERENCES [dbo].[PhieuDatVe] ([MaPhieuDatVe])
GO
ALTER TABLE [dbo].[PhieuDatVe_HanhLy] CHECK CONSTRAINT [FK_PhieuDatVe_HanhLy_PhieuDatVe]
GO
ALTER TABLE [dbo].[ThanhToan_NganHang]  WITH CHECK ADD  CONSTRAINT [FK_ThanhToan_NganHang_HinhThucThanhToan] FOREIGN KEY([MaHinhThucTT])
REFERENCES [dbo].[HinhThucThanhToan] ([MaHinhThucTT])
GO
ALTER TABLE [dbo].[ThanhToan_NganHang] CHECK CONSTRAINT [FK_ThanhToan_NganHang_HinhThucThanhToan]
GO
ALTER TABLE [dbo].[ThanhToan_NganHang]  WITH CHECK ADD  CONSTRAINT [FK_ThanhToan_NganHang_NganHang] FOREIGN KEY([MaNganHang])
REFERENCES [dbo].[NganHang] ([MaNganHang])
GO
ALTER TABLE [dbo].[ThanhToan_NganHang] CHECK CONSTRAINT [FK_ThanhToan_NganHang_NganHang]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_PhieuDatVe] FOREIGN KEY([MaPhieuDatVe])
REFERENCES [dbo].[PhieuDatVe] ([MaPhieuDatVe])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_PhieuDatVe]
GO
USE [master]
GO
ALTER DATABASE [DatVeMayBay] SET  READ_WRITE 
GO
