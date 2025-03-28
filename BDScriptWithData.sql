USE [master]
GO
/****** Object:  Database [MasterPol]    Script Date: 29.01.2025 16:42:22 ******/
CREATE DATABASE [MasterPol]
 CONTAINMENT = NONE

GO
ALTER DATABASE [MasterPol] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MasterPol].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MasterPol] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MasterPol] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MasterPol] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MasterPol] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MasterPol] SET ARITHABORT OFF 
GO
ALTER DATABASE [MasterPol] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MasterPol] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MasterPol] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MasterPol] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MasterPol] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MasterPol] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MasterPol] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MasterPol] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MasterPol] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MasterPol] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MasterPol] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MasterPol] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MasterPol] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MasterPol] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MasterPol] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MasterPol] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MasterPol] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MasterPol] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MasterPol] SET  MULTI_USER 
GO
ALTER DATABASE [MasterPol] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MasterPol] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MasterPol] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MasterPol] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MasterPol] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MasterPol] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MasterPol] SET QUERY_STORE = OFF
GO
USE [MasterPol]
GO
/****** Object:  Table [dbo].[Adress]    Script Date: 29.01.2025 16:42:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adress](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IndexID] [int] NOT NULL,
	[AreaID] [int] NOT NULL,
	[CityID] [int] NOT NULL,
	[StreetID] [int] NOT NULL,
	[House] [int] NOT NULL,
 CONSTRAINT [PK_Adress] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 29.01.2025 16:42:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Area](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AreaName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Area] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 29.01.2025 16:42:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Directors]    Script Date: 29.01.2025 16:42:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Directors](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DirectorName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Directors] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Index]    Script Date: 29.01.2025 16:42:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Index](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IndexNumber] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Index] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 29.01.2025 16:42:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaterialTypeName] [nvarchar](50) NOT NULL,
	[PercentOfDefect] [decimal](8, 2) NOT NULL,
 CONSTRAINT [PK_MaterialType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerProducts]    Script Date: 29.01.2025 16:42:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerProducts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[PartnerID] [int] NOT NULL,
	[ProductQuantity] [int] NOT NULL,
	[SellDate] [date] NOT NULL,
 CONSTRAINT [PK_PartnerProducts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partners]    Script Date: 29.01.2025 16:42:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartnerTypeID] [int] NOT NULL,
	[PartnerName] [nvarchar](50) NOT NULL,
	[DirectorID] [int] NOT NULL,
	[PartnerEmail] [nvarchar](50) NOT NULL,
	[PartnerPhone] [nvarchar](50) NOT NULL,
	[INN] [nvarchar](50) NOT NULL,
	[Rating] [int] NOT NULL,
	[AdressID] [int] NOT NULL,
 CONSTRAINT [PK_Partners] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerType]    Script Date: 29.01.2025 16:42:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_PartnerType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 29.01.2025 16:42:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductTypeID] [int] NOT NULL,
	[ProductionName] [nvarchar](100) NOT NULL,
	[Article] [nvarchar](50) NOT NULL,
	[MinimalPartnerCost] [decimal](8, 2) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 29.01.2025 16:42:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductTypeName] [nvarchar](50) NOT NULL,
	[Multiplier] [decimal](8, 2) NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 29.01.2025 16:42:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StreetName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Adress] ON 

INSERT [dbo].[Adress] ([ID], [IndexID], [AreaID], [CityID], [StreetID], [House]) VALUES (1, 1, 5, 2, 4, 51)
INSERT [dbo].[Adress] ([ID], [IndexID], [AreaID], [CityID], [StreetID], [House]) VALUES (2, 2, 1, 3, 5, 18)
INSERT [dbo].[Adress] ([ID], [IndexID], [AreaID], [CityID], [StreetID], [House]) VALUES (3, 3, 4, 1, 2, 21)
INSERT [dbo].[Adress] ([ID], [IndexID], [AreaID], [CityID], [StreetID], [House]) VALUES (4, 4, 2, 4, 3, 122)
INSERT [dbo].[Adress] ([ID], [IndexID], [AreaID], [CityID], [StreetID], [House]) VALUES (5, 5, 3, 5, 1, 15)
SET IDENTITY_INSERT [dbo].[Adress] OFF
GO
SET IDENTITY_INSERT [dbo].[Area] ON 

INSERT [dbo].[Area] ([ID], [AreaName]) VALUES (1, N'Архангельская область')
INSERT [dbo].[Area] ([ID], [AreaName]) VALUES (2, N'Белгородская область')
INSERT [dbo].[Area] ([ID], [AreaName]) VALUES (3, N'Кемеровская область')
INSERT [dbo].[Area] ([ID], [AreaName]) VALUES (4, N'Ленинградская область')
INSERT [dbo].[Area] ([ID], [AreaName]) VALUES (5, N'Московская область')
SET IDENTITY_INSERT [dbo].[Area] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([ID], [City]) VALUES (1, N'город Приморск')
INSERT [dbo].[City] ([ID], [City]) VALUES (2, N'город Реутов')
INSERT [dbo].[City] ([ID], [City]) VALUES (3, N'город Северодвинск')
INSERT [dbo].[City] ([ID], [City]) VALUES (4, N'город Старый Оскол')
INSERT [dbo].[City] ([ID], [City]) VALUES (5, N'город Юрга')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Directors] ON 

INSERT [dbo].[Directors] ([ID], [DirectorName]) VALUES (1, N'Воробьева Екатерина Валерьевна')
INSERT [dbo].[Directors] ([ID], [DirectorName]) VALUES (2, N'Иванова Александра Ивановна')
INSERT [dbo].[Directors] ([ID], [DirectorName]) VALUES (3, N'Петров Василий Петрович')
INSERT [dbo].[Directors] ([ID], [DirectorName]) VALUES (4, N'Соловьев Андрей Николаевич')
INSERT [dbo].[Directors] ([ID], [DirectorName]) VALUES (5, N'Степанов Степан Сергеевич')
SET IDENTITY_INSERT [dbo].[Directors] OFF
GO
SET IDENTITY_INSERT [dbo].[Index] ON 

INSERT [dbo].[Index] ([ID], [IndexNumber]) VALUES (1, N'143960')
INSERT [dbo].[Index] ([ID], [IndexNumber]) VALUES (2, N'164500')
INSERT [dbo].[Index] ([ID], [IndexNumber]) VALUES (3, N'188910')
INSERT [dbo].[Index] ([ID], [IndexNumber]) VALUES (4, N'309500')
INSERT [dbo].[Index] ([ID], [IndexNumber]) VALUES (5, N'652050')
SET IDENTITY_INSERT [dbo].[Index] OFF
GO
SET IDENTITY_INSERT [dbo].[MaterialType] ON 

INSERT [dbo].[MaterialType] ([ID], [MaterialTypeName], [PercentOfDefect]) VALUES (1, N'Тип материала 1', CAST(0.10 AS Decimal(8, 2)))
INSERT [dbo].[MaterialType] ([ID], [MaterialTypeName], [PercentOfDefect]) VALUES (2, N'Тип материала 2', CAST(0.95 AS Decimal(8, 2)))
INSERT [dbo].[MaterialType] ([ID], [MaterialTypeName], [PercentOfDefect]) VALUES (3, N'Тип материала 3', CAST(0.28 AS Decimal(8, 2)))
INSERT [dbo].[MaterialType] ([ID], [MaterialTypeName], [PercentOfDefect]) VALUES (4, N'Тип материала 4', CAST(0.55 AS Decimal(8, 2)))
INSERT [dbo].[MaterialType] ([ID], [MaterialTypeName], [PercentOfDefect]) VALUES (5, N'Тип материала 5', CAST(0.34 AS Decimal(8, 2)))
SET IDENTITY_INSERT [dbo].[MaterialType] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerProducts] ON 

INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [ProductQuantity], [SellDate]) VALUES (1, 1, 3, 35000, CAST(N'2022-12-02' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [ProductQuantity], [SellDate]) VALUES (2, 1, 5, 2500, CAST(N'2024-07-05' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [ProductQuantity], [SellDate]) VALUES (3, 1, 2, 25000, CAST(N'2024-06-12' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [ProductQuantity], [SellDate]) VALUES (4, 2, 1, 12350, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [ProductQuantity], [SellDate]) VALUES (5, 2, 3, 1000, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [ProductQuantity], [SellDate]) VALUES (6, 2, 4, 37200, CAST(N'2024-03-12' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [ProductQuantity], [SellDate]) VALUES (7, 2, 2, 50000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [ProductQuantity], [SellDate]) VALUES (8, 3, 1, 37400, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [ProductQuantity], [SellDate]) VALUES (9, 3, 4, 59050, CAST(N'2023-03-20' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [ProductQuantity], [SellDate]) VALUES (10, 3, 2, 670000, CAST(N'2023-11-10' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [ProductQuantity], [SellDate]) VALUES (11, 4, 1, 15500, CAST(N'2023-03-23' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [ProductQuantity], [SellDate]) VALUES (12, 4, 3, 7550, CAST(N'2024-07-01' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [ProductQuantity], [SellDate]) VALUES (13, 4, 5, 7250, CAST(N'2023-01-22' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [ProductQuantity], [SellDate]) VALUES (14, 4, 2, 35000, CAST(N'2024-04-15' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [ProductQuantity], [SellDate]) VALUES (15, 5, 3, 1250, CAST(N'2023-05-17' AS Date))
INSERT [dbo].[PartnerProducts] ([ID], [ProductID], [PartnerID], [ProductQuantity], [SellDate]) VALUES (16, 5, 4, 4500, CAST(N'2024-05-14' AS Date))
SET IDENTITY_INSERT [dbo].[PartnerProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[Partners] ON 

INSERT [dbo].[Partners] ([ID], [PartnerTypeID], [PartnerName], [DirectorID], [PartnerEmail], [PartnerPhone], [INN], [Rating], [AdressID]) VALUES (1, 1, N'База Строитель', 2, N'aleksandraivanova@ml.ru', N'+7 493 123 45 67', N'2222455179', 7, 5)
INSERT [dbo].[Partners] ([ID], [PartnerTypeID], [PartnerName], [DirectorID], [PartnerEmail], [PartnerPhone], [INN], [Rating], [AdressID]) VALUES (2, 1, N'МонтажПро', 5, N'stepanov@stepan.ru', N'+7 912 888 33 33', N'5552431140', 10, 4)
INSERT [dbo].[Partners] ([ID], [PartnerTypeID], [PartnerName], [DirectorID], [PartnerEmail], [PartnerPhone], [INN], [Rating], [AdressID]) VALUES (3, 3, N'Паркет 29', 3, N'vppetrov@vl.ru', N'+7 987 123 56 78', N'3333888520', 7, 2)
INSERT [dbo].[Partners] ([ID], [PartnerTypeID], [PartnerName], [DirectorID], [PartnerEmail], [PartnerPhone], [INN], [Rating], [AdressID]) VALUES (4, 2, N'Ремонт и отделка', 1, N'ekaterina.vorobeva@ml.ru', N'+7 444 222 33 11', N'1111520857', 5, 1)
INSERT [dbo].[Partners] ([ID], [PartnerTypeID], [PartnerName], [DirectorID], [PartnerEmail], [PartnerPhone], [INN], [Rating], [AdressID]) VALUES (5, 4, N'Стройсервис', 4, N'ansolovev@st.ru', N'+7 812 223 32 00', N'4440391035', 7, 3)
SET IDENTITY_INSERT [dbo].[Partners] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerType] ON 

INSERT [dbo].[PartnerType] ([ID], [TypeName]) VALUES (1, N'ЗАО')
INSERT [dbo].[PartnerType] ([ID], [TypeName]) VALUES (2, N'ОАО')
INSERT [dbo].[PartnerType] ([ID], [TypeName]) VALUES (3, N'ООО')
INSERT [dbo].[PartnerType] ([ID], [TypeName]) VALUES (4, N'ПАО')
SET IDENTITY_INSERT [dbo].[PartnerType] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID], [ProductTypeID], [ProductionName], [Article], [MinimalPartnerCost]) VALUES (1, 3, N'Инженерная доска Дуб Французская елка однополосная 12 мм', N'8858958', CAST(7330.99 AS Decimal(8, 2)))
INSERT [dbo].[Products] ([ID], [ProductTypeID], [ProductionName], [Article], [MinimalPartnerCost]) VALUES (2, 1, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', N'7750282', CAST(1799.33 AS Decimal(8, 2)))
INSERT [dbo].[Products] ([ID], [ProductTypeID], [ProductionName], [Article], [MinimalPartnerCost]) VALUES (3, 1, N'Ламинат Дуб серый 32 класс 8 мм с фаской', N'7028748', CAST(3890.41 AS Decimal(8, 2)))
INSERT [dbo].[Products] ([ID], [ProductTypeID], [ProductionName], [Article], [MinimalPartnerCost]) VALUES (4, 3, N'Паркетная доска Ясень темный однополосная 14 мм', N'8758385', CAST(4456.90 AS Decimal(8, 2)))
INSERT [dbo].[Products] ([ID], [ProductTypeID], [ProductionName], [Article], [MinimalPartnerCost]) VALUES (5, 4, N'Пробковое напольное клеевое покрытие 32 класс 4 мм', N'5012543', CAST(5450.59 AS Decimal(8, 2)))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([ID], [ProductTypeName], [Multiplier]) VALUES (1, N'Ламинат', CAST(2.35 AS Decimal(8, 2)))
INSERT [dbo].[ProductType] ([ID], [ProductTypeName], [Multiplier]) VALUES (2, N'Массивная доска', CAST(5.15 AS Decimal(8, 2)))
INSERT [dbo].[ProductType] ([ID], [ProductTypeName], [Multiplier]) VALUES (3, N'Паркетная доска', CAST(4.34 AS Decimal(8, 2)))
INSERT [dbo].[ProductType] ([ID], [ProductTypeName], [Multiplier]) VALUES (4, N'Пробковое покрытие', CAST(1.50 AS Decimal(8, 2)))
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
SET IDENTITY_INSERT [dbo].[Street] ON 

INSERT [dbo].[Street] ([ID], [StreetName]) VALUES (1, N'ул. Лесная')
INSERT [dbo].[Street] ([ID], [StreetName]) VALUES (2, N'ул. Парковая')
INSERT [dbo].[Street] ([ID], [StreetName]) VALUES (3, N'ул. Рабочая')
INSERT [dbo].[Street] ([ID], [StreetName]) VALUES (4, N'ул. Свободы')
INSERT [dbo].[Street] ([ID], [StreetName]) VALUES (5, N'ул. Строителей')
SET IDENTITY_INSERT [dbo].[Street] OFF
GO
ALTER TABLE [dbo].[Adress]  WITH CHECK ADD  CONSTRAINT [FK_Adress_Area] FOREIGN KEY([AreaID])
REFERENCES [dbo].[Area] ([ID])
GO
ALTER TABLE [dbo].[Adress] CHECK CONSTRAINT [FK_Adress_Area]
GO
ALTER TABLE [dbo].[Adress]  WITH CHECK ADD  CONSTRAINT [FK_Adress_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([ID])
GO
ALTER TABLE [dbo].[Adress] CHECK CONSTRAINT [FK_Adress_City]
GO
ALTER TABLE [dbo].[Adress]  WITH CHECK ADD  CONSTRAINT [FK_Adress_Index] FOREIGN KEY([IndexID])
REFERENCES [dbo].[Index] ([ID])
GO
ALTER TABLE [dbo].[Adress] CHECK CONSTRAINT [FK_Adress_Index]
GO
ALTER TABLE [dbo].[Adress]  WITH CHECK ADD  CONSTRAINT [FK_Adress_Street] FOREIGN KEY([StreetID])
REFERENCES [dbo].[Street] ([ID])
GO
ALTER TABLE [dbo].[Adress] CHECK CONSTRAINT [FK_Adress_Street]
GO
ALTER TABLE [dbo].[PartnerProducts]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProducts_Partners] FOREIGN KEY([PartnerID])
REFERENCES [dbo].[Partners] ([ID])
GO
ALTER TABLE [dbo].[PartnerProducts] CHECK CONSTRAINT [FK_PartnerProducts_Partners]
GO
ALTER TABLE [dbo].[PartnerProducts]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProducts_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
GO
ALTER TABLE [dbo].[PartnerProducts] CHECK CONSTRAINT [FK_PartnerProducts_Products]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_Adress] FOREIGN KEY([AdressID])
REFERENCES [dbo].[Adress] ([ID])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_Adress]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_Directors] FOREIGN KEY([DirectorID])
REFERENCES [dbo].[Directors] ([ID])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_Directors]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_PartnerType] FOREIGN KEY([PartnerTypeID])
REFERENCES [dbo].[PartnerType] ([ID])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_PartnerType]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductType] FOREIGN KEY([ProductTypeID])
REFERENCES [dbo].[ProductType] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductType]
GO
USE [master]
GO
ALTER DATABASE [MasterPol] SET  READ_WRITE 
GO
