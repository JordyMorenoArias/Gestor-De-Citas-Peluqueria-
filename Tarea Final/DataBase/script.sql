USE [master]
GO
/****** Object:  Database [SistemaGestionDB]    Script Date: 1/16/2025 5:09:31 PM ******/
CREATE DATABASE [SistemaGestionDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SistemaGestionDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER02\MSSQL\DATA\SistemaGestionDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SistemaGestionDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER02\MSSQL\DATA\SistemaGestionDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [SistemaGestionDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SistemaGestionDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SistemaGestionDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SistemaGestionDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SistemaGestionDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SistemaGestionDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SistemaGestionDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [SistemaGestionDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SistemaGestionDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SistemaGestionDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SistemaGestionDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SistemaGestionDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SistemaGestionDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SistemaGestionDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SistemaGestionDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SistemaGestionDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SistemaGestionDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SistemaGestionDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SistemaGestionDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SistemaGestionDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SistemaGestionDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SistemaGestionDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SistemaGestionDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SistemaGestionDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SistemaGestionDB] SET RECOVERY FULL 
GO
ALTER DATABASE [SistemaGestionDB] SET  MULTI_USER 
GO
ALTER DATABASE [SistemaGestionDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SistemaGestionDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SistemaGestionDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SistemaGestionDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SistemaGestionDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SistemaGestionDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SistemaGestionDB', N'ON'
GO
ALTER DATABASE [SistemaGestionDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [SistemaGestionDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [SistemaGestionDB]
GO
/****** Object:  Table [dbo].[Appointments]    Script Date: 1/16/2025 5:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointments](
	[AppointmentId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[ServiceId] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Hour] [time](7) NOT NULL,
	[Status] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[AppointmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 1/16/2025 5:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Position] [nvarchar](100) NULL,
	[HireDate] [date] NOT NULL,
	[Salary] [decimal](10, 2) NOT NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[History]    Script Date: 1/16/2025 5:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History](
	[HistoryId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[TableName] [nvarchar](100) NOT NULL,
	[Action] [nvarchar](50) NOT NULL,
	[ActionDate] [datetime] NULL,
	[Details] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[HistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 1/16/2025 5:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[ServiceId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[Price] [decimal](10, 2) NOT NULL,
	[Duration] [time](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/16/2025 5:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Email] [nvarchar](200) NOT NULL,
	[IdCard] [nvarchar](200) NULL,
	[Password] [nvarchar](200) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[PhoneNumber] [nvarchar](15) NULL,
	[IsAdmin] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmployeeId], [UserId], [Position], [HireDate], [Salary], [Status]) VALUES (2, 1, N'Barbero/a', CAST(N'2025-01-03' AS Date), CAST(1000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Employees] ([EmployeeId], [UserId], [Position], [HireDate], [Salary], [Status]) VALUES (3, 3, N'Recepcionista', CAST(N'2025-01-03' AS Date), CAST(446.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Employees] ([EmployeeId], [UserId], [Position], [HireDate], [Salary], [Status]) VALUES (4, 2, N'Barbero/a', CAST(N'2025-01-04' AS Date), CAST(950.00 AS Decimal(10, 2)), 1)
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Services] ON 

INSERT [dbo].[Services] ([ServiceId], [Name], [Description], [Price], [Duration]) VALUES (1, N'Corte Clásico', N'Corte de cabello tradicional con acabado profesional.', CAST(10.00 AS Decimal(10, 2)), CAST(N'00:30:00' AS Time))
INSERT [dbo].[Services] ([ServiceId], [Name], [Description], [Price], [Duration]) VALUES (3, N'Corte y Barba', N'Corte de cabello y perfilado de barba con navaja.', CAST(15.00 AS Decimal(10, 2)), CAST(N'01:00:00' AS Time))
INSERT [dbo].[Services] ([ServiceId], [Name], [Description], [Price], [Duration]) VALUES (4, N'Arreglo de Barba', N'Perfilado y diseño de barba con aceites hidratantes.', CAST(7.00 AS Decimal(10, 2)), CAST(N'00:20:00' AS Time))
INSERT [dbo].[Services] ([ServiceId], [Name], [Description], [Price], [Duration]) VALUES (5, N'Corte Premium', N'Corte personalizado con lavado, masajes y productos premium.', CAST(25.00 AS Decimal(10, 2)), CAST(N'01:15:00' AS Time))
INSERT [dbo].[Services] ([ServiceId], [Name], [Description], [Price], [Duration]) VALUES (6, N'Afeitado Clásico', N'Afeitado al ras con toalla caliente y crema especial.', CAST(12.00 AS Decimal(10, 2)), CAST(N'00:40:00' AS Time))
INSERT [dbo].[Services] ([ServiceId], [Name], [Description], [Price], [Duration]) VALUES (7, N'Diseño de Cejas	', N'Diseño y perfilado de cejas para un look definido.', CAST(5.00 AS Decimal(10, 2)), CAST(N'00:15:00' AS Time))
INSERT [dbo].[Services] ([ServiceId], [Name], [Description], [Price], [Duration]) VALUES (8, N'Paquete Ejecutivo', N'Corte, barba, mascarilla facial y masaje relajante.', CAST(30.00 AS Decimal(10, 2)), CAST(N'02:00:00' AS Time))
SET IDENTITY_INSERT [dbo].[Services] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [Name], [Email], [IdCard], [Password], [BirthDate], [PhoneNumber], [IsAdmin]) VALUES (1, N'Jordy Moreno Arias', N'yordimorenoarias.1@gmail.com', N'40210132201', N'd3ce868f577f0e6e36f9bb349e9a143e5cf268cd9224a02abe608f25b8ef9fd6', CAST(N'2004-01-17' AS Date), N'8493300467', 1)
INSERT [dbo].[Users] ([UserId], [Name], [Email], [IdCard], [Password], [BirthDate], [PhoneNumber], [IsAdmin]) VALUES (2, N'Yeison Moreno Arias', N'yeisonmoreno@gmail.com', N'40210232201', N'e2ba70a7ea7bd2914809f6ab30de36fcdfb63df7b4f636ac7762e7515c53c3d5', CAST(N'2002-01-05' AS Date), N'8293300467', 1)
INSERT [dbo].[Users] ([UserId], [Name], [Email], [IdCard], [Password], [BirthDate], [PhoneNumber], [IsAdmin]) VALUES (3, N'Fernado Villa Lona', N'Fernan@hotmail.com', N'40210332201', N'f11d709e3b6355f73484f12f055a9e9b82928293d5ff4d453a21d84bc707d94a', CAST(N'2000-02-09' AS Date), N'8095707050', 0)
INSERT [dbo].[Users] ([UserId], [Name], [Email], [IdCard], [Password], [BirthDate], [PhoneNumber], [IsAdmin]) VALUES (4, N'Admin Predeterminado
', N'admin@gmail.com', N'00112345678', N'c6ccc9b4f3e4a00eb3a2e83d1a1da533d0460235564726ab7e0a7e16b6d91933', CAST(N'1990-01-01' AS Date), N'8095551234', 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__User__3B7B33C320442C4E]    Script Date: 1/16/2025 5:09:31 PM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[IdCard] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__User__A9D105345790D5FC]    Script Date: 1/16/2025 5:09:31 PM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[History] ADD  DEFAULT (getdate()) FOR [ActionDate]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [IsAdmin]
GO
ALTER TABLE [dbo].[Appointments]  WITH NOCHECK ADD FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employees] ([EmployeeId])
GO
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Services] ([ServiceId])
GO
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[History]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
USE [master]
GO
ALTER DATABASE [SistemaGestionDB] SET  READ_WRITE 
GO
