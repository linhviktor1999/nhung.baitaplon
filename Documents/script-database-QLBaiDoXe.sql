CREATE DATABASE [QLBaiDoXe]
USE [QLBaiDoXe]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 11/06/2021 10:54:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaCV] [char](10) NOT NULL,
	[TenCV] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaVe]    Script Date: 11/06/2021 10:54:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaVe](
	[MaGiaVe] [char](10) NOT NULL,
	[TenGiaVe] [nvarchar](30) NULL,
	[GiaTien] [float] NULL,
	[MaLoaiXe] [char](10) NULL,
	[GioToiThieu] [int] NULL,
	[GioToiDa] [int] NULL,
	[UuDai] [int] NULL,
	[VeThang] [bit] NULL,
	[SoThang] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGiaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/06/2021 10:54:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [char](10) NOT NULL,
	[TenKH] [nvarchar](30) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[CMND] [char](20) NULL,
	[SDT] [char](15) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[NgayHetHanVeThang] [datetime] NULL,
	[MaXe] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiXe]    Script Date: 11/06/2021 10:54:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiXe](
	[MaLoaiXe] [char](10) NOT NULL,
	[TenLoaiXe] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/06/2021 10:54:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [char](10) NOT NULL,
	[TenNV] [nvarchar](30) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[CMND] [char](20) NULL,
	[SDT] [char](15) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[MaCV] [char](10) NULL,
	[Luong] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuThanhToan]    Script Date: 11/06/2021 10:54:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuThanhToan](
	[MaPhieu] [int] IDENTITY(1,1) NOT NULL,
	[MaXe] [char](10) NULL,
	[GioVao] [datetime] NULL,
	[GioRa] [datetime] NULL,
	[TienThu] [float] NULL,
	[TraTheoThang] [bit] NULL,
	[MaNV] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 11/06/2021 10:54:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TaiKhoan] [char](30) NOT NULL,
	[MatKhau] [char](30) NULL,
	[MaNV] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheGuiXe]    Script Date: 11/06/2021 10:54:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheGuiXe](
	[MaTheGuiXe] [char](10) NOT NULL,
	[MaXe] [char](10) NULL,
	[GioVao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTheGuiXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ViTri]    Script Date: 11/06/2021 10:54:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ViTri](
	[MaViTri] [char](10) NOT NULL,
	[TenViTri] [nvarchar](30) NULL,
	[MaXe] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaViTri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Xe]    Script Date: 11/06/2021 10:54:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Xe](
	[MaXe] [char](10) NOT NULL,
	[BienSo] [char](20) NULL,
	[TenXe] [nvarchar](30) NULL,
	[MauSac] [nvarchar](20) NULL,
	[MaLoaiXe] [char](10) NULL,
	[DangKyThang] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChucVu] ([MaCV], [TenCV]) VALUES (N'CV01      ', N'Người quản lý')
