USE Pisetskii_Poltorabatko_DB
GO
/****** Object:  Table [dbo].[Ads]    Script Date: 17.11.2025 16:12:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ads](
	[AdID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[PostDate] [datetime] NOT NULL,
	[CityID] [int] NULL,
	[CategoryID] [int] NULL,
	[AdTypeID] [int] NULL,
	[StatusID] [int] NULL,
	[Price] [money] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[AdID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdTypes]    Script Date: 17.11.2025 16:12:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdTypes](
	[AdTypeID] [int] IDENTITY(1,1) NOT NULL,
	[TypeDescription] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AdTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 17.11.2025 16:12:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 17.11.2025 16:12:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statuses]    Script Date: 17.11.2025 16:12:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statuses](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 17.11.2025 16:12:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[PasswordHash] [nvarchar](100) NOT NULL,
	[TotalProfit] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ads] ON 

GO

-- Добавляем столбец ImagePath в таблицу Ads
ALTER TABLE [dbo].[Ads]
ADD [ImagePath] [nvarchar](500) NULL
GO


INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (1, 10, N'Продажа дома', N'Участок 10 соток, все коммуникации', CAST(N'2025-05-04T00:00:00.000' AS DateTime), 4, 2, 2, 1, 21362.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (2, 20, N'Уборка квартир', N'Генеральная уборка, моем окна', CAST(N'2025-04-26T00:00:00.000' AS DateTime), 3, 4, 3, 2, 87371.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (3, 8, N'Уборка квартир', N'Генеральная уборка, моем окна', CAST(N'2025-03-09T00:00:00.000' AS DateTime), 2, 4, 1, 2, 85947.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (4, 11, N'Продам iPhone 13', N'Состояние отличное, полный комплект', CAST(N'2025-04-19T00:00:00.000' AS DateTime), 3, 5, 1, 1, 47780.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (5, 4, N'Продам ВАЗ 2107', N'Хорошее состояние, новая резина', CAST(N'2025-03-25T00:00:00.000' AS DateTime), 1, 1, 1, 1, 51527.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (6, 16, N'Услуги электрика', N'Быстро и качественно. Гарантия.', CAST(N'2025-03-08T00:00:00.000' AS DateTime), 3, 4, 1, 1, 25184.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (7, 12, N'Продам ВАЗ 2107', N'Хорошее состояние, новая резина', CAST(N'2025-03-09T00:00:00.000' AS DateTime), 5, 1, 1, 1, 89389.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (8, 10, N'Сдам квартиру', N'2-комнатная, рядом с метро', CAST(N'2025-03-28T00:00:00.000' AS DateTime), 3, 2, 2, 1, 64047.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (9, 7, N'Продам куртку', N'Новая зимняя куртка, размер M', CAST(N'2025-03-19T00:00:00.000' AS DateTime), 1, 3, 1, 1, 39483.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (10, 6, N'Аренда авто', N'Почасовая аренда, документы в порядке', CAST(N'2025-03-18T00:00:00.000' AS DateTime), 4, 1, 1, 1, 41496.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (11, 15, N'Аренда авто', N'Почасовая аренда, документы в порядке', CAST(N'2025-04-09T00:00:00.000' AS DateTime), 5, 1, 1, 2, 28813.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (12, 16, N'Услуги электрика', N'Быстро и качественно. Гарантия.', CAST(N'2025-03-23T00:00:00.000' AS DateTime), 2, 4, 3, 1, 1808.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (13, 1, N'Продам iPhone 13', N'Состояние отличное, полный комплект', CAST(N'2025-04-30T00:00:00.000' AS DateTime), 5, 5, 2, 2, 26117.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (14, 8, N'Услуги электрика', N'Быстро и качественно. Гарантия.', CAST(N'2025-04-10T00:00:00.000' AS DateTime), 2, 4, 3, 1, 73353.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (15, 11, N'Услуги электрика', N'Быстро и качественно. Гарантия.', CAST(N'2025-03-20T00:00:00.000' AS DateTime), 3, 4, 3, 2, 20177.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (16, 9, N'Аренда авто', N'Почасовая аренда, документы в порядке', CAST(N'2025-03-17T00:00:00.000' AS DateTime), 4, 1, 1, 1, 27648.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (17, 10, N'Продам куртку', N'Новая зимняя куртка, размер M', CAST(N'2025-04-30T00:00:00.000' AS DateTime), 1, 3, 1, 1, 10129.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (18, 10, N'Ноутбук Acer', N'Core i7, SSD 512 ГБ, как новый', CAST(N'2025-04-14T00:00:00.000' AS DateTime), 4, 5, 2, 1, 29522.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (19, 17, N'Аренда авто', N'Почасовая аренда, документы в порядке', CAST(N'2025-03-15T00:00:00.000' AS DateTime), 3, 1, 3, 1, 40477.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (20, 17, N'Джинсы мужские', N'Состояние хорошее, размер 32', CAST(N'2025-03-21T00:00:00.000' AS DateTime), 3, 3, 3, 2, 50531.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (21, 7, N'Аренда авто', N'Почасовая аренда, документы в порядке', CAST(N'2025-04-15T00:00:00.000' AS DateTime), 4, 1, 2, 1, 60821.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (22, 15, N'Продажа дома', N'Участок 10 соток, все коммуникации', CAST(N'2025-05-03T00:00:00.000' AS DateTime), 4, 2, 1, 1, 34058.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (23, 17, N'Продажа дома', N'Участок 10 соток, все коммуникации', CAST(N'2025-04-30T00:00:00.000' AS DateTime), 2, 2, 1, 2, 31878.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (24, 9, N'Продам iPhone 13', N'Состояние отличное, полный комплект', CAST(N'2025-04-07T00:00:00.000' AS DateTime), 3, 5, 1, 2, 61358.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (25, 4, N'Продам ВАЗ 2107', N'Хорошее состояние, новая резина', CAST(N'2025-03-07T00:00:00.000' AS DateTime), 4, 1, 2, 2, 81792.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (26, 11, N'Услуги электрика', N'Быстро и качественно. Гарантия.', CAST(N'2025-04-24T00:00:00.000' AS DateTime), 2, 4, 3, 2, 11113.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (27, 18, N'Аренда авто', N'Почасовая аренда, документы в порядке', CAST(N'2025-03-07T00:00:00.000' AS DateTime), 1, 1, 1, 1, 70726.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (28, 13, N'Услуги электрика', N'Быстро и качественно. Гарантия.', CAST(N'2025-03-19T00:00:00.000' AS DateTime), 3, 4, 2, 1, 65931.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (29, 16, N'Уборка квартир', N'Генеральная уборка, моем окна', CAST(N'2025-03-20T00:00:00.000' AS DateTime), 3, 4, 2, 2, 57170.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (30, 8, N'Услуги электрика', N'Быстро и качественно. Гарантия.', CAST(N'2025-04-02T00:00:00.000' AS DateTime), 2, 4, 3, 1, 29335.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (31, 17, N'Аренда авто', N'Почасовая аренда, документы в порядке', CAST(N'2025-04-26T00:00:00.000' AS DateTime), 4, 1, 3, 2, 15509.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (32, 1, N'Продам куртку', N'Новая зимняя куртка, размер M', CAST(N'2025-03-11T00:00:00.000' AS DateTime), 5, 3, 3, 1, 22767.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (33, 16, N'Джинсы мужские', N'Состояние хорошее, размер 32', CAST(N'2025-03-08T00:00:00.000' AS DateTime), 1, 3, 2, 1, 1484.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (34, 18, N'Уборка квартир', N'Генеральная уборка, моем окна', CAST(N'2025-04-29T00:00:00.000' AS DateTime), 1, 4, 2, 2, 77129.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (35, 14, N'Ноутбук Acer', N'Core i7, SSD 512 ГБ, как новый', CAST(N'2025-05-01T00:00:00.000' AS DateTime), 2, 5, 1, 1, 51598.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (36, 16, N'Продам iPhone 13', N'Состояние отличное, полный комплект', CAST(N'2025-03-30T00:00:00.000' AS DateTime), 2, 5, 2, 1, 33265.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (37, 5, N'Уборка квартир', N'Генеральная уборка, моем окна', CAST(N'2025-03-12T00:00:00.000' AS DateTime), 1, 4, 2, 2, 95719.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (38, 2, N'Аренда авто', N'Почасовая аренда, документы в порядке', CAST(N'2025-04-30T00:00:00.000' AS DateTime), 4, 1, 2, 1, 88532.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (39, 5, N'Сдам квартиру', N'2-комнатная, рядом с метро', CAST(N'2025-03-20T00:00:00.000' AS DateTime), 3, 2, 2, 2, 82786.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (40, 5, N'Уборка квартир', N'Генеральная уборка, моем окна', CAST(N'2025-03-08T00:00:00.000' AS DateTime), 5, 4, 3, 2, 22411.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (41, 3, N'Аренда авто', N'Почасовая аренда, документы в порядке', CAST(N'2025-04-10T00:00:00.000' AS DateTime), 4, 1, 1, 1, 13740.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (42, 12, N'Аренда авто', N'Почасовая аренда, документы в порядке', CAST(N'2025-04-28T00:00:00.000' AS DateTime), 1, 1, 3, 1, 2132.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (43, 13, N'Услуги электрика', N'Быстро и качественно. Гарантия.', CAST(N'2025-04-18T00:00:00.000' AS DateTime), 4, 4, 3, 2, 13627.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (44, 10, N'Уборка квартир', N'Генеральная уборка, моем окна', CAST(N'2025-04-13T00:00:00.000' AS DateTime), 4, 4, 3, 1, 79256.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (45, 9, N'Продам ВАЗ 2107', N'Хорошее состояние, новая резина', CAST(N'2025-03-29T00:00:00.000' AS DateTime), 5, 1, 3, 2, 33644.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (46, 14, N'Продажа дома', N'Участок 10 соток, все коммуникации', CAST(N'2025-03-25T00:00:00.000' AS DateTime), 2, 2, 1, 1, 28414.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (47, 12, N'Ноутбук Acer', N'Core i7, SSD 512 ГБ, как новый', CAST(N'2025-04-16T00:00:00.000' AS DateTime), 3, 5, 1, 2, 6426.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (48, 19, N'Джинсы мужские', N'Состояние хорошее, размер 32', CAST(N'2025-04-01T00:00:00.000' AS DateTime), 4, 3, 1, 1, 10988.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (49, 12, N'Аренда авто', N'Почасовая аренда, документы в порядке', CAST(N'2025-04-03T00:00:00.000' AS DateTime), 3, 1, 3, 1, 11283.0000, 1)
INSERT [dbo].[Ads] ([AdID], [UserID], [Title], [Description], [PostDate], [CityID], [CategoryID], [AdTypeID], [StatusID], [Price], [IsActive]) VALUES (50, 6, N'Сдам квартиру', N'2-комнатная, рядом с метро', CAST(N'2025-04-11T00:00:00.000' AS DateTime), 4, 2, 1, 2, 96721.0000, 1)
SET IDENTITY_INSERT [dbo].[Ads] OFF
GO
SET IDENTITY_INSERT [dbo].[AdTypes] ON 

INSERT [dbo].[AdTypes] ([AdTypeID], [TypeDescription]) VALUES (1, N'Аренда')
INSERT [dbo].[AdTypes] ([AdTypeID], [TypeDescription]) VALUES (2, N'Продажа')
INSERT [dbo].[AdTypes] ([AdTypeID], [TypeDescription]) VALUES (3, N'Услуга')
SET IDENTITY_INSERT [dbo].[AdTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (1, N'Авто')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (2, N'Недвижимость')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (3, N'Одежда')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (4, N'Услуги')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (5, N'Электроника')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Cities] ON 

INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (1, N'Екатеринбург')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (2, N'Казань')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (3, N'Москва')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (4, N'Новосибирск')
INSERT [dbo].[Cities] ([CityID], [CityName]) VALUES (5, N'Санкт-Петербург')
SET IDENTITY_INSERT [dbo].[Cities] OFF
GO
SET IDENTITY_INSERT [dbo].[Statuses] ON 

INSERT [dbo].[Statuses] ([StatusID], [StatusName]) VALUES (1, N'Активно')
INSERT [dbo].[Statuses] ([StatusID], [StatusName]) VALUES (2, N'Завершено')
SET IDENTITY_INSERT [dbo].[Statuses] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [Login], [PasswordHash], [TotalProfit]) VALUES (1, N'user1', N'pass1', 0.0000)
INSERT [dbo].[Users] ([UserID], [Login], [PasswordHash], [TotalProfit]) VALUES (2, N'user10', N'pass10', 0.0000)
INSERT [dbo].[Users] ([UserID], [Login], [PasswordHash], [TotalProfit]) VALUES (3, N'user11', N'pass11', 0.0000)
INSERT [dbo].[Users] ([UserID], [Login], [PasswordHash], [TotalProfit]) VALUES (4, N'user12', N'pass12', 0.0000)
INSERT [dbo].[Users] ([UserID], [Login], [PasswordHash], [TotalProfit]) VALUES (5, N'user13', N'pass13', 0.0000)
INSERT [dbo].[Users] ([UserID], [Login], [PasswordHash], [TotalProfit]) VALUES (6, N'user14', N'pass14', 0.0000)
INSERT [dbo].[Users] ([UserID], [Login], [PasswordHash], [TotalProfit]) VALUES (7, N'user15', N'pass15', 0.0000)
INSERT [dbo].[Users] ([UserID], [Login], [PasswordHash], [TotalProfit]) VALUES (8, N'user16', N'pass16', 0.0000)
INSERT [dbo].[Users] ([UserID], [Login], [PasswordHash], [TotalProfit]) VALUES (9, N'user17', N'pass17', 0.0000)
INSERT [dbo].[Users] ([UserID], [Login], [PasswordHash], [TotalProfit]) VALUES (10, N'user18', N'pass18', 0.0000)
INSERT [dbo].[Users] ([UserID], [Login], [PasswordHash], [TotalProfit]) VALUES (11, N'user19', N'pass19', 0.0000)
INSERT [dbo].[Users] ([UserID], [Login], [PasswordHash], [TotalProfit]) VALUES (12, N'user2', N'pass2', 0.0000)
INSERT [dbo].[Users] ([UserID], [Login], [PasswordHash], [TotalProfit]) VALUES (13, N'user20', N'pass20', 0.0000)
INSERT [dbo].[Users] ([UserID], [Login], [PasswordHash], [TotalProfit]) VALUES (14, N'user3', N'pass3', 0.0000)
INSERT [dbo].[Users] ([UserID], [Login], [PasswordHash], [TotalProfit]) VALUES (15, N'user4', N'pass4', 0.0000)
INSERT [dbo].[Users] ([UserID], [Login], [PasswordHash], [TotalProfit]) VALUES (16, N'user5', N'pass5', 0.0000)
INSERT [dbo].[Users] ([UserID], [Login], [PasswordHash], [TotalProfit]) VALUES (17, N'user6', N'pass6', 0.0000)
INSERT [dbo].[Users] ([UserID], [Login], [PasswordHash], [TotalProfit]) VALUES (18, N'user7', N'pass7', 0.0000)
INSERT [dbo].[Users] ([UserID], [Login], [PasswordHash], [TotalProfit]) VALUES (19, N'user8', N'pass8', 0.0000)
INSERT [dbo].[Users] ([UserID], [Login], [PasswordHash], [TotalProfit]) VALUES (20, N'user9', N'pass9', 0.0000)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__5E55825BD9D61570]    Script Date: 17.11.2025 16:12:18 ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Ads] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [TotalProfit]
GO
ALTER TABLE [dbo].[Ads]  WITH CHECK ADD FOREIGN KEY([AdTypeID])
REFERENCES [dbo].[AdTypes] ([AdTypeID])
GO
ALTER TABLE [dbo].[Ads]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Ads]  WITH CHECK ADD FOREIGN KEY([CityID])
REFERENCES [dbo].[Cities] ([CityID])
GO
ALTER TABLE [dbo].[Ads]  WITH CHECK ADD FOREIGN KEY([StatusID])
REFERENCES [dbo].[Statuses] ([StatusID])
GO
ALTER TABLE [dbo].[Ads]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
