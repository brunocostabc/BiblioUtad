/****** PRIMEIRAMENTE CRIAR BASE DE DADOS COM O NOME BiblioUtadDB e SÓ DEPOIS EXECUTAR a QUERY ******/
USE [master]
GO
/****** Object:  Database [BiblioUtadDB]    Script Date: 04/01/2025 01:24:04 ******/
CREATE DATABASE [BiblioUtadDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BiblioUtadDB', FILENAME = N'C:\Users\Luís Lemos\BiblioUtadDB.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BiblioUtadDB_log', FILENAME = N'C:\Users\Luís Lemos\BiblioUtadDB_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BiblioUtadDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BiblioUtadDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BiblioUtadDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BiblioUtadDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BiblioUtadDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BiblioUtadDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BiblioUtadDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [BiblioUtadDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BiblioUtadDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BiblioUtadDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BiblioUtadDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BiblioUtadDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BiblioUtadDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BiblioUtadDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BiblioUtadDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BiblioUtadDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BiblioUtadDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BiblioUtadDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BiblioUtadDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BiblioUtadDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BiblioUtadDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BiblioUtadDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BiblioUtadDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BiblioUtadDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BiblioUtadDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BiblioUtadDB] SET  MULTI_USER 
GO
ALTER DATABASE [BiblioUtadDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BiblioUtadDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BiblioUtadDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BiblioUtadDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BiblioUtadDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BiblioUtadDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BiblioUtadDB] SET QUERY_STORE = OFF
GO
USE [BiblioUtadDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 04/01/2025 01:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 04/01/2025 01:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 04/01/2025 01:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 04/01/2025 01:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 04/01/2025 01:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 04/01/2025 01:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 04/01/2025 01:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[BlockedReason] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 04/01/2025 01:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Autores]    Script Date: 04/01/2025 01:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Emprestimos]    Script Date: 04/01/2025 01:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emprestimos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LivroId] [int] NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[DataEmprestimo] [datetime2](7) NOT NULL,
	[DataDevolucao] [datetime2](7) NULL,
	[Devolvido] [bit] NOT NULL,
 CONSTRAINT [PK_Emprestimos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Generos]    Script Date: 04/01/2025 01:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Generos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Generos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Livros]    Script Date: 04/01/2025 01:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Livros](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [nvarchar](max) NOT NULL,
	[Autor] [nvarchar](max) NOT NULL,
	[Genero] [nvarchar](max) NOT NULL,
	[ISBN] [nvarchar](max) NOT NULL,
	[Preco] [decimal](18, 2) NOT NULL,
	[NumeroExemplares] [int] NOT NULL,
	[CaminhoImagem] [nvarchar](max) NULL,
	[DataLancamento] [datetime2](7) NOT NULL,
	[Descricao] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Livros] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notificacoes]    Script Date: 04/01/2025 01:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notificacoes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[Mensagem] [nvarchar](max) NOT NULL,
	[Lida] [bit] NOT NULL,
	[DataCriacao] [datetime2](7) NOT NULL,
	[LivroId] [int] NULL,
 CONSTRAINT [PK_Notificacoes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subscribers]    Script Date: 04/01/2025 01:24:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscribers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Subscribers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241217233026_InitialMigration', N'8.0.11')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241230154416_AddEmailNotificationPreference', N'8.0.11')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250103230137_AlterLivroImagem', N'8.0.11')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'0c0cbad0-926c-499c-85e1-6ef794350015', N'Administrador', N'ADMINISTRADOR', NULL)
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'16816ead-6034-4c82-ad85-d512d24a317b', N'Leitor', N'LEITOR', NULL)
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'4015f0dd-8b8c-4666-ac4c-0f8501b1d91c', N'Bibliotecario', N'BIBLIOTECARIO', NULL)
GO
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] ON 
GO
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1, N'9174a887-e173-4813-88c9-de3c2d604b74', N'LastLogin', N'2024-11-30T15:29:16.3490290Z')
GO
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'0c0cbad0-926c-499c-85e1-6ef794350015')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'0c0cbad0-926c-499c-85e1-6ef794350015')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'0c0cbad0-926c-499c-85e1-6ef794350015')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'0c0cbad0-926c-499c-85e1-6ef794350015')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'0c0cbad0-926c-499c-85e1-6ef794350015')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9174a887-e173-4813-88c9-de3c2d604b74', N'0c0cbad0-926c-499c-85e1-6ef794350015')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'0c0cbad0-926c-499c-85e1-6ef794350015')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7bf63eb3-89c0-4be3-b6ef-e7dbe13c2344', N'16816ead-6034-4c82-ad85-d512d24a317b')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd5c497a7-b159-45d1-9e0a-937757ca7809', N'16816ead-6034-4c82-ad85-d512d24a317b')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd711f3cd-886c-49a0-aac7-e4065b570e57', N'16816ead-6034-4c82-ad85-d512d24a317b')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'4015f0dd-8b8c-4666-ac4c-0f8501b1d91c')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'4015f0dd-8b8c-4666-ac4c-0f8501b1d91c')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'4015f0dd-8b8c-4666-ac4c-0f8501b1d91c')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'4015f0dd-8b8c-4666-ac4c-0f8501b1d91c')
GO
INSERT [dbo].[AspNetUsers] ([Id], [BlockedReason], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'Foi Bloqueado porque é burro', N'Bibliotecario1', N'BIBLIOTECARIO1', N'bibliotecario1@biblioutad.com', N'BIBLIOTECARIO1@BIBLIOUTAD.COM', 0, N'AQAAAAIAAYagAAAAEDWDQaCh1kxnQl9RzibNDnmrNwOWWA4bGiStz32S13YKMcm1Pnmjy/6TPw37Lp/ssw==', N'M7N55D52MQ56DCNL7I3FRXM2O3L3SRAV', N'1f81ea67-2297-4cc0-8ea1-94969e6b9ad0', N'919293949', 0, 0, CAST(N'9999-12-31T23:59:59.9999999+00:00' AS DateTimeOffset), 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [BlockedReason], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', NULL, N'luis', N'LUIS', N'luis@adminbiblioutad.com', N'LUIS@ADMINBIBLIOUTAD.COM', 1, N'AQAAAAIAAYagAAAAEJNLWZAigDxdo6IgwZxOIcp27tRd2ue5mAmr5t7wUSACW90ZNVqUKhfp0GLRMF57Pg==', N'2024-11-30T14:54:57.8811711Z', N'a0fa8451-ead4-4845-b87a-203e8266fb67', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [BlockedReason], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', NULL, N'Bibliotecario3', N'BIBLIOTECARIO3', N'bibliotecario3@biblioutad.com', N'BIBLIOTECARIO3@BIBLIOUTAD.COM', 1, N'AQAAAAIAAYagAAAAEK3AgTa4Lp8r4QxZIEp/W7WqI/47DUUDWlgxK1qSJDgnYt1WUmOZPczSaesv0qqRMA==', N'A2Y62TJLMMK3MFFS7XSFJOG7X2GZ2VEM', N'8288cd63-294d-4d0a-aa36-10b7d09b9e58', N'999888777', 0, 0, NULL, 0, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [BlockedReason], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2ba95715-2582-4c6b-be29-a7883c0a3da6', NULL, N'bernardo', N'BERNARDO', N'bernardo@adminbiblioutad.com', N'BERNARDO@ADMINBIBLIOUTAD.COM', 1, N'AQAAAAIAAYagAAAAEDGuvoaBxntmTJArioi600x95AwCHhr0SfulDklOhZWDuTiBxt2aOFzdYVJmsEK8Xw==', N'Q3XP2Y6R5I56B4BFABLP5N4BNNJ4N3MB', N'9e103abe-2218-4bfa-bedd-2ad382afa9a8', NULL, 0, 0, NULL, 0, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [BlockedReason], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3a911ae7-7649-4800-865e-b5ca3d0d419d', NULL, N'brunocosta', N'BRUNOCOSTA', N'brunocosta@adminbiblioutad.com', N'BRUNOCOSTA@ADMINBIBLIOUTAD.COM', 1, N'AQAAAAIAAYagAAAAEGY4Wl8ODSoNld743K/S7mcqQe0JKReJ8MY4vOOSdMkVJhovrkxohYQ83MnHNsd72g==', N'YXYVWOG4VRJLC5MNO5PXCVNYS5XJUOAS', N'8f4e832e-f67f-4e48-9a83-31417dcdac68', N'Não Disponível', 0, 0, NULL, 0, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [BlockedReason], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'Foi Bloqueado porque', N'Bibliotecario5', N'BIBLIOTECARIO5', N'bibliotecario5@biblioutad.com', N'BIBLIOTECARIO5@BIBLIOUTAD.COM', 0, N'AQAAAAIAAYagAAAAEDfBQyf1Pe6ttpuE3SV9YhqRawpMFa02OBI5+GEgH/VF+ub/WzMJys/6XpzW79UCCg==', N'Y32U5GE3CWCPREFPRH22LHDMXZFWRZBZ', N'43cbf358-2a15-459d-8492-ebc0f6e01627', N'912345678', 0, 0, CAST(N'9999-12-31T23:59:59.9999999+00:00' AS DateTimeOffset), 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [BlockedReason], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5684c756-f3dd-42e5-8c58-e2493547c4ff', NULL, N'admin', N'ADMIN', N'admin@biblioutad.com', N'ADMIN@BIBLIOUTAD.COM', 1, N'AQAAAAIAAYagAAAAEKAxZdqjTpKCJ/h7JzRKMfzYKC+AVeNcA7/9/PNRSjlgGJRsb9Gt/2jUNABGbjMPAA==', N'UDTME2QPQJUX2OLGJNTZT5HCUO3FHUGL', N'83889148-7264-4de7-bfe4-df0819bb0052', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [BlockedReason], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', NULL, N'Luís André Lemos', N'LUÍS ANDRÉ LEMOS', N'lemosluis547@gmail.com', N'LEMOSLUIS547@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEA65ver/58D57ShXLZKmNDuvSpejj9fWLFq3EsIdvSHQzcgEcab4K8GmZRhjKWnD4A==', N'A7IIB2D7NUBEYD7BPYXJHNYZ4OQ5KMOQ', N'9b070625-e034-4f5a-b974-2eb90c16d053', N'967138113', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [BlockedReason], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7bf63eb3-89c0-4be3-b6ef-e7dbe13c2344', NULL, N'Jose', N'JOSE', N'josemarinho2004@gmail.com', N'JOSEMARINHO2004@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEJ8L35cNxlb+9vjM7/jewzGkAZn6dc1rzOrGtXeRaMzdjJFOjBPCosNCJOynRrKDnQ==', N'MFUITV65FBCYF63NKW6THO36JU3SM36P', N'29375806-5b3e-473d-952e-18a7a7454189', N'919879427', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [BlockedReason], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8db0aefc-31ca-4824-acec-a96aaa921a16', NULL, N'bibliotecario6', N'BIBLIOTECARIO6', N'bibliotecario6@biblioutad.com', N'BIBLIOTECARIO6@BIBLIOUTAD.COM', 0, N'AQAAAAIAAYagAAAAEH8eSixOMqVdUI5QFTXUYYeKr5FZJxl6admUa/9gVGnUyBano6We+swNN7u0y/T3LA==', N'CHFJ44LDQRQFXJDDT2ETJY5I3ER5E77V', N'b1a851a4-b933-429b-8e50-83a647345d24', N'12', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [BlockedReason], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9174a887-e173-4813-88c9-de3c2d604b74', NULL, N'zevacao', N'ZEVACAO', N'zevacao@adminbiblioutad.com', N'ZEVACAO@ADMINBIBLIOUTAD.COM', 1, N'AQAAAAIAAYagAAAAEDIgrapZFZu7SbcRb0kC8+C8YohXTYO7lOuo4h4u9JxZhEJVGBldOWudvcki/z7Ghw==', N'UEG264E7OJC3JIIXFHJLPEHJUGP6Z75Z', N'da0b6a86-8073-4e44-b32d-4398ea0eb2e3', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [BlockedReason], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd5c497a7-b159-45d1-9e0a-937757ca7809', NULL, N'sergio', N'SERGIO', N'sergiomoniz2002@gmail.com', N'SERGIOMONIZ2002@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEDgZJzx+CJKj3jnrpDAZI4ueKIek7sEBLJBWvrV7Btv0/yTkUFFKnCBDtzIohyIpwg==', N'ZGYISB3VDI2BCB2OPQO4ANF2N3NNCBTE', N'5a6113b2-5f6c-498a-9d46-41314415de77', N'933068580', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [BlockedReason], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd711f3cd-886c-49a0-aac7-e4065b570e57', NULL, N'LemosPOV', N'LEMOSPOV', N'lemospov@gmail.com', N'LEMOSPOV@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEPmSIO+Ac9IwNlOc5AN4ITKiVfKMh9p+fm8//aOzq81W1SB/OcAd2iLH05d1KJcG4g==', N'HCTKOWERJKARYIDX6UHOXJ2LYFGO2KJS', N'49393b58-ac02-4038-a8ca-e7171c30db07', N'+351967138113', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [BlockedReason], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', NULL, N'BiblioUTAD', N'BIBLIOUTAD', N'biblioutad@gmail.com', N'BIBLIOUTAD@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEB0gG5Dx3QiwfK7kh4jpNq7S3RAI6ZMVWlc9JYrl7W5Pz59XCX0mt054ZWj0B21Jkw==', N'HI7MCHG7OGOTHQKNYNR2RGQZETHVZ5JZ', N'152ec84c-85c2-4959-928b-42ee573fd646', N'+351967138113', 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Autores] ON 
GO
INSERT [dbo].[Autores] ([Id], [Nome]) VALUES (1, N'Neil Fiore')
GO
INSERT [dbo].[Autores] ([Id], [Nome]) VALUES (2, N'Manuel Clemente')
GO
INSERT [dbo].[Autores] ([Id], [Nome]) VALUES (3, N'Jonathan Black')
GO
INSERT [dbo].[Autores] ([Id], [Nome]) VALUES (4, N'Dr. David Walton')
GO
INSERT [dbo].[Autores] ([Id], [Nome]) VALUES (5, N'Freida McFadden')
GO
INSERT [dbo].[Autores] ([Id], [Nome]) VALUES (6, N'James Hannam')
GO
INSERT [dbo].[Autores] ([Id], [Nome]) VALUES (7, N'William Walker Atkinson')
GO
INSERT [dbo].[Autores] ([Id], [Nome]) VALUES (8, N'A. Victor Segno')
GO
INSERT [dbo].[Autores] ([Id], [Nome]) VALUES (9, N'Jessica Easto')
GO
INSERT [dbo].[Autores] ([Id], [Nome]) VALUES (10, N'Orison Swett Marden')
GO
INSERT [dbo].[Autores] ([Id], [Nome]) VALUES (11, N'Joe Rosenblum')
GO
SET IDENTITY_INSERT [dbo].[Autores] OFF
GO
SET IDENTITY_INSERT [dbo].[Emprestimos] ON 
GO
INSERT [dbo].[Emprestimos] ([Id], [LivroId], [UserId], [UserName], [DataEmprestimo], [DataDevolucao], [Devolvido]) VALUES (34, 29, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'luis', CAST(N'2024-12-13T18:35:37.8033468' AS DateTime2), CAST(N'2024-12-28T18:35:37.8031093' AS DateTime2), 0)
GO
INSERT [dbo].[Emprestimos] ([Id], [LivroId], [UserId], [UserName], [DataEmprestimo], [DataDevolucao], [Devolvido]) VALUES (39, 31, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'Luis Andre Lemos', CAST(N'2024-12-29T23:53:43.8426074' AS DateTime2), CAST(N'2024-12-29T23:55:36.7741840' AS DateTime2), 1)
GO
INSERT [dbo].[Emprestimos] ([Id], [LivroId], [UserId], [UserName], [DataEmprestimo], [DataDevolucao], [Devolvido]) VALUES (43, 38, N'd711f3cd-886c-49a0-aac7-e4065b570e57', N'LemosPOV', CAST(N'2025-01-04T00:19:44.4859722' AS DateTime2), CAST(N'2025-01-19T00:19:44.4859693' AS DateTime2), 0)
GO
SET IDENTITY_INSERT [dbo].[Emprestimos] OFF
GO
SET IDENTITY_INSERT [dbo].[Generos] ON 
GO
INSERT [dbo].[Generos] ([Id], [Nome]) VALUES (1, N'Ficção')
GO
INSERT [dbo].[Generos] ([Id], [Nome]) VALUES (2, N'Drama')
GO
INSERT [dbo].[Generos] ([Id], [Nome]) VALUES (3, N'Fantasia')
GO
INSERT [dbo].[Generos] ([Id], [Nome]) VALUES (4, N'Ciência')
GO
INSERT [dbo].[Generos] ([Id], [Nome]) VALUES (5, N'Romance')
GO
INSERT [dbo].[Generos] ([Id], [Nome]) VALUES (6, N'Terror')
GO
INSERT [dbo].[Generos] ([Id], [Nome]) VALUES (7, N'Crime')
GO
INSERT [dbo].[Generos] ([Id], [Nome]) VALUES (8, N'AutoAjuda')
GO
INSERT [dbo].[Generos] ([Id], [Nome]) VALUES (9, N'História')
GO
INSERT [dbo].[Generos] ([Id], [Nome]) VALUES (10, N'Guerra')
GO
INSERT [dbo].[Generos] ([Id], [Nome]) VALUES (11, N'Espiritualidade')
GO
INSERT [dbo].[Generos] ([Id], [Nome]) VALUES (12, N'Gestão')
GO
SET IDENTITY_INSERT [dbo].[Generos] OFF
GO
SET IDENTITY_INSERT [dbo].[Livros] ON 
GO
INSERT [dbo].[Livros] ([Id], [Titulo], [Autor], [Genero], [ISBN], [Preco], [NumeroExemplares], [CaminhoImagem], [DataLancamento], [Descricao]) VALUES (26, N'O Hábito de Fazer Agora', N'Neil Fiore', N'AutoAjuda', N'9789895701469', CAST(13.95 AS Decimal(18, 2)), 10, N'/livros/o-habito-de-fazer-agora-.png', CAST(N'2023-08-10T00:00:00.0000000' AS DateTime2), N'O Hábito de Fazer Agora é um dos livros mais vendidos de sempre sobre gestão do tempo, organização, positividade e foco. Ao ultrapassar a sua procrastinação, não só desfrutará de uma maior produtividade, como também se libertará da culpa e da vergonha de adiar , melhorará a sua autoestima e terá mais tempo para se divertir sem culpa, ao mesmo tempo que melhora a qualidade do seu trabalho.')
GO
INSERT [dbo].[Livros] ([Id], [Titulo], [Autor], [Genero], [ISBN], [Preco], [NumeroExemplares], [CaminhoImagem], [DataLancamento], [Descricao]) VALUES (27, N'Sem Ti Não Vais a Lado Nenhum', N'Manuel Clemente', N'AutoAjuda', N'9789895702664', CAST(12.76 AS Decimal(18, 2)), 10, N'/livros/sem-ti-nao-vais-a-lado-nenhum.png', CAST(N'2024-05-01T00:00:00.0000000' AS DateTime2), N'Sem Ti Não Vais a Lado Nenhum não nos dá fórmulas instantâneas nem receitas imediatas. Oferece, sim, uma nova perspetiva sobre as nossas vidas. Um mergulho leve, mas profundo, por entre as questões que a todos importam. Um testemunho honesto, despretensioso e genuíno de quem, à semelhança do leitor, tenta todos os dias ser fiel a si próprio.')
GO
INSERT [dbo].[Livros] ([Id], [Titulo], [Autor], [Genero], [ISBN], [Preco], [NumeroExemplares], [CaminhoImagem], [DataLancamento], [Descricao]) VALUES (28, N'História Secreta do Mundo', N'Jonathan Black', N'História', N'9789898907226', CAST(19.96 AS Decimal(18, 2)), 10, N'/livros/historia-secreta-do-mundo.png', CAST(N'2018-05-12T00:00:00.0000000' AS DateTime2), N'Os grandes mistérios da História desde a Antiguidade até aos nossos dias com base na filosofia e nos ensinamentos das sociedades secretas.')
GO
INSERT [dbo].[Livros] ([Id], [Titulo], [Autor], [Genero], [ISBN], [Preco], [NumeroExemplares], [CaminhoImagem], [DataLancamento], [Descricao]) VALUES (29, N'Inteligência Emocional', N'Dr. David Walton', N'AutoAjuda', N'9789895700271', CAST(12.76 AS Decimal(18, 2)), 0, N'/livros/inteligencia-emocional.png', CAST(N'2022-08-28T00:00:00.0000000' AS DateTime2), N'Um guia prático para cultivar a empatia, ultrapassar conflitos e melhorar as suas relações')
GO
INSERT [dbo].[Livros] ([Id], [Titulo], [Autor], [Genero], [ISBN], [Preco], [NumeroExemplares], [CaminhoImagem], [DataLancamento], [Descricao]) VALUES (31, N'Nunca Mintas', N'Freida McFadden', N'Crime', N'9789895702503', CAST(15.96 AS Decimal(18, 2)), 5, N'/livros/nunca-mintas.png', CAST(N'2024-04-24T00:00:00.0000000' AS DateTime2), N'Tricia e Ethan, recém-casados, estão à procura da casa dos seus sonhos.
Quando visitam a remota mansão que pertenceu à Dra. Adrienne Hale, uma psiquiatra de renome que desapareceu misteriosamente sem deixar rasto quatro anos antes, uma violenta tempestade de inverno prende-os na propriedade… sem qualquer hipótese de sair de lá até que o nevão termine.
')
GO
INSERT [dbo].[Livros] ([Id], [Titulo], [Autor], [Genero], [ISBN], [Preco], [NumeroExemplares], [CaminhoImagem], [DataLancamento], [Descricao]) VALUES (32, N'O Carteiro de Auschwitz', N'Joe Rosenblum', N'Guerra', N'9789898999245', CAST(15.96 AS Decimal(18, 2)), 4, N'/livros/o-carteiro-de-auschwitz.png', CAST(N'2020-06-19T00:00:00.0000000' AS DateTime2), N'O Carteiro de Auschwitz é a história verdadeira de um adolescente a quem tentaram roubar a vida e os sonhos. Apanhado no turbilhão do Holocausto, este jovem sobreviveu a uma sequência de dramas tão angustiantes que se torna difícil aceitá-los como factos reais.')
GO
INSERT [dbo].[Livros] ([Id], [Titulo], [Autor], [Genero], [ISBN], [Preco], [NumeroExemplares], [CaminhoImagem], [DataLancamento], [Descricao]) VALUES (34, N'A Origem da Ciência', N'James Hannam', N'História', N'9789899054257', CAST(17.67 AS Decimal(18, 2)), 5, N'/livros/a-origem-da-ciencia.png', CAST(N'2021-09-05T00:00:00.0000000' AS DateTime2), N'Como os filósofos do mundo medieval lançaram os fundamentos da ciência moderna')
GO
INSERT [dbo].[Livros] ([Id], [Titulo], [Autor], [Genero], [ISBN], [Preco], [NumeroExemplares], [CaminhoImagem], [DataLancamento], [Descricao]) VALUES (35, N'A Vida Depois da Morte', N'William Walker Atkinson', N'Espiritualidade', N'9789898907592', CAST(12.76 AS Decimal(18, 2)), 8, N'/livros/a-vida-depois-da-morte-.png', CAST(N'2019-01-01T00:00:00.0000000' AS DateTime2), N'Desde tempos imemoriais, o enigma da morte constitui uma das principais preocupações do homem. O que acontece quando morremos? Para onde vai a alma? O que acontece ao corpo? Existe realmente um espírito que sobrevive além da morte física?')
GO
INSERT [dbo].[Livros] ([Id], [Titulo], [Autor], [Genero], [ISBN], [Preco], [NumeroExemplares], [CaminhoImagem], [DataLancamento], [Descricao]) VALUES (36, N'Mentalismo', N'A. Victor Segno', N'AutoAjuda', N'9789899054769', CAST(11.96 AS Decimal(18, 2)), 12, N'/livros/mentalismo.png', CAST(N'2022-03-29T00:00:00.0000000' AS DateTime2), N'É possível criar uma nova realidade ao mudarmos a forma como pensamos?
O Mentalismo é um poder ou uma força tão subtil e, ao mesmo tempo, tão potencial que, para medir a sua amplitude e profundidade e verificar todos os seus usos e propósitos, seriam necessários mais anos do que os que temos de vida. Somos todos escravos ou senhores em resultado da nossa ignorância ou da nossa escolha. O ser humano foi criado como um ser livre e independente e está preso na escravidão apenas pela sua ignorância da fonte da inteligência e das leis que governam a vida. Se somos amantes da verdade, do conhecimento e da inteligência, o conteúdo deste livro irá satisfazer os nossos desejos mais profundos e alimentar a nossa mente.')
GO
INSERT [dbo].[Livros] ([Id], [Titulo], [Autor], [Genero], [ISBN], [Preco], [NumeroExemplares], [CaminhoImagem], [DataLancamento], [Descricao]) VALUES (37, N'Elon Musk - O Homem de Ferro', N'Jessica Easto', N'Gestão', N'9789898907875', CAST(12.76 AS Decimal(18, 2)), 8, N'/livros/elon-musk-homem-de-ferro.png', CAST(N'2019-09-09T00:00:00.0000000' AS DateTime2), N'Tesla, SpaceX, Paypal, e os melhores conselhos sobre sucesso, fama, dinheiro, investimentos, e como tornar o mundo um lugar melhor.')
GO
INSERT [dbo].[Livros] ([Id], [Titulo], [Autor], [Genero], [ISBN], [Preco], [NumeroExemplares], [CaminhoImagem], [DataLancamento], [Descricao]) VALUES (38, N'O Milionário Dentro de Ti', N'Orison Swett Marden', N'AutoAjuda', N'9789898999887', CAST(12.76 AS Decimal(18, 2)), 8, N'/livros/o-milionario-dentro-de-ti.png', CAST(N'2021-03-20T00:00:00.0000000' AS DateTime2), N'Muitas vezes perguntamo-nos porque é que certas pessoas, aparentemente sem estarem em melhores circunstâncias que nós, obtêm bastante mais da vida. Parece injusto que, apesar de todo o esforço e labor, estejamos ainda longe de alcançar o que tanto desejamos. O certo é que nunca poderemos obter aquilo que pensamos que não conseguiremos obter. Os anseios do nosso coração e as aspirações da nossa alma são profecias, previsões, precursores de realidades. São indicadores das nossas possibilidades, das coisas que podemos alcançar.')
GO
INSERT [dbo].[Livros] ([Id], [Titulo], [Autor], [Genero], [ISBN], [Preco], [NumeroExemplares], [CaminhoImagem], [DataLancamento], [Descricao]) VALUES (41, N'Nunca Fiques Onde Já Não Estás', N'Manuel Clemente', N'AutoAjuda', N'9789895700400', CAST(15.95 AS Decimal(18, 2)), 12, N'/livros/nunca-fiques-onde-ja-nao-estas.png', CAST(N'2022-08-12T00:00:00.0000000' AS DateTime2), N'Vivemos num mundo em que se prefere o medíocre, mas familiar e previsível, em vez do desconhecido e, quem sabe, potencialmente melhor. O pessimismo e o medo, tantas vezes infundados, levam-nos a ficar demasiado tempo em lugares, pensamentos e relações que já não são para nós.

Como poderemos nós viver de forma leve, se ainda carregamos pesos desnecessários? Como nos será possível apreciar o presente, se ainda o contemplamos com os olhos do passado? Como conseguiremos nós criar uma vida nova, se ainda repetimos padrões antigos?')
GO
SET IDENTITY_INSERT [dbo].[Livros] OFF
GO
SET IDENTITY_INSERT [dbo].[Notificacoes] ON 
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (716, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-29T13:17:37.7135740' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (717, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T13:17:37.7135843' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (718, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T13:17:37.7135942' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (720, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T13:17:37.7136136' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (721, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T13:17:37.7136286' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (722, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T13:17:37.7136389' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (723, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T13:17:37.7136485' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (725, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T13:17:37.7136670' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (726, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T13:17:37.7136798' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (760, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-29T14:28:58.8536992' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (761, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T14:28:58.8537095' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (762, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T14:28:58.8537188' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (764, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T14:28:58.8537416' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (765, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T14:28:58.8537519' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (766, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T14:28:58.8537651' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (767, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T14:28:58.8537749' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (769, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T14:28:58.8537934' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (770, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T14:28:58.8538024' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (804, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-29T14:48:12.0988304' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (805, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T14:48:12.0988384' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (806, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T14:48:12.0988457' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (808, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T14:48:12.0988595' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (809, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T14:48:12.0988708' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (810, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T14:48:12.0988782' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (811, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T14:48:12.0988850' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (813, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T14:48:12.0988986' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (814, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T14:48:12.0989056' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (848, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-29T16:22:15.7447296' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (849, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T16:22:15.7447379' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (850, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T16:22:15.7447454' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (852, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T16:22:15.7447602' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (853, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T16:22:15.7447716' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (854, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T16:22:15.7447792' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (855, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T16:22:15.7447866' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (857, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T16:22:15.7448008' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (858, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T16:22:15.7448079' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (892, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-29T16:37:41.4478088' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (893, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T16:37:41.4478191' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (894, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T16:37:41.4478283' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (896, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T16:37:41.4478467' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (897, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T16:37:41.4478591' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (898, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T16:37:41.4478688' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (899, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T16:37:41.4478782' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (901, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T16:37:41.4478956' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (902, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T16:37:41.4479124' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (936, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-29T16:38:29.0491330' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (937, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T16:38:29.0491415' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (938, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T16:38:29.0491491' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (940, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T16:38:29.0491640' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (941, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T16:38:29.0491800' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (942, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T16:38:29.0491881' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (943, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T16:38:29.0491954' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (945, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T16:38:29.0492101' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (946, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T16:38:29.0492174' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (980, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-29T17:15:08.8956132' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (981, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T17:15:08.8956204' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (982, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T17:15:08.8956275' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (984, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T17:15:08.8956413' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (985, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T17:15:08.8956557' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (986, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T17:15:08.8956628' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (987, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T17:15:08.8956696' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (989, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T17:15:08.8956856' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (990, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T17:15:08.8956923' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1024, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-29T17:22:56.1211341' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1025, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T17:22:56.1211415' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1026, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T17:22:56.1211484' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1028, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T17:22:56.1211623' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1029, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T17:22:56.1211736' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1030, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T17:22:56.1211806' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1031, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T17:22:56.1211875' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1033, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T17:22:56.1212042' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1034, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T17:22:56.1212110' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1068, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-29T20:11:08.1446429' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1069, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:11:08.1446524' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1070, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:11:08.1446615' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1072, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:11:08.1446787' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1073, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:11:08.1446968' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1074, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:11:08.1447070' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1075, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:11:08.1447159' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1077, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:11:08.1447334' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1078, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:11:08.1447467' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1112, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-29T20:25:21.6163916' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1113, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:25:21.6164015' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1114, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:25:21.6164105' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1116, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:25:21.6164335' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1117, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:25:21.6164435' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1118, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:25:21.6164526' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1119, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:25:21.6164662' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1121, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:25:21.6164863' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1122, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:25:21.6164956' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1156, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-29T20:27:00.2911300' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1157, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:27:00.2911374' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1158, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:27:00.2911446' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1160, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:27:00.2911588' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1161, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:27:00.2911689' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1162, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:27:00.2911764' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1163, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:27:00.2911838' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1165, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:27:00.2911980' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1166, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:27:00.2912109' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1200, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-29T20:57:05.7788382' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1201, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:57:05.7788454' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1202, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:57:05.7788523' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1204, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:57:05.7788692' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1205, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:57:05.7788769' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1206, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:57:05.7788865' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1207, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:57:05.7788936' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1209, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:57:05.7789073' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1210, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T20:57:05.7789142' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1244, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-29T22:11:44.8206675' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1245, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T22:11:44.8206771' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1246, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T22:11:44.8206865' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1248, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T22:11:44.8207048' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1249, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T22:11:44.8207179' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1250, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T22:11:44.8207295' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1251, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T22:11:44.8207469' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1253, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T22:11:44.8207738' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1254, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-29T22:11:44.8207954' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1255, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-30T13:15:20.5525160' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1256, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:15:20.5790386' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1257, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:15:20.5796328' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1259, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:15:20.5796795' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1260, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:15:20.5796905' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1261, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:15:20.5797000' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1262, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:15:20.5797092' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1264, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:15:20.5797297' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1265, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:15:20.5797395' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1266, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-30T13:15:38.8397602' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1267, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:15:38.8785637' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1268, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:15:38.8791498' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1270, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:15:38.8792495' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1271, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:15:38.8792586' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1272, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:15:38.8792668' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1273, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:15:38.8792741' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1275, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:15:38.8792889' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1276, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:15:38.8792960' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1277, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-30T13:16:28.0310628' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1278, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:16:28.0604518' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1279, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:16:28.0610817' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1281, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:16:28.0611186' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1282, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:16:28.0611289' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1283, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:16:28.0611381' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1284, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:16:28.0611473' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1286, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:16:28.0611725' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1287, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:16:28.0611815' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1288, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-30T13:32:45.0560638' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1289, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:32:45.0884153' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1290, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:32:45.0890019' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1292, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:32:45.0890435' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1293, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:32:45.0890517' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1294, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:32:45.0890596' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1295, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:32:45.0890674' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1297, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:32:45.0890834' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1298, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:32:45.0890937' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1299, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-30T13:52:11.0865810' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1300, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:52:11.1232858' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1301, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:52:11.1239534' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1303, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:52:11.1240123' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1304, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:52:11.1240254' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1305, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:52:11.1240370' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1306, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:52:11.1240483' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1308, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:52:11.1240843' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1309, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:52:11.1240976' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1310, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-30T13:53:31.8310806' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1311, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:53:31.8603819' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1312, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:53:31.8609295' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1314, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:53:31.8609589' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1315, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:53:31.8609669' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1316, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:53:31.8609741' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1317, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:53:31.8609812' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1319, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:53:31.8610021' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1320, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:53:31.8610093' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1321, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-30T13:59:42.9205756' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1322, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:59:42.9614070' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1323, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:59:42.9632198' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1325, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:59:42.9632903' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1326, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:59:42.9633003' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1327, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:59:42.9633085' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1328, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:59:42.9633161' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1330, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:59:42.9633429' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1331, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T13:59:42.9633515' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1332, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-30T14:05:56.4957550' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1333, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:05:56.5300413' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1334, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:05:56.5306311' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1336, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:05:56.5306684' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1337, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:05:56.5306772' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1338, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:05:56.5306857' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1339, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:05:56.5306936' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1341, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:05:56.5307140' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1342, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:05:56.5307218' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1343, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-30T14:10:56.2788237' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1344, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:10:56.3066810' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1345, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:10:56.3077340' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1347, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:10:56.3077901' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1348, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:10:56.3077986' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1349, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:10:56.3078064' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1350, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:10:56.3078149' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1352, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:10:56.3078391' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1353, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:10:56.3078468' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1354, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-30T14:12:55.9895865' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1355, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:12:56.0152378' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1356, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:12:56.0158280' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1358, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:12:56.0158649' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1359, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:12:56.0158734' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1360, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:12:56.0158816' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1361, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:12:56.0158898' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1363, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:12:56.0159056' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1364, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:12:56.0159169' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1365, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-30T14:13:41.3022773' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1366, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:13:41.3298719' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1367, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:13:41.3303851' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1369, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:13:41.3304143' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1370, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:13:41.3304223' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1371, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:13:41.3304299' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1372, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:13:41.3304372' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1374, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:13:41.3304563' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1375, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:13:41.3304636' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1376, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-30T14:16:05.2351875' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1377, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:16:05.3100721' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1378, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:16:05.3108313' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1380, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:16:05.3108759' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1381, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:16:05.3108847' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1382, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:16:05.3108923' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1383, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:16:05.3108997' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1385, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:16:05.3109147' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1386, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:16:05.3109218' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1387, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-30T14:17:27.1100485' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1388, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:17:27.1474043' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1389, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:17:27.1480203' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1391, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:17:27.1480607' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1392, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:17:27.1480691' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1393, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:17:27.1480762' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1394, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:17:27.1480835' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1396, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:17:27.1480986' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1397, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:17:27.1481058' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1398, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-30T14:20:19.8190901' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1399, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:20:19.8479445' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1400, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:20:19.8490770' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1402, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:20:19.8491362' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1403, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:20:19.8491441' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1404, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:20:19.8491526' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1405, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:20:19.8491612' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1407, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:20:19.8491902' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1408, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:20:19.8491991' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1409, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-30T14:36:09.3843228' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1410, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:36:09.4106917' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1411, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:36:09.4112233' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1413, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:36:09.4112621' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1414, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:36:09.4112725' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1415, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:36:09.4112828' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1416, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:36:09.4112980' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1418, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:36:09.4113210' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1419, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T14:36:09.4113318' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1420, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-30T15:32:52.6373907' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1421, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:32:52.6689582' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1422, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:32:52.6695663' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1423, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:32:52.6695911' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1424, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:32:52.6696046' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1425, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:32:52.6696243' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1426, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:32:52.6696342' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1427, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:32:52.6696434' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1429, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:32:52.6696630' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1430, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:32:52.6696721' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1431, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-30T15:43:26.4463888' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1432, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:43:26.4933180' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1433, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:43:26.4940353' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1434, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:43:26.4940605' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1435, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:43:26.4940788' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1436, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:43:26.4940868' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1437, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:43:26.4940943' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1438, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:43:26.4941015' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1440, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:43:26.4941166' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1441, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:43:26.4941243' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1442, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-30T15:46:35.4296309' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1443, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:46:35.4635057' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1444, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:46:35.4641280' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1445, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:46:35.4641530' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1446, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:46:35.4641659' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1447, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:46:35.4641805' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1448, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:46:35.4641883' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1449, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:46:35.4641953' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1451, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:46:35.4642110' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1452, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:46:35.4642188' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1453, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-30T15:48:02.9642477' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1454, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:48:02.9977804' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1455, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:48:02.9983408' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1456, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:48:02.9983712' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1457, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:48:02.9983815' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1458, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:48:02.9983893' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1459, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:48:02.9983968' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1460, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:48:02.9984041' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1462, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:48:02.9984197' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1463, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T15:48:02.9984357' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1464, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-30T16:43:56.3361715' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1465, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T16:43:56.3829304' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1466, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T16:43:56.3836267' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1467, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T16:43:56.3836631' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1468, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T16:43:56.3836754' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1469, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T16:43:56.3836842' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1470, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T16:43:56.3836921' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1471, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T16:43:56.3837069' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1472, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 1, CAST(N'2024-12-30T16:43:56.3837151' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1473, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T16:43:56.3837231' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1474, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T16:43:56.3837307' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1475, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-30T17:07:07.4109769' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1476, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:07:07.5033082' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1477, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:07:07.5040227' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1478, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:07:07.5040444' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1479, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:07:07.5040611' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1480, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:07:07.5040697' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1481, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:07:07.5040775' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1482, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:07:07.5040851' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1484, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:07:07.5041011' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1485, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:07:07.5041084' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1486, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-30T17:10:47.6250244' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1487, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:10:47.6574573' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1488, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:10:47.6580470' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1489, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:10:47.6580662' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1490, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:10:47.6580773' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1491, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:10:47.6580850' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1492, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:10:47.6580922' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1493, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:10:47.6581042' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1495, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:10:47.6581200' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1496, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:10:47.6581271' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1497, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-30T17:13:32.0522198' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1498, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:13:32.0835937' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1499, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:13:32.0842152' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1500, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:13:32.0842421' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1501, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:13:32.0842575' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1502, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:13:32.0842663' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1503, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:13:32.0842738' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1504, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:13:32.0842811' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1506, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:13:32.0842965' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1507, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:13:32.0843035' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1508, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-30T17:39:22.4113689' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1509, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:39:22.4433695' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1510, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:39:22.4440377' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1511, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:39:22.4440628' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1512, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:39:22.4440743' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1513, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:39:22.4440826' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1514, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:39:22.4440901' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1515, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:39:22.4441026' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1517, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:39:22.4441182' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1518, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:39:22.4441255' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1519, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-30T17:50:38.1734974' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1520, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:50:38.2032226' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1521, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:50:38.2037826' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1522, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:50:38.2038021' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1523, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:50:38.2038130' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1524, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:50:38.2038211' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1525, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:50:38.2038293' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1526, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:50:38.2038366' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1528, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:50:38.2038586' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1529, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:50:38.2038660' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1530, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-30T17:52:06.3899194' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1531, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:52:06.4207005' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1532, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:52:06.4212847' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1533, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:52:06.4213047' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1534, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:52:06.4213161' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1535, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:52:06.4213245' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1536, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:52:06.4213322' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1537, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:52:06.4213395' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1538, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:52:06.4213519' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1539, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:52:06.4213598' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1540, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:52:06.4213671' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1541, N'e5b45d44-8c46-4f41-8868-a21dc6384cc2', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T17:52:06.4213750' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1542, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-30T18:08:11.5551160' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1543, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T18:08:11.5905716' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1544, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T18:08:11.5911435' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1545, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T18:08:11.5911695' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1546, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T18:08:11.5911843' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1547, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T18:08:11.5911923' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1548, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T18:08:11.5911995' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1549, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T18:08:11.5912071' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1551, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T18:08:11.5912225' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1552, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T18:08:11.5912300' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1553, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-30T18:08:11.5912372' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1554, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-31T16:29:10.0151989' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1555, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T16:29:10.0440599' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1556, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T16:29:10.0447839' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1557, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T16:29:10.0448153' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1558, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T16:29:10.0448303' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1559, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T16:29:10.0448541' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1560, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T16:29:10.0448652' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1561, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T16:29:10.0448775' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1563, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T16:29:10.0449948' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1564, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T16:29:10.0458082' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1565, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T16:29:10.0458567' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1566, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-31T16:38:53.7387067' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1567, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T16:38:53.7923755' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1568, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T16:38:53.7930044' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1569, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T16:38:53.7930283' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1570, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T16:38:53.7930406' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1571, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T16:38:53.7930503' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1572, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T16:38:53.7930593' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1573, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T16:38:53.7930681' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1575, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T16:38:53.7930929' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1576, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T16:38:53.7931027' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1577, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T16:38:53.7931115' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1578, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-31T16:39:45.8306305' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1579, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T16:39:45.8647741' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1580, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T16:39:45.8654073' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1581, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T16:39:45.8654377' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1582, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T16:39:45.8654503' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1583, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T16:39:45.8654589' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1584, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T16:39:45.8654671' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1585, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T16:39:45.8654791' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1587, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T16:39:45.8655045' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1588, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T16:39:45.8655121' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1589, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T16:39:45.8655200' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1590, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2024-12-31T17:45:08.4647338' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1591, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T17:45:08.5016359' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1592, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T17:45:08.5022812' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1593, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T17:45:08.5023215' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1594, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T17:45:08.5023376' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1595, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T17:45:08.5023485' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1596, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T17:45:08.5023589' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1597, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T17:45:08.5023686' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1598, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T17:45:08.5023809' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1599, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T17:45:08.5023973' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1600, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T17:45:08.5024087' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1601, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2024-12-31T17:45:08.5024186' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1602, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-01T22:34:03.0908275' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1603, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T22:34:03.1260685' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1604, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T22:34:03.1269520' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1605, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T22:34:03.1269978' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1606, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T22:34:03.1270207' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1607, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T22:34:03.1270432' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1608, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T22:34:03.1270588' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1609, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T22:34:03.1270716' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1610, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T22:34:03.1270878' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1611, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T22:34:03.1271009' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1612, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T22:34:03.1271152' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1613, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T22:34:03.1271279' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1614, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-01T23:20:51.7410997' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1615, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:20:51.7823767' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1616, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:20:51.7829950' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1617, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:20:51.7830270' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1618, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:20:51.7830392' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1619, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:20:51.7830537' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1620, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:20:51.7830627' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1621, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:20:51.7830706' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1622, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:20:51.7830788' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1623, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:20:51.7830865' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1624, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:20:51.7830940' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1625, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:20:51.7831018' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1626, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-01T23:27:45.5071970' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1627, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:27:45.5418423' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1628, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:27:45.5424793' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1629, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:27:45.5425041' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1630, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:27:45.5425198' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1631, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:27:45.5425284' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1632, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:27:45.5425365' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1633, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:27:45.5425447' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1634, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:27:45.5425617' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1635, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:27:45.5425704' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1636, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:27:45.5425783' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1637, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:27:45.5425859' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1638, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-01T23:36:39.3546706' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1639, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:36:39.3909674' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1640, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:36:39.3917294' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1641, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:36:39.3917822' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1642, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:36:39.3917991' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1643, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:36:39.3918103' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1644, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:36:39.3918204' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1645, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:36:39.3918299' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1646, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:36:39.3918419' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1647, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:36:39.3918514' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1648, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:36:39.3918665' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1649, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-01T23:36:39.3918789' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1650, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-02T15:18:19.0783494' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1651, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T15:18:19.1111451' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1652, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T15:18:19.1117414' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1653, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T15:18:19.1117605' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1654, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T15:18:19.1117714' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1655, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T15:18:19.1117799' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1656, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T15:18:19.1117927' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1657, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T15:18:19.1118007' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1658, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 1, CAST(N'2025-01-02T15:18:19.1118092' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1659, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T15:18:19.1118169' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1660, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T15:18:19.1118244' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1661, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T15:18:19.1118318' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1662, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-02T16:21:38.6132345' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1663, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:21:38.6479339' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1664, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:21:38.6485490' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1665, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:21:38.6485704' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1666, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:21:38.6485821' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1667, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:21:38.6485911' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1668, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:21:38.6486051' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1669, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:21:38.6486131' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1670, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:21:38.6486210' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1671, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:21:38.6486284' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1672, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:21:38.6486358' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1673, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:21:38.6486435' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1674, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-02T16:34:00.1045492' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1675, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:34:00.1429299' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1676, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:34:00.1435706' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1677, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:34:00.1435950' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1678, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:34:00.1436062' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1679, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:34:00.1436148' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1680, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:34:00.1436228' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1681, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:34:00.1436306' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1682, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:34:00.1436385' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1683, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:34:00.1436461' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1684, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:34:00.1436537' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1685, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:34:00.1436653' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1686, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-02T16:38:35.5504876' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1687, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:38:35.5859491' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1688, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:38:35.5866146' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1689, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:38:35.5866374' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1690, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:38:35.5866495' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1691, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:38:35.5866579' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1692, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:38:35.5866659' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1693, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:38:35.5866795' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1694, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:38:35.5866883' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1695, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:38:35.5866959' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1696, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:38:35.5867030' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1697, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T16:38:35.5867105' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1698, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-02T17:00:32.4184316' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1699, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:00:32.4583854' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1700, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:00:32.4589411' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1701, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:00:32.4589616' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1702, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:00:32.4589731' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1703, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:00:32.4589820' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1704, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:00:32.4589901' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1705, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:00:32.4589987' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1706, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:00:32.4590124' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1707, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:00:32.4590202' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1708, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:00:32.4590279' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1709, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:00:32.4590353' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1710, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-02T17:06:18.5185079' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1711, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:06:18.5574908' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1712, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:06:18.5580797' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1713, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:06:18.5580998' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1714, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:06:18.5581114' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1715, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:06:18.5581235' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1716, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:06:18.5581318' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1717, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:06:18.5581396' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1718, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:06:18.5581474' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1719, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:06:18.5581547' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1720, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:06:18.5581621' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1721, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:06:18.5581691' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1722, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-02T17:08:41.8554995' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1723, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:08:41.8861830' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1724, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:08:41.8868337' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1725, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:08:41.8868678' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1726, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:08:41.8868810' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1727, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:08:41.8868915' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1728, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:08:41.8868999' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1729, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:08:41.8869083' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1730, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:08:41.8869168' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1731, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:08:41.8869312' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1732, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:08:41.8869401' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1733, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:08:41.8869492' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1734, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-02T17:27:56.5556249' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1735, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:27:56.5897375' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1736, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:27:56.5904505' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1737, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:27:56.5904763' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1738, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:27:56.5904899' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1739, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:27:56.5904983' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1740, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:27:56.5905061' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1741, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:27:56.5905141' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1742, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:27:56.5905220' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1743, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:27:56.5905296' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1744, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:27:56.5905401' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1745, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-02T17:27:56.5905478' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1746, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-03T13:27:24.4848951' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1747, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T13:27:24.5177234' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1748, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T13:27:24.5185328' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1749, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T13:27:24.5185791' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1750, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T13:27:24.5186047' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1751, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T13:27:24.5186244' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1752, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T13:27:24.5186343' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1753, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T13:27:24.5186430' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1754, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T13:27:24.5186640' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1755, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T13:27:24.5186735' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1756, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T13:27:24.5186816' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1757, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T13:27:24.5186900' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1758, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-03T13:28:13.4125351' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1759, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T13:28:13.4789015' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1760, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T13:28:13.4794546' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1761, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T13:28:13.4794768' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1762, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T13:28:13.4794879' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1763, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T13:28:13.4794967' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1764, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T13:28:13.4795051' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1765, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T13:28:13.4795128' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1766, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T13:28:13.4795208' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1767, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T13:28:13.4795332' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1768, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T13:28:13.4795417' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1769, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T13:28:13.4795499' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1770, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-03T20:35:27.1561135' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1771, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T20:35:27.1956003' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1772, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T20:35:27.1966773' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1773, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T20:35:27.1967656' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1774, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T20:35:27.1967937' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1775, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T20:35:27.1968073' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1776, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T20:35:27.1968187' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1777, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T20:35:27.1968428' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1778, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T20:35:27.1968542' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1779, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T20:35:27.1968672' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1780, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T20:35:27.1968803' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1781, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T20:35:27.1968936' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1782, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-03T20:59:42.5261653' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1783, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T20:59:42.5669025' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1784, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T20:59:42.5677999' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1785, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T20:59:42.5678625' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1786, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T20:59:42.5678828' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1787, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T20:59:42.5678950' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1788, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T20:59:42.5679074' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1789, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T20:59:42.5679270' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1790, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T20:59:42.5679424' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1791, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T20:59:42.5679528' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1792, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T20:59:42.5679654' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1793, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T20:59:42.5679762' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1794, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-03T23:11:59.1379573' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1795, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:11:59.1919879' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1796, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:11:59.1926839' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1797, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:11:59.1927155' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1798, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:11:59.1927284' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1799, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:11:59.1927373' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1800, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:11:59.1927451' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1801, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:11:59.1927524' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1802, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:11:59.1927603' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1803, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:11:59.1927738' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1804, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:11:59.1927812' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1805, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:11:59.1927884' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1806, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-03T23:32:26.8154595' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1807, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:32:26.8489845' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1808, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:32:26.8496365' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1809, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:32:26.8496562' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1810, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:32:26.8496703' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1811, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:32:26.8496793' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1812, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:32:26.8496868' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1813, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:32:26.8496939' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1814, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:32:26.8497022' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1815, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:32:26.8497096' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1816, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:32:26.8497167' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1817, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:32:26.8497237' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1818, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-03T23:35:11.8705059' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1819, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:35:11.9015949' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1820, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:35:11.9021284' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1821, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:35:11.9021516' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1822, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:35:11.9021624' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1823, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:35:11.9021706' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1824, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:35:11.9021780' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1825, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:35:11.9021852' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1826, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:35:11.9021933' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1827, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:35:11.9022013' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1828, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:35:11.9022114' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1829, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:35:11.9022189' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1830, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-03T23:38:37.1406773' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1831, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:38:37.1728603' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1832, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:38:37.1734718' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1833, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:38:37.1734917' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1834, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:38:37.1735080' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1835, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:38:37.1735170' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1836, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:38:37.1735256' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1837, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:38:37.1735341' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1838, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:38:37.1735423' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1839, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:38:37.1735499' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1840, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:38:37.1735578' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1841, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:38:37.1735682' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1842, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-03T23:43:57.9925464' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1843, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:43:58.0250669' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1844, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:43:58.0256380' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1845, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:43:58.0256571' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1846, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:43:58.0256697' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1847, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:43:58.0256858' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1848, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:43:58.0256944' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1849, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:43:58.0257019' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1850, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:43:58.0257102' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1851, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:43:58.0257179' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1852, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:43:58.0257253' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1853, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:43:58.0257325' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1854, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-03T23:49:57.9035312' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1855, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:49:57.9359218' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1856, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:49:57.9364665' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1857, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:49:57.9364859' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1858, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:49:57.9365008' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1859, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:49:57.9365094' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1860, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:49:57.9365165' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1861, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:49:57.9365237' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1862, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:49:57.9365310' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1863, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:49:57.9365383' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1864, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:49:57.9365456' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1865, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:49:57.9365556' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1866, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-03T23:54:51.9850168' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1867, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:54:52.0201363' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1868, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:54:52.0206667' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1869, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:54:52.0206909' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1870, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:54:52.0207020' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1871, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:54:52.0207106' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1872, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:54:52.0207184' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1873, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:54:52.0207259' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1874, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:54:52.0207337' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1875, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:54:52.0207410' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1876, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:54:52.0207528' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1877, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:54:52.0207606' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1878, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-03T23:55:27.9921586' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1879, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:55:28.0240401' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1880, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:55:28.0246332' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1881, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:55:28.0246574' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1882, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:55:28.0246683' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1883, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:55:28.0246770' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1884, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:55:28.0246854' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1885, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:55:28.0246931' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1886, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:55:28.0247050' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1887, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:55:28.0247133' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1888, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:55:28.0247210' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1889, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:55:28.0247284' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1890, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-03T23:56:08.3811159' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1891, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:56:08.4130627' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1892, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:56:08.4135993' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1893, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:56:08.4136179' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1894, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:56:08.4136290' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1895, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:56:08.4136372' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1896, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:56:08.4136448' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1897, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:56:08.4136523' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1898, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:56:08.4136644' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1899, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:56:08.4136725' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1900, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:56:08.4136798' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1901, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:56:08.4136876' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1902, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-03T23:56:49.7431887' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1903, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:56:49.7757660' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1904, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:56:49.7763888' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1905, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:56:49.7764144' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1906, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:56:49.7764296' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1907, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:56:49.7764384' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1908, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:56:49.7764462' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1909, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:56:49.7764538' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1910, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:56:49.7764615' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1911, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:56:49.7764693' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1912, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:56:49.7764768' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1913, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-03T23:56:49.7764845' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1914, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-04T00:03:24.0211891' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1915, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:03:24.0687498' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1916, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:03:24.0694438' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1917, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:03:24.0694707' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1918, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:03:24.0694914' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1919, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:03:24.0695031' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1920, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:03:24.0695135' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1921, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:03:24.0695246' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1922, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:03:24.0695400' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1923, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:03:24.0695511' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1924, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:03:24.0695626' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1925, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:03:24.0695726' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1926, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-04T00:04:33.0878045' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1927, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:04:33.1421751' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1928, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:04:33.1429094' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1929, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:04:33.1429438' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1930, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:04:33.1429616' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1931, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:04:33.1429770' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1932, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:04:33.1429888' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1933, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:04:33.1430022' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1934, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:04:33.1430138' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1935, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:04:33.1430218' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1936, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:04:33.1430294' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1937, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:04:33.1430368' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1938, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-04T00:04:58.0955472' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1939, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:04:58.1301212' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1940, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:04:58.1308433' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1941, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:04:58.1308700' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1942, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:04:58.1308825' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1943, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:04:58.1308906' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1944, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:04:58.1308984' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1945, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:04:58.1309118' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1946, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:04:58.1309205' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1947, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:04:58.1309281' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1948, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:04:58.1309357' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1949, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:04:58.1309433' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1950, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-04T00:05:09.5567742' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1951, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:05:09.5915076' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1952, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:05:09.5921492' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1953, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:05:09.5921722' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1954, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:05:09.5921834' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1955, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:05:09.5921914' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1956, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:05:09.5921987' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1957, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:05:09.5922095' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1958, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:05:09.5922176' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1959, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:05:09.5922253' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1960, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:05:09.5922330' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1961, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:05:09.5922433' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1962, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-04T00:27:30.8738491' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1963, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:27:30.9174185' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1964, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:27:30.9182077' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1965, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:27:30.9182444' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1966, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:27:30.9182603' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1967, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:27:30.9182690' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1968, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:27:30.9182770' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1969, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:27:30.9182850' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1970, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:27:30.9182931' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1971, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:27:30.9183026' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1972, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:27:30.9183098' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1973, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T00:27:30.9183172' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1974, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-04T01:06:22.5500973' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1975, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T01:06:22.5858855' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1976, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T01:06:22.5865186' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1977, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T01:06:22.5865401' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1978, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T01:06:22.5865507' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1979, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T01:06:22.5865646' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1980, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T01:06:22.5865726' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1981, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T01:06:22.5865802' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1982, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T01:06:22.5865880' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1983, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T01:06:22.5865989' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1984, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T01:06:22.5866072' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1985, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T01:06:22.5866144' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1986, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O livro ''Inteligência Emocional'' ultrapassou o prazo de devolução.', 0, CAST(N'2025-01-04T01:20:57.2196381' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1987, N'0e081b0e-f057-471a-be43-8b2be5849e8b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T01:20:57.2662252' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1988, N'173ff5a8-5c1e-4ffd-88a6-438d6234d065', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T01:20:57.2668655' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1989, N'1b7b6ed1-5a7f-40be-86b0-55d67205c354', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T01:20:57.2668918' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1990, N'2ba95715-2582-4c6b-be29-a7883c0a3da6', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T01:20:57.2669038' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1991, N'3a911ae7-7649-4800-865e-b5ca3d0d419d', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T01:20:57.2669186' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1992, N'503af501-ac63-42d6-ba4f-ecf5110dea97', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T01:20:57.2669269' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1993, N'5684c756-f3dd-42e5-8c58-e2493547c4ff', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T01:20:57.2669356' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1994, N'5ef7152c-0c4b-42c0-8e82-0a4a66407832', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T01:20:57.2669438' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1995, N'8db0aefc-31ca-4824-acec-a96aaa921a16', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T01:20:57.2669514' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1996, N'9174a887-e173-4813-88c9-de3c2d604b74', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T01:20:57.2669592' AS DateTime2), 29)
GO
INSERT [dbo].[Notificacoes] ([Id], [UserId], [Mensagem], [Lida], [DataCriacao], [LivroId]) VALUES (1997, N'e3c6a844-74f4-44e8-b07b-c5b5dd0aef5b', N'O utilizador ''luis'' tem um empréstimo atrasado para o livro ''Inteligência Emocional''.', 0, CAST(N'2025-01-04T01:20:57.2669669' AS DateTime2), 29)
GO
SET IDENTITY_INSERT [dbo].[Notificacoes] OFF
GO
SET IDENTITY_INSERT [dbo].[Subscribers] ON 
GO
INSERT [dbo].[Subscribers] ([Id], [Email]) VALUES (2, N'biblioutad@gmail.com')
GO
INSERT [dbo].[Subscribers] ([Id], [Email]) VALUES (3, N'lemosluis547@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[Subscribers] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 04/01/2025 01:24:04 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 04/01/2025 01:24:04 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 04/01/2025 01:24:04 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 04/01/2025 01:24:04 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 04/01/2025 01:24:04 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 04/01/2025 01:24:04 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 04/01/2025 01:24:04 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Emprestimos_LivroId]    Script Date: 04/01/2025 01:24:04 ******/
CREATE NONCLUSTERED INDEX [IX_Emprestimos_LivroId] ON [dbo].[Emprestimos]
(
	[LivroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Emprestimos] ADD  DEFAULT (N'') FOR [UserName]
GO
ALTER TABLE [dbo].[Livros] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [DataLancamento]
GO
ALTER TABLE [dbo].[Livros] ADD  DEFAULT (N'') FOR [Descricao]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [BiblioUtadDB] SET  READ_WRITE 
GO
