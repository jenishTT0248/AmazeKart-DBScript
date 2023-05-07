USE [AmazeKart]
GO
/****** Object:  Table [dbo].[CartDetails]    Script Date: 5/7/2023 9:33:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_CartDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 5/7/2023 9:33:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](500) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 5/7/2023 9:33:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](200) NOT NULL,
	[LastName] [varchar](200) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Address1] [varchar](500) NOT NULL,
	[Address2] [varchar](500) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[PostalCode] [varchar](50) NOT NULL,
	[Country] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[BillingAddress] [varchar](500) NOT NULL,
	[BillingCity] [varchar](100) NOT NULL,
	[BillingState] [varchar](100) NOT NULL,
	[BillingPostalCode] [varchar](50) NOT NULL,
	[BillingCountry] [varchar](50) NOT NULL,
	[ShipAddress] [varchar](500) NOT NULL,
	[ShipCity] [varchar](100) NOT NULL,
	[ShipState] [varchar](100) NOT NULL,
	[ShipPostalCode] [varchar](50) NOT NULL,
	[ShipCountry] [varchar](50) NOT NULL,
	[Active] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 5/7/2023 9:33:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [numeric](18, 0) NOT NULL,
	[Discount] [numeric](18, 0) NOT NULL,
	[OrderAmount] [numeric](18, 0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 5/7/2023 9:33:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderNumber] [varchar](100) NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[GrossAmount] [decimal](18, 0) NOT NULL,
	[GrossDiscountAmount] [decimal](18, 0) NOT NULL,
	[NetAmount] [decimal](18, 0) NOT NULL,
	[OrderStatus] [varchar](50) NOT NULL,
	[ShippingDate] [varchar](100) NOT NULL,
	[DelieveredDate] [varchar](100) NOT NULL,
	[PaymentId] [int] NOT NULL,
	[TransactionReferenceNumber] [varchar](500) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentDetails]    Script Date: 5/7/2023 9:33:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[Amount] [decimal](18, 0) NOT NULL,
	[Status] [varchar](100) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_PaymentDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCatalogs]    Script Date: 5/7/2023 9:33:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCatalogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[ProductImage] [varchar](500) NOT NULL,
	[MediaType] [varchar](500) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_ProductCatalogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 5/7/2023 9:33:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SKU] [varchar](50) NOT NULL,
	[ProductName] [varchar](100) NOT NULL,
	[SupplierId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Size] [varchar](50) NOT NULL,
	[Color] [varchar](50) NOT NULL,
	[UnitWeight] [decimal](18, 0) NOT NULL,
	[UnitsInStock] [bigint] NOT NULL,
	[DiscountType] [varchar](50) NOT NULL,
	[DiscountValue] [decimal](18, 0) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 5/7/2023 9:33:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [varchar](500) NOT NULL,
	[ContactFirstName] [varchar](100) NOT NULL,
	[ContactLastName] [varchar](100) NOT NULL,
	[Address1] [varchar](500) NOT NULL,
	[Address2] [varchar](500) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[PostalCode] [varchar](50) NOT NULL,
	[Country] [varchar](50) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CartDetails]  WITH CHECK ADD  CONSTRAINT [FK_CartDetails_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[CartDetails] CHECK CONSTRAINT [FK_CartDetails_Customers]
GO
ALTER TABLE [dbo].[CartDetails]  WITH CHECK ADD  CONSTRAINT [FK_CartDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[CartDetails] CHECK CONSTRAINT [FK_CartDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_PaymentDetails] FOREIGN KEY([PaymentId])
REFERENCES [dbo].[PaymentDetails] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_PaymentDetails]
GO
ALTER TABLE [dbo].[ProductCatalogs]  WITH CHECK ADD  CONSTRAINT [FK_ProductCatalogs_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductCatalogs] CHECK CONSTRAINT [FK_ProductCatalogs_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Suppliers] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Suppliers]
GO