INSERT [dbo].[ChucVu] ([MaCV], [TenCV]) VALUES (N'CV02      ', N'Nhân viên giữ xe')
INSERT [dbo].[GiaVe] ([MaGiaVe], [TenGiaVe], [GiaTien], [MaLoaiXe], [GioToiThieu], [GioToiDa], [UuDai], [VeThang], [SoThang]) VALUES (N'GV01      ', N'Vé gửi xe máy L1', 5000, N'LXM       ', 0, 4, 0, 0, 0)
INSERT [dbo].[GiaVe] ([MaGiaVe], [TenGiaVe], [GiaTien], [MaLoaiXe], [GioToiThieu], [GioToiDa], [UuDai], [VeThang], [SoThang]) VALUES (N'GV02      ', N'Vé gửi xe máy L2', 8000, N'LXM       ', 4, 8, 0, 0, 0)
INSERT [dbo].[GiaVe] ([MaGiaVe], [TenGiaVe], [GiaTien], [MaLoaiXe], [GioToiThieu], [GioToiDa], [UuDai], [VeThang], [SoThang]) VALUES (N'GV03      ', N'Vé gửi ô tô L1', 10000, N'LXO       ', 0, 4, 0, 0, 0)
INSERT [dbo].[GiaVe] ([MaGiaVe], [TenGiaVe], [GiaTien], [MaLoaiXe], [GioToiThieu], [GioToiDa], [UuDai], [VeThang], [SoThang]) VALUES (N'GV04      ', N'Vé gửi ô tô L2', 15000, N'LXO       ', 4, 8, 0, 0, 0)
INSERT [dbo].[GiaVe] ([MaGiaVe], [TenGiaVe], [GiaTien], [MaLoaiXe], [GioToiThieu], [GioToiDa], [UuDai], [VeThang], [SoThang]) VALUES (N'GV05      ', N'Vé 1 Tháng xe máy', 120000, N'LXM       ', 0, 0, 0, 1, 1)
INSERT [dbo].[GiaVe] ([MaGiaVe], [TenGiaVe], [GiaTien], [MaLoaiXe], [GioToiThieu], [GioToiDa], [UuDai], [VeThang], [SoThang]) VALUES (N'GV06      ', N'Vé 1 tháng ô tô', 250000, N'LXO       ', 0, 0, 0, 1, 1)
INSERT [dbo].[GiaVe] ([MaGiaVe], [TenGiaVe], [GiaTien], [MaLoaiXe], [GioToiThieu], [GioToiDa], [UuDai], [VeThang], [SoThang]) VALUES (N'GV07      ', N'Vé 6 tháng xe máy', 720000, N'LXM       ', 0, 0, 10, 1, 6)
INSERT [dbo].[GiaVe] ([MaGiaVe], [TenGiaVe], [GiaTien], [MaLoaiXe], [GioToiThieu], [GioToiDa], [UuDai], [VeThang], [SoThang]) VALUES (N'GV08      ', N'Vé 6 tháng ô tô', 1500000, N'LXO       ', 0, 0, 10, 1, 6)
INSERT [dbo].[GiaVe] ([MaGiaVe], [TenGiaVe], [GiaTien], [MaLoaiXe], [GioToiThieu], [GioToiDa], [UuDai], [VeThang], [SoThang]) VALUES (N'GV09      ', N'Vé 12 tháng ô tô', 3000000, N'LXO       ', 0, 0, 20, 1, 12)
INSERT [dbo].[GiaVe] ([MaGiaVe], [TenGiaVe], [GiaTien], [MaLoaiXe], [GioToiThieu], [GioToiDa], [UuDai], [VeThang], [SoThang]) VALUES (N'GV10      ', N'Vé 12 tháng xe máy', 1440000, N'LXM       ', 0, 0, 20, 1, 12)
INSERT [dbo].[GiaVe] ([MaGiaVe], [TenGiaVe], [GiaTien], [MaLoaiXe], [GioToiThieu], [GioToiDa], [UuDai], [VeThang], [SoThang]) VALUES (N'GV11      ', N'Vé ô tô L3', 25000, N'LXO       ', 8, 24, 0, 0, 0)
INSERT [dbo].[GiaVe] ([MaGiaVe], [TenGiaVe], [GiaTien], [MaLoaiXe], [GioToiThieu], [GioToiDa], [UuDai], [VeThang], [SoThang]) VALUES (N'GV12      ', N'Vé xe máy L3', 15000, N'LXM       ', 8, 24, 0, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [CMND], [SDT], [DiaChi], [NgayHetHanVeThang], [MaXe]) VALUES (N'KH01      ', N'Phạm Văn Bách', CAST(N'1994-06-15' AS Date), N'Nam', N'023456789           ', N'0928373310     ', N'7/2B Quang Trung2', CAST(N'2022-01-15T00:00:00.000' AS DateTime), N'XO01      ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [CMND], [SDT], [DiaChi], [NgayHetHanVeThang], [MaXe]) VALUES (N'KH02      ', N'Minh Tâm', CAST(N'1993-07-20' AS Date), N'Nữ', N'029284565           ', N'0903726299     ', N'11/2 Trịnh Hoài Đức', CAST(N'2021-06-22T11:34:57.000' AS DateTime), N'XM123     ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [CMND], [SDT], [DiaChi], [NgayHetHanVeThang], [MaXe]) VALUES (N'KH022     ', N'Nguyễn Hoàng Anh', CAST(N'1994-08-04' AS Date), N'Nam', N'018292839           ', N'0984726475     ', N'73/2A Lê Văn Việt', CAST(N'2022-05-22T12:02:40.000' AS DateTime), N'45        ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [CMND], [SDT], [DiaChi], [NgayHetHanVeThang], [MaXe]) VALUES (N'KH11      ', N'Phạm Anh Khoa', CAST(N'1994-08-18' AS Date), N'Nam', N'012345678           ', N'0908374647     ', N'76 Ngô Quyền', CAST(N'2022-05-15T18:40:31.000' AS DateTime), N'MX11      ')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [NgaySinh], [GioiTinh], [CMND], [SDT], [DiaChi], [NgayHetHanVeThang], [MaXe]) VALUES (N'KH12      ', N'Trần Thu Hà', CAST(N'1994-10-05' AS Date), N'Nữ', N'018892837           ', N'0904857387     ', N'110 Khổng Tử', CAST(N'2022-02-15T00:00:00.000' AS DateTime), N'XM11      ')
INSERT [dbo].[LoaiXe] ([MaLoaiXe], [TenLoaiXe]) VALUES (N'LXM       ', N'Xe máy')
INSERT [dbo].[LoaiXe] ([MaLoaiXe], [TenLoaiXe]) VALUES (N'LXO       ', N'Xe ô tô')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [CMND], [SDT], [DiaChi], [MaCV], [Luong]) VALUES (N'NV01      ', N'Nguyễn Quốc Tiến', CAST(N'1998-04-23' AS Date), N'Nam', N'023674736           ', N'0982427541     ', N'36C/41 Đường 16', N'CV01      ', 10000)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [CMND], [SDT], [DiaChi], [MaCV], [Luong]) VALUES (N'NV02      ', N'Nguyễn Như Bảo Phương', CAST(N'2000-02-20' AS Date), N'Nữ', N'023809203           ', N'0908527066     ', N'ở đường Lam Sơn', N'CV02      ', 9000)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [CMND], [SDT], [DiaChi], [MaCV], [Luong]) VALUES (N'NV03      ', N'Hoàng Minh Quang', CAST(N'2000-12-26' AS Date), N'Nam', N'018803994           ', N'0363084288     ', N'01 Võ Văn Ngân', N'CV02      ', 8000)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [CMND], [SDT], [DiaChi], [MaCV], [Luong]) VALUES (N'NV04      ', N'Nguyễn Đức Chánh', CAST(N'2000-03-10' AS Date), N'Nam', N'0189039482          ', N'0975724427     ', N'01 Thống Nhất', N'CV02      ', 8000)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [CMND], [SDT], [DiaChi], [MaCV], [Luong]) VALUES (N'NV05      ', N'Trần Bình Minh', CAST(N'1994-02-24' AS Date), N'Nam', N'023384736           ', N'0949176100     ', N'248 Cong Quynh, Pham Ngu Lao, Q1', N'CV02      ', 9000)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [CMND], [SDT], [DiaChi], [MaCV], [Luong]) VALUES (N'NV06      ', N'Hồ Bảo Mai', CAST(N'1998-07-12' AS Date), N'Nữ', N'018827391           ', N'0908134255     ', N'111 Le Van Duyet', N'CV02      ', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [CMND], [SDT], [DiaChi], [MaCV], [Luong]) VALUES (N'NV10      ', N'Nguyễn Thiện Thuật', CAST(N'1996-05-14' AS Date), N'Nam', N'018927381           ', N'0949198372     ', N'108 Tran Hung Dao', N'CV02      ', NULL)
SET IDENTITY_INSERT [dbo].[PhieuThanhToan] ON 

