USE [master]
GO
/****** Object:  Database [DHKTPM12B_WWW_08]    Script Date: 5/7/2019 10:32:06 PM ******/
CREATE DATABASE [DHKTPM12B_WWW_08]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DHKTPM12B_WWW_08', FILENAME = N'D:\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\DHKTPM12B_WWW_08.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DHKTPM12B_WWW_08_log', FILENAME = N'D:\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\DHKTPM12B_WWW_08_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DHKTPM12B_WWW_08].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET ARITHABORT OFF 
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET  MULTI_USER 
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [DHKTPM12B_WWW_08]
GO
/****** Object:  Table [Admin]    Script Date: 5/7/2019 10:32:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [Admin](
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Access] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Bonus]    Script Date: 5/7/2019 10:32:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [Bonus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [varchar](20) NOT NULL,
	[Type] [bit] NOT NULL,
	[Amount] [float] NULL,
	[Reason] [nvarchar](50) NULL,
	[DateWrite] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Categories]    Script Date: 5/7/2019 10:32:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Categories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameCategory] [nvarchar](50) NOT NULL,
	[NameCategoryEN] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Contracts]    Script Date: 5/7/2019 10:32:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Contracts](
	[ID] [varchar](20) NOT NULL,
	[NameContract] [nvarchar](50) NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NULL,
	[Subsidize] [int] NULL,
	[Insurrance] [float] NULL,
	[Salary] [float] NULL,
	[Status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Customers]    Script Date: 5/7/2019 10:32:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Customers](
	[ID] [varchar](20) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](max) NULL,
	[Address] [nvarchar](50) NOT NULL,
	[NumberPhone] [nvarchar](25) NOT NULL,
	[Birthday] [datetime] NOT NULL,
	[Gender] [int] NOT NULL,
	[Activated] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Departments]    Script Date: 5/7/2019 10:32:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Departments](
	[ID] [varchar](12) NOT NULL,
	[NameDepartment] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Employees]    Script Date: 5/7/2019 10:32:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Employees](
	[ID] [varchar](20) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[NameEmployee] [nvarchar](50) NOT NULL,
	[Gender] [int] NOT NULL,
	[Photo] [nvarchar](max) NULL,
	[Address] [nvarchar](50) NOT NULL,
	[NumberPhone] [nvarchar](25) NOT NULL,
	[Birthday] [datetime] NOT NULL,
	[Access] [int] NOT NULL,
	[Activated] [bit] NOT NULL,
	[DepartmentID] [varchar](12) NOT NULL,
	[EmployeeTypeID] [varchar](12) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [EmployeeTypes]    Script Date: 5/7/2019 10:32:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [EmployeeTypes](
	[ID] [varchar](12) NOT NULL,
	[NameEmployeeType] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [OrderDetails]    Script Date: 5/7/2019 10:32:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [OrderDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Amount] [float] NOT NULL,
	[Discount] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Orders]    Script Date: 5/7/2019 10:32:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[RequireDate] [datetime] NOT NULL,
	[Amount] [float] NOT NULL,
	[Receiver] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Status] [int] NOT NULL,
	[NumberPhone] [varchar](15) NULL,
	[CustomerID] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Producers]    Script Date: 5/7/2019 10:32:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Producers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameProducer] [nvarchar](50) NOT NULL,
	[Logo] [nvarchar](max) NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[NumberPhone] [nvarchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [Products]    Script Date: 5/7/2019 10:32:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameProduct] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](max) NULL,
	[Quantity] [int] NOT NULL,
	[ProductDate] [datetime] NOT NULL,
	[UnitBrief] [nvarchar](50) NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[Discount] [float] NULL,
	[Description] [nvarchar](1000) NULL,
	[Views] [int] NULL,
	[Available] [bit] NULL,
	[Special] [bit] NULL,
	[Latest] [bit] NULL,
	[Status] [bit] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[ProducerID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [Admin] ([Username], [Password], [FullName], [Access]) VALUES (N'khanh@gmail.com', N'123', N'Luu Gia Khanh', 1)
SET IDENTITY_INSERT [Categories] ON 

INSERT [Categories] ([ID], [NameCategory], [NameCategoryEN]) VALUES (1, N'Sách', N'Book')
INSERT [Categories] ([ID], [NameCategory], [NameCategoryEN]) VALUES (2, N'Dụng cụ viết', N' Writing instruments')
INSERT [Categories] ([ID], [NameCategory], [NameCategoryEN]) VALUES (3, N'Dụng cụ để bàn', N'Desk top instruments')
INSERT [Categories] ([ID], [NameCategory], [NameCategoryEN]) VALUES (4, N'Giấy A4', N'Page A4')
INSERT [Categories] ([ID], [NameCategory], [NameCategoryEN]) VALUES (5, N'Tập', N'Notebooks ')
INSERT [Categories] ([ID], [NameCategory], [NameCategoryEN]) VALUES (6, N'Đồ tẩy xóa', N'Erasers')
INSERT [Categories] ([ID], [NameCategory], [NameCategoryEN]) VALUES (7, N'Bìa', N'Folder')
SET IDENTITY_INSERT [Categories] OFF
INSERT [Contracts] ([ID], [NameContract], [StartTime], [EndTime], [Subsidize], [Insurrance], [Salary], [Status]) VALUES (N'khanh', N'HD Khong Xac Dinh Thoi Han', CAST(N'2019-04-26 00:00:00.000' AS DateTime), CAST(N'2030-04-26 00:00:00.000' AS DateTime), 500000, 0.08, 5000000, 1)
INSERT [Customers] ([ID], [Email], [Password], [FullName], [Photo], [Address], [NumberPhone], [Birthday], [Gender], [Activated]) VALUES (N'khanh', N'khanhc@gmail.com', N'123456', N'Luu Gia Khanh', N'', N'Vinh LOng', N'01213321897', CAST(N'1998-03-21 00:00:00.000' AS DateTime), 1, 1)
INSERT [Customers] ([ID], [Email], [Password], [FullName], [Photo], [Address], [NumberPhone], [Birthday], [Gender], [Activated]) VALUES (N'khanh01', N'khanh01@gmail.com', N'123456', N'khanh01', N'', N'Vinh Long', N'01213321897', CAST(N'1998-03-21 00:00:00.000' AS DateTime), 1, 1)
INSERT [Departments] ([ID], [NameDepartment]) VALUES (N'PB1', N'Phòng IT')
INSERT [Departments] ([ID], [NameDepartment]) VALUES (N'PB2', N'Phòng Kế Toán')
INSERT [Departments] ([ID], [NameDepartment]) VALUES (N'PB3', N'Phòng Nhân Sự')
INSERT [Departments] ([ID], [NameDepartment]) VALUES (N'PB4', N'Phòng Marketting')
INSERT [Employees] ([ID], [Email], [Password], [NameEmployee], [Gender], [Photo], [Address], [NumberPhone], [Birthday], [Access], [Activated], [DepartmentID], [EmployeeTypeID]) VALUES (N'khanh', N'khanh@gmail.com', N'123456', N'Khanh 1', 1, N'', N'Vinh Long', N'01213321897', CAST(N'1998-03-21 00:00:00.000' AS DateTime), 1, 1, N'PB1', N'LNV1')
INSERT [Employees] ([ID], [Email], [Password], [NameEmployee], [Gender], [Photo], [Address], [NumberPhone], [Birthday], [Access], [Activated], [DepartmentID], [EmployeeTypeID]) VALUES (N'khanh01', N'khanh01@gmail.com', N'123456', N'khanh91', 2, N'', N'Vinh Long', N'01213321897', CAST(N'1998-03-21 00:00:00.000' AS DateTime), 1, 1, N'PB2', N'LNV2')
INSERT [EmployeeTypes] ([ID], [NameEmployeeType]) VALUES (N'LNV1', N'FullTime')
INSERT [EmployeeTypes] ([ID], [NameEmployeeType]) VALUES (N'LNV2', N'PartTime')
SET IDENTITY_INSERT [OrderDetails] ON 

INSERT [OrderDetails] ([ID], [OrderID], [ProductID], [Quantity], [Amount], [Discount]) VALUES (1, 1, 3, 1, 50000, 0.2)
INSERT [OrderDetails] ([ID], [OrderID], [ProductID], [Quantity], [Amount], [Discount]) VALUES (2, 2, 5, 2, 120000, 0)
SET IDENTITY_INSERT [OrderDetails] OFF
SET IDENTITY_INSERT [Orders] ON 

INSERT [Orders] ([ID], [OrderDate], [RequireDate], [Amount], [Receiver], [Address], [Description], [Status], [NumberPhone], [CustomerID]) VALUES (1, CAST(N'2019-05-07 00:00:00.000' AS DateTime), CAST(N'2019-05-07 00:00:00.000' AS DateTime), 40000, N'khanh01', N'2939084190', N'q32', 4, N'08127399', N'khanh01')
INSERT [Orders] ([ID], [OrderDate], [RequireDate], [Amount], [Receiver], [Address], [Description], [Status], [NumberPhone], [CustomerID]) VALUES (2, CAST(N'2019-05-07 00:00:00.000' AS DateTime), CAST(N'2019-05-09 00:00:00.000' AS DateTime), 240000, N'khanh01', N'434241', N'123', 4, N'1233', N'khanh01')
SET IDENTITY_INSERT [Orders] OFF
SET IDENTITY_INSERT [Producers] ON 

INSERT [Producers] ([ID], [NameProducer], [Logo], [Address], [Email], [NumberPhone]) VALUES (1, N'Thiên Long', N'thienlong.png', N'12381273878', N'23847812749@mah', N'12773217481')
INSERT [Producers] ([ID], [NameProducer], [Logo], [Address], [Email], [NumberPhone]) VALUES (2, N'NXB Kim Đồng', N'Logo_nxb_Kim_Đồng.png', N'2939084190', N'ajds@xn--knfjfn-vc8b', N'12492804')
SET IDENTITY_INSERT [Producers] OFF
SET IDENTITY_INSERT [Products] ON 

INSERT [Products] ([ID], [NameProduct], [Photo], [Quantity], [ProductDate], [UnitBrief], [UnitPrice], [Discount], [Description], [Views], [Available], [Special], [Latest], [Status], [CategoryID], [ProducerID]) VALUES (1, N'Bìa màu', N'B1.jpg', 1, CAST(N'2019-05-07 00:00:00.000' AS DateTime), N'Tấm', 20000, 0.1, N'', NULL, 0, 0, 1, 1, 7, 1)
INSERT [Products] ([ID], [NameProduct], [Photo], [Quantity], [ProductDate], [UnitBrief], [UnitPrice], [Discount], [Description], [Views], [Available], [Special], [Latest], [Status], [CategoryID], [ProducerID]) VALUES (2, N'Giấy A4 loại 1', N'GA4.jpg', 20, CAST(N'2019-05-08 00:00:00.000' AS DateTime), N'Gói', 230000, 0, N'', NULL, 0, 0, 1, 1, 4, 1)
INSERT [Products] ([ID], [NameProduct], [Photo], [Quantity], [ProductDate], [UnitBrief], [UnitPrice], [Discount], [Description], [Views], [Available], [Special], [Latest], [Status], [CategoryID], [ProducerID]) VALUES (3, N'Bút lá tre (TL)', N'pen1.jpg', 1, CAST(N'2019-05-07 00:00:00.000' AS DateTime), N'Chiếc', 50000, 0.2, N'', NULL, 0, 1, 1, 1, 2, 1)
INSERT [Products] ([ID], [NameProduct], [Photo], [Quantity], [ProductDate], [UnitBrief], [UnitPrice], [Discount], [Description], [Views], [Available], [Special], [Latest], [Status], [CategoryID], [ProducerID]) VALUES (4, N'Sách Bướm đuôi nhạn', N'sach1.jpg', 30, CAST(N'2019-05-07 00:00:00.000' AS DateTime), N'Cuốn', 120000, 0.3, N'', NULL, 0, 1, 1, 1, 1, 2)
INSERT [Products] ([ID], [NameProduct], [Photo], [Quantity], [ProductDate], [UnitBrief], [UnitPrice], [Discount], [Description], [Views], [Available], [Special], [Latest], [Status], [CategoryID], [ProducerID]) VALUES (5, N'Sách đường vội nói lời yêu', N'sach2.jpg', 1, CAST(N'2019-05-07 00:00:00.000' AS DateTime), N'Cuốn', 120000, 0, N'', NULL, 0, 0, 1, 1, 1, 2)
INSERT [Products] ([ID], [NameProduct], [Photo], [Quantity], [ProductDate], [UnitBrief], [UnitPrice], [Discount], [Description], [Views], [Available], [Special], [Latest], [Status], [CategoryID], [ProducerID]) VALUES (6, N'Cục tẩy 1', N'E1.jpg', 28, CAST(N'2019-05-07 00:00:00.000' AS DateTime), N'Cục', 4000, 0.03, N'', NULL, 0, 0, 1, 1, 6, 1)
INSERT [Products] ([ID], [NameProduct], [Photo], [Quantity], [ProductDate], [UnitBrief], [UnitPrice], [Discount], [Description], [Views], [Available], [Special], [Latest], [Status], [CategoryID], [ProducerID]) VALUES (7, N'Tập màu đen 1', N'nb1.png', 50, CAST(N'2019-05-07 00:00:00.000' AS DateTime), N'Quyển', 12000, 0.05, N'', NULL, 0, 0, 1, 1, 5, 1)
INSERT [Products] ([ID], [NameProduct], [Photo], [Quantity], [ProductDate], [UnitBrief], [UnitPrice], [Discount], [Description], [Views], [Available], [Special], [Latest], [Status], [CategoryID], [ProducerID]) VALUES (8, N'Đèn để bàn 1', N'D1.jpg', 32, CAST(N'2019-05-07 00:00:00.000' AS DateTime), N'Chiếc', 79000, 0.05, N'', NULL, 0, 0, 1, 1, 3, 1)
SET IDENTITY_INSERT [Products] OFF
ALTER TABLE [Bonus]  WITH CHECK ADD  CONSTRAINT [FK_Bonus_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [Employees] ([ID])
GO
ALTER TABLE [Bonus] CHECK CONSTRAINT [FK_Bonus_Employees]
GO
ALTER TABLE [Contracts]  WITH CHECK ADD  CONSTRAINT [FK_Employees] FOREIGN KEY([ID])
REFERENCES [Employees] ([ID])
GO
ALTER TABLE [Contracts] CHECK CONSTRAINT [FK_Employees]
GO
ALTER TABLE [Employees]  WITH CHECK ADD FOREIGN KEY([DepartmentID])
REFERENCES [Departments] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [Employees]  WITH CHECK ADD FOREIGN KEY([EmployeeTypeID])
REFERENCES [EmployeeTypes] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderID])
REFERENCES [Orders] ([ID])
GO
ALTER TABLE [OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductID])
REFERENCES [Products] ([ID])
GO
ALTER TABLE [OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerID])
REFERENCES [Customers] ([ID])
GO
ALTER TABLE [Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryID])
REFERENCES [Categories] ([ID])
GO
ALTER TABLE [Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Producers] FOREIGN KEY([ProducerID])
REFERENCES [Producers] ([ID])
GO
ALTER TABLE [Products] CHECK CONSTRAINT [FK_Products_Producers]
GO
USE [master]
GO
ALTER DATABASE [DHKTPM12B_WWW_08] SET  READ_WRITE 
GO
