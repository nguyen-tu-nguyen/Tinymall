USE [master]
GO

CREATE DATABASE [Tinymall]
USE [Tinymall]

GO
CREATE TABLE [dbo].[CHITIETHD](
	[MAHD] [int] NOT NULL,
	[MASP] [int] NOT NULL,
	[SOLUONG] [int] NULL,
	[TONGTIEN] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MAHD] ASC,
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 5/26/2019 7:27:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MAHD] [int] IDENTITY(1,1) NOT NULL,
	[NGAYLAP] [date] NULL,
	[MAKH] [int] NULL,
	[THANHTIEN] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MAHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 5/26/2019 7:27:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [int] IDENTITY(1,1) NOT NULL,
	[TENKH] [nvarchar](30) NULL,
	[DIACHI] [nvarchar](30) NULL,
	[GIOITINH] [nchar](5) NULL,
	[TENDN] [char](20) NULL,
	[MATKHAU] [char](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOAI]    Script Date: 5/26/2019 7:27:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI](
	[MALOAI] [int] NOT NULL,
	[TENLOAI] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MALOAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 5/26/2019 7:27:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MASP] [int] NOT NULL,
	[TENSP] [nvarchar](50) NULL,
	[DONGIA] [float] NULL,
	[HINHANH] [nvarchar](30) NULL,
	[MALOAI] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [GIOITINH], [TENDN], [MATKHAU]) VALUES (1, N'Nguyễn Văn An', N'TP HCM', N'Nam  ', N'nguyenvanan         ', N'123                 ')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [GIOITINH], [TENDN], [MATKHAU]) VALUES (2, N'Lê Văn Khá', N'An Giang', N'Nam  ', N'kha                 ', N'456                 ')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [GIOITINH], [TENDN], [MATKHAU]) VALUES (3, N'Nguyễn Cẩm Tú', N'Tây Ninh', N'Nữ   ', N'tu                  ', N'789                 ')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [GIOITINH], [TENDN], [MATKHAU]) VALUES (4, N'Trần Văn Tốt', N'Bình Dương', N'Nam  ', N'tot                 ', N'123                 ')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [GIOITINH], [TENDN], [MATKHAU]) VALUES (5, N'Nguyễn Văn Nam', N'Long An', N'Nam  ', N'nam                 ', N'234                 ')
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI]) VALUES (1, N'Nước uống')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI]) VALUES (2, N'Thức ăn')
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (1, N'Trà Đào', 20000, N'n1.png', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (2, N'Trà Sữa Trân Châu', 23000, N'n2.png', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (3, N'Trà Sữa Socola', 25000, N'n3.png', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (4, N'Trà Sữa Matcha', 30000, N'n4.png', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (5, N'Sữa Đào', 30000, N'n5.png', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (6, N'Siro Đá Bào', 25000, N'n6.png', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (7, N'Trà Sữa Tiny', 30000, N'n7.png', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (8, N'Trà Sữa Tiny Machiato', 40000, N'n8.png', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (9, N'Soda Mùa Xuân', 25000, N'n9.png', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (10, N'Soda Mùa Hè', 25000, N'n10.png', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (11, N'Cookie Đào', 25000, N'n11.png', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (12, N'Soda Mùa Đông', 25000, N'n12.png', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (13, N'Trà Vải', 25000, N'n13.png', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (14, N'Trà Sữa Trái Cây', 25000, N'n14.png', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (15, N'Mini IceBlended', 10000, N'n15.png', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (16, N'Choco Family', 25000, N'n16.png', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (17, N'Cookie Oreo', 30000, N'n17.png', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (18, N'Cà phê đá xay', 35000, N'n18.png', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (19, N'Trà Sữa Thái', 35000, N'n19.png', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (20, N'Cookie Chocolate', 30000, N'n20.png', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (21, N'Cookie Strawberry', 30000, N'n21.png', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (22, N'Cookie Blueberry', 30000, N'n22.png', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (23, N'Cookie Matcha', 30000, N'n23.png', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (24, N'Cookie Tiny', 40000, N'n24.png', 1)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (25, N'Burger Bò', 30000, N'f1.png', 2)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (26, N'Burger Gà', 29000, N'f2.png', 2)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (27, N'Bánh Mì Xông Khói', 25000, N'f3.png', 2)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (28, N'Bánh Mì Trứng', 20000, N'f4.png', 2)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (29, N'Gà Chiên Giòn', 29000, N'f5.png', 2)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (30, N'Gà Sốt Phô Mai', 35000, N'f6.png', 2)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (31, N'Gà Sốt Chua Ngọt', 35000, N'f7.png', 2)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (32, N'Gà Chiên Nước Mắm', 35000, N'f8.png', 2)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (33, N'Gà Viên Chiên', 35000, N'f9.png', 2)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (34, N'Pizza Xông Khói', 80000, N'f10.png', 2)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (35, N'Phô Mai Que', 15000, N'f11.png', 2)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (36, N'Há Cảo', 25000, N'f12.png', 2)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (37, N'Xúc Xích', 150000, N'f13.png', 2)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (38, N'Pizza Xúc Xích', 80000, N'f14.png', 2)
INSERT [dbo].[SANPHAM] ([MASP], [TENSP], [DONGIA], [HINHANH], [MALOAI]) VALUES (39, N'Khoai Tây Chiên', 15000, N'f15.png', 2)
ALTER TABLE [dbo].[CHITIETHD]  WITH CHECK ADD  CONSTRAINT [FK_CT_HD] FOREIGN KEY([MAHD])
REFERENCES [dbo].[HOADON] ([MAHD])
GO
ALTER TABLE [dbo].[CHITIETHD] CHECK CONSTRAINT [FK_CT_HD]
GO
ALTER TABLE [dbo].[CHITIETHD]  WITH CHECK ADD  CONSTRAINT [FK_CT_SP] FOREIGN KEY([MASP])
REFERENCES [dbo].[SANPHAM] ([MASP])
GO
ALTER TABLE [dbo].[CHITIETHD] CHECK CONSTRAINT [FK_CT_SP]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HD_KH] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HD_KH]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SP_LOAI] FOREIGN KEY([MALOAI])
REFERENCES [dbo].[LOAI] ([MALOAI])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SP_LOAI]
GO
USE [master]
GO
ALTER DATABASE [QLMT] SET  READ_WRITE 
GO