INSERT [dbo].[PhieuThanhToan] ([MaPhieu], [MaXe], [GioVao], [GioRa], [TienThu], [TraTheoThang], [MaNV]) VALUES (1, N'XM11      ', CAST(N'2021-05-10T08:50:00.000' AS DateTime), CAST(N'2021-05-10T08:50:00.000' AS DateTime), 114000, 1, N'NV01      ')
INSERT [dbo].[PhieuThanhToan] ([MaPhieu], [MaXe], [GioVao], [GioRa], [TienThu], [TraTheoThang], [MaNV]) VALUES (8, N'XO01      ', CAST(N'2021-05-12T12:01:00.000' AS DateTime), CAST(N'2021-05-12T12:01:00.000' AS DateTime), 2400000, 1, N'NV03      ')
INSERT [dbo].[PhieuThanhToan] ([MaPhieu], [MaXe], [GioVao], [GioRa], [TienThu], [TraTheoThang], [MaNV]) VALUES (17, N'MX11      ', CAST(N'2021-05-17T09:10:00.000' AS DateTime), CAST(N'2021-05-17T09:10:00.000' AS DateTime), 1152000, 1, N'NV03      ')
INSERT [dbo].[PhieuThanhToan] ([MaPhieu], [MaXe], [GioVao], [GioRa], [TienThu], [TraTheoThang], [MaNV]) VALUES (27, N'XM14      ', CAST(N'2021-05-21T12:38:11.000' AS DateTime), CAST(N'2021-05-21T13:20:37.000' AS DateTime), 0, 0, N'NV04      ')
INSERT [dbo].[PhieuThanhToan] ([MaPhieu], [MaXe], [GioVao], [GioRa], [TienThu], [TraTheoThang], [MaNV]) VALUES (28, N'XM123     ', CAST(N'2021-05-22T11:35:01.207' AS DateTime), CAST(N'2021-05-22T11:35:01.207' AS DateTime), 120000, 1, N'NV03      ')
INSERT [dbo].[PhieuThanhToan] ([MaPhieu], [MaXe], [GioVao], [GioRa], [TienThu], [TraTheoThang], [MaNV]) VALUES (29, N'XO01      ', CAST(N'2021-05-21T10:47:40.000' AS DateTime), CAST(N'2021-05-22T11:49:56.000' AS DateTime), 35000, 0, N'NV04      ')
INSERT [dbo].[PhieuThanhToan] ([MaPhieu], [MaXe], [GioVao], [GioRa], [TienThu], [TraTheoThang], [MaNV]) VALUES (33, N'MX01      ', CAST(N'2021-06-11T08:20:11.000' AS DateTime), CAST(N'2021-06-11T10:31:21.000' AS DateTime), 0, 1, N'NV01      ')
INSERT [dbo].[PhieuThanhToan] ([MaPhieu], [MaXe], [GioVao], [GioRa], [TienThu], [TraTheoThang], [MaNV]) VALUES (34, N'XM13      ', CAST(N'2021-06-10T13:43:39.000' AS DateTime), CAST(N'2021-06-11T10:49:03.000' AS DateTime), 15000, 0, N'NV01      ')
SET IDENTITY_INSERT [dbo].[PhieuThanhToan] OFF
INSERT [dbo].[TaiKhoan] ([TaiKhoan], [MatKhau], [MaNV]) VALUES (N'baomai                        ', N'mai456                        ', N'NV06      ')
INSERT [dbo].[TaiKhoan] ([TaiKhoan], [MatKhau], [MaNV]) VALUES (N'baophuong                     ', N'phuong4                       ', N'NV02      ')
INSERT [dbo].[TaiKhoan] ([TaiKhoan], [MatKhau], [MaNV]) VALUES (N'binhminh                      ', N'tranbinh                      ', N'NV05      ')
INSERT [dbo].[TaiKhoan] ([TaiKhoan], [MatKhau], [MaNV]) VALUES (N'ducchanh                      ', N'1234                          ', N'NV04      ')
INSERT [dbo].[TaiKhoan] ([TaiKhoan], [MatKhau], [MaNV]) VALUES (N'minhquang                     ', N'quang2k                       ', N'NV03      ')
INSERT [dbo].[TaiKhoan] ([TaiKhoan], [MatKhau], [MaNV]) VALUES (N'quoctien                      ', N'tien123                       ', N'NV01      ')
INSERT [dbo].[TaiKhoan] ([TaiKhoan], [MatKhau], [MaNV]) VALUES (N'thienthuat                    ', N'thiennguyen                   ', N'NV10      ')
INSERT [dbo].[TheGuiXe] ([MaTheGuiXe], [MaXe], [GioVao]) VALUES (N'TX01      ', N'45        ', NULL)
INSERT [dbo].[TheGuiXe] ([MaTheGuiXe], [MaXe], [GioVao]) VALUES (N'TX03      ', N'XO02      ', CAST(N'2021-06-10T10:46:39.767' AS DateTime))
INSERT [dbo].[TheGuiXe] ([MaTheGuiXe], [MaXe], [GioVao]) VALUES (N'TX04      ', N'XM123     ', NULL)
INSERT [dbo].[TheGuiXe] ([MaTheGuiXe], [MaXe], [GioVao]) VALUES (N'TX05      ', N'XM12      ', CAST(N'2021-05-22T11:44:52.123' AS DateTime))
INSERT [dbo].[TheGuiXe] ([MaTheGuiXe], [MaXe], [GioVao]) VALUES (N'TX06      ', N'MX01      ', NULL)
INSERT [dbo].[TheGuiXe] ([MaTheGuiXe], [MaXe], [GioVao]) VALUES (N'TX07      ', N'MX11      ', CAST(N'2021-06-11T06:47:51.203' AS DateTime))
INSERT [dbo].[TheGuiXe] ([MaTheGuiXe], [MaXe], [GioVao]) VALUES (N'TX08      ', N'XM11      ', NULL)
INSERT [dbo].[TheGuiXe] ([MaTheGuiXe], [MaXe], [GioVao]) VALUES (N'TX09      ', NULL, NULL)
INSERT [dbo].[TheGuiXe] ([MaTheGuiXe], [MaXe], [GioVao]) VALUES (N'TX10      ', NULL, NULL)
INSERT [dbo].[TheGuiXe] ([MaTheGuiXe], [MaXe], [GioVao]) VALUES (N'TX11      ', NULL, NULL)
INSERT [dbo].[TheGuiXe] ([MaTheGuiXe], [MaXe], [GioVao]) VALUES (N'TX12      ', NULL, NULL)
INSERT [dbo].[TheGuiXe] ([MaTheGuiXe], [MaXe], [GioVao]) VALUES (N'TX13      ', NULL, NULL)
INSERT [dbo].[TheGuiXe] ([MaTheGuiXe], [MaXe], [GioVao]) VALUES (N'TX14      ', NULL, NULL)
INSERT [dbo].[TheGuiXe] ([MaTheGuiXe], [MaXe], [GioVao]) VALUES (N'TX15      ', NULL, NULL)
INSERT [dbo].[TheGuiXe] ([MaTheGuiXe], [MaXe], [GioVao]) VALUES (N'TX16      ', NULL, NULL)
INSERT [dbo].[TheGuiXe] ([MaTheGuiXe], [MaXe], [GioVao]) VALUES (N'TX17      ', NULL, NULL)
INSERT [dbo].[TheGuiXe] ([MaTheGuiXe], [MaXe], [GioVao]) VALUES (N'TX18      ', NULL, NULL)
INSERT [dbo].[TheGuiXe] ([MaTheGuiXe], [MaXe], [GioVao]) VALUES (N'TX19      ', NULL, NULL)
INSERT [dbo].[TheGuiXe] ([MaTheGuiXe], [MaXe], [GioVao]) VALUES (N'TX20      ', NULL, NULL)
INSERT [dbo].[TheGuiXe] ([MaTheGuiXe], [MaXe], [GioVao]) VALUES (N'TX21      ', NULL, NULL)
INSERT [dbo].[TheGuiXe] ([MaTheGuiXe], [MaXe], [GioVao]) VALUES (N'TX22      ', NULL, NULL)
INSERT [dbo].[TheGuiXe] ([MaTheGuiXe], [MaXe], [GioVao]) VALUES (N'TX23      ', NULL, NULL)
INSERT [dbo].[TheGuiXe] ([MaTheGuiXe], [MaXe], [GioVao]) VALUES (N'TX24      ', NULL, NULL)
INSERT [dbo].[TheGuiXe] ([MaTheGuiXe], [MaXe], [GioVao]) VALUES (N'TX25      ', NULL, NULL)
INSERT [dbo].[TheGuiXe] ([MaTheGuiXe], [MaXe], [GioVao]) VALUES (N'TX26      ', NULL, NULL)
INSERT [dbo].[TheGuiXe] ([MaTheGuiXe], [MaXe], [GioVao]) VALUES (N'TX27      ', NULL, NULL)
INSERT [dbo].[TheGuiXe] ([MaTheGuiXe], [MaXe], [GioVao]) VALUES (N'TX28      ', NULL, NULL)
INSERT [dbo].[TheGuiXe] ([MaTheGuiXe], [MaXe], [GioVao]) VALUES (N'TX29      ', NULL, NULL)
INSERT [dbo].[TheGuiXe] ([MaTheGuiXe], [MaXe], [GioVao]) VALUES (N'TX30      ', NULL, NULL)
INSERT [dbo].[ViTri] ([MaViTri], [TenViTri], [MaXe]) VALUES (N'VT01      ', N'A4', NULL)
INSERT [dbo].[ViTri] ([MaViTri], [TenViTri], [MaXe]) VALUES (N'VT02      ', N'A2', N'XO02      ')
INSERT [dbo].[ViTri] ([MaViTri], [TenViTri], [MaXe]) VALUES (N'VT03      ', N'A3', N'XM12      ')
INSERT [dbo].[ViTri] ([MaViTri], [TenViTri], [MaXe]) VALUES (N'VT04      ', N'B1', N'MX11      ')
INSERT [dbo].[ViTri] ([MaViTri], [TenViTri], [MaXe]) VALUES (N'VT05      ', N'B2', NULL)
INSERT [dbo].[ViTri] ([MaViTri], [TenViTri], [MaXe]) VALUES (N'VT06      ', N'B3', NULL)
INSERT [dbo].[ViTri] ([MaViTri], [TenViTri], [MaXe]) VALUES (N'VT09      ', N'C3', NULL)
INSERT [dbo].[ViTri] ([MaViTri], [TenViTri], [MaXe]) VALUES (N'VT10      ', N'A1', NULL)
INSERT [dbo].[ViTri] ([MaViTri], [TenViTri], [MaXe]) VALUES (N'VT11      ', N'A5', NULL)
INSERT [dbo].[ViTri] ([MaViTri], [TenViTri], [MaXe]) VALUES (N'VT12      ', N'A6', NULL)
INSERT [dbo].[ViTri] ([MaViTri], [TenViTri], [MaXe]) VALUES (N'VT13      ', N'B4', NULL)
INSERT [dbo].[ViTri] ([MaViTri], [TenViTri], [MaXe]) VALUES (N'VT14      ', N'B5', NULL)
INSERT [dbo].[ViTri] ([MaViTri], [TenViTri], [MaXe]) VALUES (N'VT15      ', N'C1', NULL)
INSERT [dbo].[ViTri] ([MaViTri], [TenViTri], [MaXe]) VALUES (N'VT16      ', N'C2', NULL)
INSERT [dbo].[ViTri] ([MaViTri], [TenViTri], [MaXe]) VALUES (N'VT17      ', N'C4', NULL)
INSERT [dbo].[ViTri] ([MaViTri], [TenViTri], [MaXe]) VALUES (N'VT18      ', N'C5', NULL)
INSERT [dbo].[Xe] ([MaXe], [BienSo], [TenXe], [MauSac], [MaLoaiXe], [DangKyThang]) VALUES (N'45        ', N'30A-83959           ', N'Oto', N'Xanh', N'LXO       ', 1)
INSERT [dbo].[Xe] ([MaXe], [BienSo], [TenXe], [MauSac], [MaLoaiXe], [DangKyThang]) VALUES (N'MX01      ', N'47B2-44841          ', N'Sirius', N'Đen', N'LXM       ', 1)
INSERT [dbo].[Xe] ([MaXe], [BienSo], [TenXe], [MauSac], [MaLoaiXe], [DangKyThang]) VALUES (N'MX11      ', N'54R1-19283          ', N'Honda', N'Đen', N'LXM       ', 1)
INSERT [dbo].[Xe] ([MaXe], [BienSo], [TenXe], [MauSac], [MaLoaiXe], [DangKyThang]) VALUES (N'XM11      ', N'54R1-12283          ', N'Honda', N'Đen', N'LXM       ', 1)
INSERT [dbo].[Xe] ([MaXe], [BienSo], [TenXe], [MauSac], [MaLoaiXe], [DangKyThang]) VALUES (N'XM12      ', N'59V1-38723          ', N'Vision', N'Trắng', N'LXM       ', 0)
INSERT [dbo].[Xe] ([MaXe], [BienSo], [TenXe], [MauSac], [MaLoaiXe], [DangKyThang]) VALUES (N'XM123     ', N'51T1-06325          ', N'Vision', N'Trắng', N'LXM       ', 1)
INSERT [dbo].[Xe] ([MaXe], [BienSo], [TenXe], [MauSac], [MaLoaiXe], [DangKyThang]) VALUES (N'XM13      ', N'51T1-12342          ', N'Vision', N'Trắng', N'LXM       ', 0)
INSERT [dbo].[Xe] ([MaXe], [BienSo], [TenXe], [MauSac], [MaLoaiXe], [DangKyThang]) VALUES (N'XM14      ', N'54R1-28312          ', N'Vision', N'Trắng', N'LXM       ', 0)
INSERT [dbo].[Xe] ([MaXe], [BienSo], [TenXe], [MauSac], [MaLoaiXe], [DangKyThang]) VALUES (N'XO01      ', N'30A-01273           ', N'Oto', N'Hồng', N'LXO       ', 0)
INSERT [dbo].[Xe] ([MaXe], [BienSo], [TenXe], [MauSac], [MaLoaiXe], [DangKyThang]) VALUES (N'XO02      ', N'30A-83242           ', N'Oto', N'Vàng', N'LXO       ', 0)
INSERT [dbo].[Xe] ([MaXe], [BienSo], [TenXe], [MauSac], [MaLoaiXe], [DangKyThang]) VALUES (N'XO03      ', N'30A-13959           ', N'Oto', N'Trắng', N'LXO       ', 0)
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KhachHan__272520CC8DCE2E1B]    Script Date: 11/06/2021 10:54:20 AM ******/
ALTER TABLE [dbo].[KhachHang] ADD UNIQUE NONCLUSTERED 
(
	[MaXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__TaiKhoan__2725D70B04C3A694]    Script Date: 11/06/2021 10:54:20 AM ******/
ALTER TABLE [dbo].[TaiKhoan] ADD UNIQUE NONCLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GiaVe]  WITH CHECK ADD FOREIGN KEY([MaLoaiXe])
REFERENCES [dbo].[LoaiXe] ([MaLoaiXe])
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD FOREIGN KEY([MaXe])
REFERENCES [dbo].[Xe] ([MaXe])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([MaCV])
REFERENCES [dbo].[ChucVu] ([MaCV])
GO
ALTER TABLE [dbo].[PhieuThanhToan]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuThanhToan]  WITH CHECK ADD FOREIGN KEY([MaXe])
REFERENCES [dbo].[Xe] ([MaXe])
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[TheGuiXe]  WITH CHECK ADD FOREIGN KEY([MaXe])
REFERENCES [dbo].[Xe] ([MaXe])
GO
ALTER TABLE [dbo].[ViTri]  WITH CHECK ADD FOREIGN KEY([MaXe])
REFERENCES [dbo].[Xe] ([MaXe])
GO
ALTER TABLE [dbo].[Xe]  WITH CHECK ADD FOREIGN KEY([MaLoaiXe])
REFERENCES [dbo].[LoaiXe] ([MaLoaiXe])
GO
/****** Object:  StoredProcedure [dbo].[USP_GetListBillByDate]    Script Date: 11/06/2021 10:54:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_GetListBillByDate]
@checkIn varchar(100), @checkOut varchar(100)
AS
BEGIN
	SELECT TenKH, GioVao, GioRa, TienThu, TenNV 
	FROM dbo.PhieuThanhToan, dbo.KhachHang, dbo.NhanVien
	WHERE GioVao >= @checkIn AND GioRa <= @checkOut AND PhieuThanhToan.MaXe = KhachHang.MaXe AND NhanVien.MaNV = PhieuThanhToan.MaNV
END

GO
/****** Object:  StoredProcedure [dbo].[USP_GetSumBillByDate]    Script Date: 11/06/2021 10:54:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_GetSumBillByDate]
@checkIn varchar(100), @checkOut varchar(100)
AS
BEGIN
	SELECT Sum(TienThu) as TongThu
	FROM PhieuThanhToan
	WHERE GioVao >= @checkIn AND GioRa <= @checkOut 
END
GO
