USE [WebDatPhong]
GO
/****** Object:  Table [dbo].[ChiTietDonDatPhong]    Script Date: 4/4/2019 6:10:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonDatPhong](
	[MaChiTiet] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiPhong] [int] NOT NULL,
	[MaDonDatPhong] [int] NOT NULL,
	[SoPhong] [int] NULL,
	[SoNguoi] [int] NULL,
 CONSTRAINT [PK_ChiTietDonDatPhong_1] PRIMARY KEY CLUSTERED 
(
	[MaChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietThanhToan]    Script Date: 4/4/2019 6:10:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietThanhToan](
	[MaChiTietThanhToan] [int] IDENTITY(1,1) NOT NULL,
	[MaPhongKhachHang] [int] NULL,
	[TienThanhToan] [int] NULL,
	[ThoiGianThanhToan] [datetime] NULL,
	[GhiChu] [nvarchar](500) NULL,
 CONSTRAINT [PK_ChiTietThanhToan] PRIMARY KEY CLUSTERED 
(
	[MaChiTietThanhToan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 4/4/2019 6:10:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[MaDichVu] [int] IDENTITY(1,1) NOT NULL,
	[TenDichVu] [nvarchar](500) NULL,
	[Gia] [int] NULL,
 CONSTRAINT [PK_DichVu] PRIMARY KEY CLUSTERED 
(
	[MaDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonDatPhong]    Script Date: 4/4/2019 6:10:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatPhong](
	[MaDonDatPhong] [int] IDENTITY(1,1) NOT NULL,
	[NgayDatPhong] [datetime] NULL,
	[NgayDen] [datetime] NULL,
	[NgayDi] [datetime] NULL,
	[TrangThai] [nvarchar](50) NULL,
	[NgaySuLy] [datetime] NULL,
	[MaTaiKhoan] [int] NULL,
	[HoTen] [nvarchar](250) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[Email] [nvarchar](250) NULL,
	[GhiChu] [nvarchar](500) NULL,
 CONSTRAINT [PK_DonDatPhong] PRIMARY KEY CLUSTERED 
(
	[MaDonDatPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachDiKem]    Script Date: 4/4/2019 6:10:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachDiKem](
	[MaKhachDiKem] [int] IDENTITY(1,1) NOT NULL,
	[MaPhongKhachHang] [int] NULL,
	[MaKhachHang] [int] NULL,
 CONSTRAINT [PK_KhachDiKem] PRIMARY KEY CLUSTERED 
(
	[MaKhachDiKem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/4/2019 6:10:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](150) NULL,
	[DiaChi] [nvarchar](500) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[SDT] [varchar](20) NULL,
	[Email] [varchar](150) NULL,
	[NgaySinh] [datetime] NULL,
	[CMTND] [varchar](50) NULL,
	[LoaiKhachHang] [int] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachSan]    Script Date: 4/4/2019 6:10:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachSan](
	[MaKhachSan] [int] IDENTITY(1,1) NOT NULL,
	[TenKhachSan] [nvarchar](500) NULL,
	[HinhAnh] [nvarchar](500) NULL,
	[DiaChi] [nvarchar](500) NULL,
	[Email] [varchar](150) NULL,
	[SDT] [varchar](20) NULL,
 CONSTRAINT [PK_KhachSan] PRIMARY KEY CLUSTERED 
(
	[MaKhachSan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 4/4/2019 6:10:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[MaLoaiPhong] [int] IDENTITY(1,1) NOT NULL,
	[SoGiuong] [int] NULL,
	[MoTa] [nvarchar](1000) NULL,
	[HinhAnh] [nvarchar](500) NULL,
	[DonGia] [int] NULL,
	[TenLoaiPhong] [nvarchar](150) NULL,
	[MaKhachSan] [int] NULL,
 CONSTRAINT [PK_LoaiPhong] PRIMARY KEY CLUSTERED 
(
	[MaLoaiPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 4/4/2019 6:10:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[MaQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](500) NULL,
	[DanhSach] [nvarchar](500) NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phong]    Script Date: 4/4/2019 6:10:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [int] IDENTITY(1,1) NOT NULL,
	[TenPhong] [nvarchar](50) NULL,
	[MaLoaiPhong] [int] NOT NULL,
	[ViTri] [nvarchar](500) NULL,
	[TrangThai] [nvarchar](100) NULL,
 CONSTRAINT [PK_Phong_1] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhongKhachHang]    Script Date: 4/4/2019 6:10:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongKhachHang](
	[MaPhongKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[MaPhong] [int] NULL,
	[MaKhachHang] [int] NULL,
	[NgayDen] [datetime] NULL,
	[NgayDi] [datetime] NULL,
	[NgayDuKienDi] [datetime] NULL,
	[TrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhongKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaPhongKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SuDungDichVu]    Script Date: 4/4/2019 6:10:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuDungDichVu](
	[MaSuDungDichVu] [int] IDENTITY(1,1) NOT NULL,
	[MaPhongKhachHang] [int] NULL,
	[SoLuong] [int] NULL,
	[MaDichVu] [int] NULL,
	[ThoiGianSuDung] [datetime] NULL,
 CONSTRAINT [PK_SuDungDichVu] PRIMARY KEY CLUSTERED 
(
	[MaSuDungDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 4/4/2019 6:10:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [varchar](100) NULL,
	[MatKhau] [varchar](100) NULL,
	[HoTen] [nvarchar](150) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[NgaySinh] [datetime] NULL,
	[Email] [varchar](150) NULL,
	[SDT] [varchar](20) NULL,
	[MaQuyen] [int] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TienNghi]    Script Date: 4/4/2019 6:10:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TienNghi](
	[MaTienNghi] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiPhong] [int] NULL,
	[TenTienNghi] [nvarchar](250) NULL,
 CONSTRAINT [PK_TienNghi] PRIMARY KEY CLUSTERED 
(
	[MaTienNghi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 4/4/2019 6:10:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[MaTinTuc] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](250) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](500) NULL,
	[NgayDang] [datetime] NULL,
	[MaTaiKhoan] [int] NULL,
 CONSTRAINT [PK_TinTuc] PRIMARY KEY CLUSTERED 
(
	[MaTinTuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ChiTietDonDatPhong] ON 

INSERT [dbo].[ChiTietDonDatPhong] ([MaChiTiet], [MaLoaiPhong], [MaDonDatPhong], [SoPhong], [SoNguoi]) VALUES (1, 1, 2, 1, 3)
INSERT [dbo].[ChiTietDonDatPhong] ([MaChiTiet], [MaLoaiPhong], [MaDonDatPhong], [SoPhong], [SoNguoi]) VALUES (3, 1, 3, 1, 2)
INSERT [dbo].[ChiTietDonDatPhong] ([MaChiTiet], [MaLoaiPhong], [MaDonDatPhong], [SoPhong], [SoNguoi]) VALUES (4, 1, 4, 1, 2)
SET IDENTITY_INSERT [dbo].[ChiTietDonDatPhong] OFF
SET IDENTITY_INSERT [dbo].[ChiTietThanhToan] ON 

INSERT [dbo].[ChiTietThanhToan] ([MaChiTietThanhToan], [MaPhongKhachHang], [TienThanhToan], [ThoiGianThanhToan], [GhiChu]) VALUES (1, 6, 1500000, CAST(0x0000AA25005BF7E6 AS DateTime), N'Thanh toán tiền thuê phòng')
INSERT [dbo].[ChiTietThanhToan] ([MaChiTietThanhToan], [MaPhongKhachHang], [TienThanhToan], [ThoiGianThanhToan], [GhiChu]) VALUES (2, 7, 1450000, CAST(0x0000AA2500615816 AS DateTime), N'Thanh toán tiền thuê phòng')
SET IDENTITY_INSERT [dbo].[ChiTietThanhToan] OFF
SET IDENTITY_INSERT [dbo].[DichVu] ON 

INSERT [dbo].[DichVu] ([MaDichVu], [TenDichVu], [Gia]) VALUES (1, N'Nước khoáng (chai)', 10000)
INSERT [dbo].[DichVu] ([MaDichVu], [TenDichVu], [Gia]) VALUES (2, N'Giặt là (bộ)', 50000)
SET IDENTITY_INSERT [dbo].[DichVu] OFF
SET IDENTITY_INSERT [dbo].[DonDatPhong] ON 

INSERT [dbo].[DonDatPhong] ([MaDonDatPhong], [NgayDatPhong], [NgayDen], [NgayDi], [TrangThai], [NgaySuLy], [MaTaiKhoan], [HoTen], [SoDienThoai], [Email], [GhiChu]) VALUES (2, CAST(0x0000AA2400E4D44F AS DateTime), CAST(0x0000AA2500000000 AS DateTime), CAST(0x0000AA2600000000 AS DateTime), N'Xác nhận đặt phòng', CAST(0x0000AA25003EE79E AS DateTime), 1, N'Hoàng Anh', N'0987543223', N'hoanganh@gmail.com', N'Sạch sẽ')
INSERT [dbo].[DonDatPhong] ([MaDonDatPhong], [NgayDatPhong], [NgayDen], [NgayDi], [TrangThai], [NgaySuLy], [MaTaiKhoan], [HoTen], [SoDienThoai], [Email], [GhiChu]) VALUES (3, CAST(0x0000AA25005A3249 AS DateTime), CAST(0x0000AA2600000000 AS DateTime), CAST(0x0000AA2700000000 AS DateTime), N'Xác nhận đặt phòng', CAST(0x0000AA25005B7DF7 AS DateTime), 1, N'Hoàng Anh Tuấn', N'0987543223', N'ngoanhhoang@gmail.com', N'Ki')
INSERT [dbo].[DonDatPhong] ([MaDonDatPhong], [NgayDatPhong], [NgayDen], [NgayDi], [TrangThai], [NgaySuLy], [MaTaiKhoan], [HoTen], [SoDienThoai], [Email], [GhiChu]) VALUES (4, CAST(0x0000AA25005F7373 AS DateTime), CAST(0x0000AA2600000000 AS DateTime), CAST(0x0000AA2700000000 AS DateTime), N'Mới', NULL, 1, N'Hoàng Anh Tuấn', N'0987543223', N'ngoanhhoang@gmail.com', N'Tel')
SET IDENTITY_INSERT [dbo].[DonDatPhong] OFF
SET IDENTITY_INSERT [dbo].[KhachDiKem] ON 

INSERT [dbo].[KhachDiKem] ([MaKhachDiKem], [MaPhongKhachHang], [MaKhachHang]) VALUES (2, 1, 2)
SET IDENTITY_INSERT [dbo].[KhachDiKem] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiaChi], [GioiTinh], [SDT], [Email], [NgaySinh], [CMTND], [LoaiKhachHang]) VALUES (1, N'Nguyen Van Anh', NULL, N'Nam', N'0987676654', N'anh@gmail.com', CAST(0x0000850D00000000 AS DateTime), N'223125151', 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiaChi], [GioiTinh], [SDT], [Email], [NgaySinh], [CMTND], [LoaiKhachHang]) VALUES (2, N'Nguyen Van Minh', NULL, N'Nam', N'0987777755', N'minh@gmail.com', CAST(0x00008AC200000000 AS DateTime), N'34344555634', 1)
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [DiaChi], [GioiTinh], [SDT], [Email], [NgaySinh], [CMTND], [LoaiKhachHang]) VALUES (3, N'Nguyễn Kim', NULL, N'Nữ', N'098765432', N'kienlt147@gmail.com', CAST(0x0000823200000000 AS DateTime), N'34344555634', 1)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[KhachSan] ON 

INSERT [dbo].[KhachSan] ([MaKhachSan], [TenKhachSan], [HinhAnh], [DiaChi], [Email], [SDT]) VALUES (1, N'Luxury Nha Trang Hotel', N'/Uploads/files/luxury1.jpg', N'24 Tran Phu, Nha Trang, Viet Nam', N'info@luxurynhatrang.com.vn', N'+(84 58) 3527158')
SET IDENTITY_INSERT [dbo].[KhachSan] OFF
SET IDENTITY_INSERT [dbo].[LoaiPhong] ON 

INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [SoGiuong], [MoTa], [HinhAnh], [DonGia], [TenLoaiPhong], [MaKhachSan]) VALUES (1, 1, N'Chất lượng tuyệt vời', N'/Content/images/luxury_nha_trang_st.jpg', 1400000, N'PHÒNG STANDARD', 1)
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [SoGiuong], [MoTa], [HinhAnh], [DonGia], [TenLoaiPhong], [MaKhachSan]) VALUES (2, 2, N'1 giường đôi BDL/ 1 giường đơn+1 giường đôi (TPL) / hoặc 2 giường đơn (TWN) ( hướng thành phố )', N'/Uploads/files/luxury_nha_trang_sup.jpg', 1700000, N'PHÒNG SUPERIOR', 1)
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [SoGiuong], [MoTa], [HinhAnh], [DonGia], [TenLoaiPhong], [MaKhachSan]) VALUES (3, 2, N'1 giường đôi BDL/ 1 giường đơn+1 giường đôi (TPL) / hoặc 2 giường đơn (TWN) ( hướng biển và thành phố ban công riêng)', N'/Uploads/files/luxury_nha_trang_dl.jpg', 2000000, N'PHÒNG DELUXE', 1)
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [SoGiuong], [MoTa], [HinhAnh], [DonGia], [TenLoaiPhong], [MaKhachSan]) VALUES (4, 2, N'1 giường đôi BDL/ 1 giường đơn+1 giường đôi (TPL) / hoặc 2 giường đơn (TWN) ( hướng biển và thành phố, ban công riêng )', N'/Uploads/files/luxury_nha_trang_dn.jpg', 2200000, N'PHÒNG SENIOR DELUXE', 1)
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [SoGiuong], [MoTa], [HinhAnh], [DonGia], [TenLoaiPhong], [MaKhachSan]) VALUES (5, 1, N'1 giường đôi ( King size, hướng thẳng biển và thành phố )', N'/Uploads/files/luxury_nha_trang_ls.jpg', 2900000, N'PHÒNG LUXURY SUITE', 1)
SET IDENTITY_INSERT [dbo].[LoaiPhong] OFF
SET IDENTITY_INSERT [dbo].[PhanQuyen] ON 

INSERT [dbo].[PhanQuyen] ([MaQuyen], [TenQuyen], [DanhSach]) VALUES (1, N'Admin', N',Quyền,Tài khoản,Khách hàng,Tin tức,Khách sạn,Loại phòng,Phòng,Dịch vụ,Đơn đặt phòng,Book phòng,Hóa đơn,Báo cáo,Thống kê,')
INSERT [dbo].[PhanQuyen] ([MaQuyen], [TenQuyen], [DanhSach]) VALUES (2, N'Nhân viên', N',Khách hàng,Tin tức,Book phòng,')
INSERT [dbo].[PhanQuyen] ([MaQuyen], [TenQuyen], [DanhSach]) VALUES (3, N'Quản lý', N',Khách hàng,Tin tức,Khách sạn,Loại phòng,Phòng,')
SET IDENTITY_INSERT [dbo].[PhanQuyen] OFF
SET IDENTITY_INSERT [dbo].[Phong] ON 

INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MaLoaiPhong], [ViTri], [TrangThai]) VALUES (1, N'P101', 1, N'Tầng 1, nhìn ra biển', N'Chưa sử dụng')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MaLoaiPhong], [ViTri], [TrangThai]) VALUES (2, N'P102', 1, N'Tầng 1, nhìn ra biển', N'Đang dọn')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MaLoaiPhong], [ViTri], [TrangThai]) VALUES (3, N'P103', 1, N'Tầng 1, nhìn ra biển', N'Đang dọn')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MaLoaiPhong], [ViTri], [TrangThai]) VALUES (4, N'P104', 1, N'Tầng 1, nhìn ra biển', N'Đang dọn')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MaLoaiPhong], [ViTri], [TrangThai]) VALUES (5, N'P201', 1, N'Tầng 2, nhìn ra biển', N'Đang dọn')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MaLoaiPhong], [ViTri], [TrangThai]) VALUES (6, N'P202', 1, N'Tầng 2, nhìn ra biển', N'Chưa sử dụng')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MaLoaiPhong], [ViTri], [TrangThai]) VALUES (7, N'P203', 1, N'Tầng 2, nhìn ra biển', N'Chưa sử dụng')
INSERT [dbo].[Phong] ([MaPhong], [TenPhong], [MaLoaiPhong], [ViTri], [TrangThai]) VALUES (8, N'P204', 1, N'Tầng 2, nhìn ra biển', N'Chưa sử dụng')
SET IDENTITY_INSERT [dbo].[Phong] OFF
SET IDENTITY_INSERT [dbo].[PhongKhachHang] ON 

INSERT [dbo].[PhongKhachHang] ([MaPhongKhachHang], [MaPhong], [MaKhachHang], [NgayDen], [NgayDi], [NgayDuKienDi], [TrangThai]) VALUES (1, 1, 1, CAST(0x0000AA25000E020C AS DateTime), CAST(0x0000AA25002BCAC7 AS DateTime), CAST(0x0000AA2600000000 AS DateTime), N'Đã thanh toán')
INSERT [dbo].[PhongKhachHang] ([MaPhongKhachHang], [MaPhong], [MaKhachHang], [NgayDen], [NgayDi], [NgayDuKienDi], [TrangThai]) VALUES (2, 2, 1, CAST(0x0000AA25002C9306 AS DateTime), CAST(0x0000AA25002EF094 AS DateTime), CAST(0x0000AA2600000000 AS DateTime), N'Đã thanh toán')
INSERT [dbo].[PhongKhachHang] ([MaPhongKhachHang], [MaPhong], [MaKhachHang], [NgayDen], [NgayDi], [NgayDuKienDi], [TrangThai]) VALUES (3, 3, 2, CAST(0x0000AA25002F6164 AS DateTime), CAST(0x0000AA25002F6AA1 AS DateTime), CAST(0x0000AA2600000000 AS DateTime), N'Đã thanh toán')
INSERT [dbo].[PhongKhachHang] ([MaPhongKhachHang], [MaPhong], [MaKhachHang], [NgayDen], [NgayDi], [NgayDuKienDi], [TrangThai]) VALUES (4, 4, 1, CAST(0x0000AA25002FCD8A AS DateTime), CAST(0x0000AA25002FE347 AS DateTime), CAST(0x0000AA2600000000 AS DateTime), N'Đã thanh toán')
INSERT [dbo].[PhongKhachHang] ([MaPhongKhachHang], [MaPhong], [MaKhachHang], [NgayDen], [NgayDi], [NgayDuKienDi], [TrangThai]) VALUES (6, 5, 1, CAST(0x0000AA25005BAE03 AS DateTime), CAST(0x0000AA25005BF7DD AS DateTime), CAST(0x0000AA2700000000 AS DateTime), N'Đã thanh toán')
INSERT [dbo].[PhongKhachHang] ([MaPhongKhachHang], [MaPhong], [MaKhachHang], [NgayDen], [NgayDi], [NgayDuKienDi], [TrangThai]) VALUES (7, 1, 3, CAST(0x0000AA2500611874 AS DateTime), CAST(0x0000AA2500615806 AS DateTime), CAST(0x0000AA2700000000 AS DateTime), N'Đã thanh toán')
SET IDENTITY_INSERT [dbo].[PhongKhachHang] OFF
SET IDENTITY_INSERT [dbo].[SuDungDichVu] ON 

INSERT [dbo].[SuDungDichVu] ([MaSuDungDichVu], [MaPhongKhachHang], [SoLuong], [MaDichVu], [ThoiGianSuDung]) VALUES (2, 1, 1, 2, CAST(0x0000AA250015996B AS DateTime))
INSERT [dbo].[SuDungDichVu] ([MaSuDungDichVu], [MaPhongKhachHang], [SoLuong], [MaDichVu], [ThoiGianSuDung]) VALUES (3, 2, 1, 1, CAST(0x0000AA25002EC4E1 AS DateTime))
INSERT [dbo].[SuDungDichVu] ([MaSuDungDichVu], [MaPhongKhachHang], [SoLuong], [MaDichVu], [ThoiGianSuDung]) VALUES (4, 6, 2, 2, CAST(0x0000AA25005BC27C AS DateTime))
INSERT [dbo].[SuDungDichVu] ([MaSuDungDichVu], [MaPhongKhachHang], [SoLuong], [MaDichVu], [ThoiGianSuDung]) VALUES (5, 7, 1, 2, CAST(0x0000AA25006125D0 AS DateTime))
SET IDENTITY_INSERT [dbo].[SuDungDichVu] OFF
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [Email], [SDT], [MaQuyen]) VALUES (1, N'admin', N'123', N'Admin', N'Nam', CAST(0x000087D400000000 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [Email], [SDT], [MaQuyen]) VALUES (2, N'anh', N'123', N'Nguyen Van', N'Nam', CAST(0x0000867A00000000 AS DateTime), N'van@gmail.com', N'098765432', 2)
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [HoTen], [GioiTinh], [NgaySinh], [Email], [SDT], [MaQuyen]) VALUES (3, N'kim', N'123', N'Nguyễn Kim', N'Nữ', CAST(0x00008DAE00000000 AS DateTime), N'kim@gmail.com', N'0987765555', 2)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
SET IDENTITY_INSERT [dbo].[TienNghi] ON 

INSERT [dbo].[TienNghi] ([MaTienNghi], [MaLoaiPhong], [TenTienNghi]) VALUES (1, 1, N'Diện tích: 22m2')
INSERT [dbo].[TienNghi] ([MaTienNghi], [MaLoaiPhong], [TenTienNghi]) VALUES (2, 1, N'1 Giường đôi')
INSERT [dbo].[TienNghi] ([MaTienNghi], [MaLoaiPhong], [TenTienNghi]) VALUES (3, 1, N'Tivi LCD')
INSERT [dbo].[TienNghi] ([MaTienNghi], [MaLoaiPhong], [TenTienNghi]) VALUES (4, 1, N'Truyền hình cáp')
INSERT [dbo].[TienNghi] ([MaTienNghi], [MaLoaiPhong], [TenTienNghi]) VALUES (5, 1, N'Tủ lạnh')
INSERT [dbo].[TienNghi] ([MaTienNghi], [MaLoaiPhong], [TenTienNghi]) VALUES (6, 1, N'Máy lạnh')
INSERT [dbo].[TienNghi] ([MaTienNghi], [MaLoaiPhong], [TenTienNghi]) VALUES (7, 1, N'Bình nấu nước nóng')
INSERT [dbo].[TienNghi] ([MaTienNghi], [MaLoaiPhong], [TenTienNghi]) VALUES (8, 1, N'Tủ quần áo')
INSERT [dbo].[TienNghi] ([MaTienNghi], [MaLoaiPhong], [TenTienNghi]) VALUES (9, 1, N'Bàn trang điểm')
INSERT [dbo].[TienNghi] ([MaTienNghi], [MaLoaiPhong], [TenTienNghi]) VALUES (10, 1, N'Bồn tắm')
INSERT [dbo].[TienNghi] ([MaTienNghi], [MaLoaiPhong], [TenTienNghi]) VALUES (11, 1, N'Nước khoáng 1 chai /ngày')
SET IDENTITY_INSERT [dbo].[TienNghi] OFF
SET IDENTITY_INSERT [dbo].[TinTuc] ON 

INSERT [dbo].[TinTuc] ([MaTinTuc], [TieuDe], [NoiDung], [HinhAnh], [NgayDang], [MaTaiKhoan]) VALUES (1, N'Khách sạn số 1 Nha Trang đẹp', N'<p>
	Kh&aacute;ch sạn số 1 Nha Trang</p>
<p>
	Kh&aacute;ch sạn số 1 Nha Trang</p>
<p>
	Kh&aacute;ch sạn số 1 Nha Trang</p>
<p>
	Kh&aacute;ch sạn số 1 Nha Trang</p>
<p>
	Kh&aacute;ch sạn số 1 Nha Trang</p>
<p>
	Kh&aacute;ch sạn số 1 Nha Trang</p>
<p>
	Kh&aacute;ch sạn số 1 Nha Trang</p>
<p>
	Kh&aacute;ch sạn số 1 Nha Trang</p>
<p>
	Kh&aacute;ch sạn số 1 Nha Trang</p>
', N'/Uploads/files/luxury1.jpg', CAST(0x0000A8B700000000 AS DateTime), 1)
INSERT [dbo].[TinTuc] ([MaTinTuc], [TieuDe], [NoiDung], [HinhAnh], [NgayDang], [MaTaiKhoan]) VALUES (2, N'Khách sạn số 1 Nha Trang', N'<p>Khách sạn số 1 Nha Trang</p>', N'/Content/images/index_blog_1.jpg', CAST(0x0000A8B700000000 AS DateTime), 1)
INSERT [dbo].[TinTuc] ([MaTinTuc], [TieuDe], [NoiDung], [HinhAnh], [NgayDang], [MaTaiKhoan]) VALUES (3, N'Khách sạn số 1 Nha Trang', N'<p>Khách sạn số 1 Nha Trang</p>', N'/Content/images/index_blog_1.jpg', CAST(0x0000A8B700000000 AS DateTime), 1)
INSERT [dbo].[TinTuc] ([MaTinTuc], [TieuDe], [NoiDung], [HinhAnh], [NgayDang], [MaTaiKhoan]) VALUES (4, N'Khách sạn số 1 Nha Trang', N'<p>Khách sạn số 1 Nha Trang</p>', N'/Content/images/index_blog_1.jpg', CAST(0x0000A8B700000000 AS DateTime), 1)
INSERT [dbo].[TinTuc] ([MaTinTuc], [TieuDe], [NoiDung], [HinhAnh], [NgayDang], [MaTaiKhoan]) VALUES (5, N'Khách sạn số 1 Nha Trang', N'<p>Khách sạn số 1 Nha Trang</p>', N'/Content/images/index_blog_1.jpg', CAST(0x0000A8B700000000 AS DateTime), 1)
INSERT [dbo].[TinTuc] ([MaTinTuc], [TieuDe], [NoiDung], [HinhAnh], [NgayDang], [MaTaiKhoan]) VALUES (6, N'Khách sạn số 1 Nha Trang', N'<p>Khách sạn số 1 Nha Trang</p>', N'/Content/images/index_blog_1.jpg', CAST(0x0000A8B700000000 AS DateTime), 1)
INSERT [dbo].[TinTuc] ([MaTinTuc], [TieuDe], [NoiDung], [HinhAnh], [NgayDang], [MaTaiKhoan]) VALUES (7, N'Khách sạn số 1 Nha Trang về đêm', N'<p>
	Kh&aacute;ch sạn số 1 Nha Trang</p>
', N'/Uploads/files/luxury2.jpg', CAST(0x0000A8B700000000 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[TinTuc] OFF
ALTER TABLE [dbo].[ChiTietDonDatPhong]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatPhong_DonDatPhong] FOREIGN KEY([MaDonDatPhong])
REFERENCES [dbo].[DonDatPhong] ([MaDonDatPhong])
GO
ALTER TABLE [dbo].[ChiTietDonDatPhong] CHECK CONSTRAINT [FK_ChiTietDonDatPhong_DonDatPhong]
GO
ALTER TABLE [dbo].[ChiTietDonDatPhong]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatPhong_LoaiPhong] FOREIGN KEY([MaLoaiPhong])
REFERENCES [dbo].[LoaiPhong] ([MaLoaiPhong])
GO
ALTER TABLE [dbo].[ChiTietDonDatPhong] CHECK CONSTRAINT [FK_ChiTietDonDatPhong_LoaiPhong]
GO
ALTER TABLE [dbo].[ChiTietThanhToan]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietThanhToan_PhongKhachHang] FOREIGN KEY([MaPhongKhachHang])
REFERENCES [dbo].[PhongKhachHang] ([MaPhongKhachHang])
GO
ALTER TABLE [dbo].[ChiTietThanhToan] CHECK CONSTRAINT [FK_ChiTietThanhToan_PhongKhachHang]
GO
ALTER TABLE [dbo].[DonDatPhong]  WITH CHECK ADD  CONSTRAINT [FK_DonDatPhong_TaiKhoan] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[DonDatPhong] CHECK CONSTRAINT [FK_DonDatPhong_TaiKhoan]
GO
ALTER TABLE [dbo].[KhachDiKem]  WITH CHECK ADD  CONSTRAINT [FK_KhachDiKem_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[KhachDiKem] CHECK CONSTRAINT [FK_KhachDiKem_KhachHang]
GO
ALTER TABLE [dbo].[KhachDiKem]  WITH CHECK ADD  CONSTRAINT [FK_KhachDiKem_PhongKhachHang] FOREIGN KEY([MaPhongKhachHang])
REFERENCES [dbo].[PhongKhachHang] ([MaPhongKhachHang])
GO
ALTER TABLE [dbo].[KhachDiKem] CHECK CONSTRAINT [FK_KhachDiKem_PhongKhachHang]
GO
ALTER TABLE [dbo].[LoaiPhong]  WITH CHECK ADD  CONSTRAINT [FK_LoaiPhong_KhachSan] FOREIGN KEY([MaKhachSan])
REFERENCES [dbo].[KhachSan] ([MaKhachSan])
GO
ALTER TABLE [dbo].[LoaiPhong] CHECK CONSTRAINT [FK_LoaiPhong_KhachSan]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_LoaiPhong] FOREIGN KEY([MaLoaiPhong])
REFERENCES [dbo].[LoaiPhong] ([MaLoaiPhong])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_LoaiPhong]
GO
ALTER TABLE [dbo].[PhongKhachHang]  WITH CHECK ADD  CONSTRAINT [FK_PhongKhachHang_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[PhongKhachHang] CHECK CONSTRAINT [FK_PhongKhachHang_KhachHang]
GO
ALTER TABLE [dbo].[PhongKhachHang]  WITH CHECK ADD  CONSTRAINT [FK_PhongKhachHang_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[PhongKhachHang] CHECK CONSTRAINT [FK_PhongKhachHang_Phong]
GO
ALTER TABLE [dbo].[SuDungDichVu]  WITH CHECK ADD  CONSTRAINT [FK_SuDungDichVu_DichVu] FOREIGN KEY([MaDichVu])
REFERENCES [dbo].[DichVu] ([MaDichVu])
GO
ALTER TABLE [dbo].[SuDungDichVu] CHECK CONSTRAINT [FK_SuDungDichVu_DichVu]
GO
ALTER TABLE [dbo].[SuDungDichVu]  WITH CHECK ADD  CONSTRAINT [FK_SuDungDichVu_PhongKhachHang] FOREIGN KEY([MaPhongKhachHang])
REFERENCES [dbo].[PhongKhachHang] ([MaPhongKhachHang])
GO
ALTER TABLE [dbo].[SuDungDichVu] CHECK CONSTRAINT [FK_SuDungDichVu_PhongKhachHang]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_PhanQuyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[PhanQuyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_PhanQuyen]
GO
ALTER TABLE [dbo].[TienNghi]  WITH CHECK ADD  CONSTRAINT [FK_TienNghi_LoaiPhong] FOREIGN KEY([MaLoaiPhong])
REFERENCES [dbo].[LoaiPhong] ([MaLoaiPhong])
GO
ALTER TABLE [dbo].[TienNghi] CHECK CONSTRAINT [FK_TienNghi_LoaiPhong]
GO
ALTER TABLE [dbo].[TinTuc]  WITH CHECK ADD  CONSTRAINT [FK_TinTuc_TaiKhoan] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[TinTuc] CHECK CONSTRAINT [FK_TinTuc_TaiKhoan]
GO
