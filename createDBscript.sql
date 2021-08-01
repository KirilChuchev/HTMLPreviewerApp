USE [master]
GO
/****** Object:  Database [HTMLPreviewerApp]    Script Date: 1.8.2021 г. 18:30:49 ******/
CREATE DATABASE [HTMLPreviewerApp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HTMLPreviewerApp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\HTMLPreviewerApp.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HTMLPreviewerApp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\HTMLPreviewerApp_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [HTMLPreviewerApp] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HTMLPreviewerApp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HTMLPreviewerApp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HTMLPreviewerApp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HTMLPreviewerApp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HTMLPreviewerApp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HTMLPreviewerApp] SET ARITHABORT OFF 
GO
ALTER DATABASE [HTMLPreviewerApp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HTMLPreviewerApp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HTMLPreviewerApp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HTMLPreviewerApp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HTMLPreviewerApp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HTMLPreviewerApp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HTMLPreviewerApp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HTMLPreviewerApp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HTMLPreviewerApp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HTMLPreviewerApp] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HTMLPreviewerApp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HTMLPreviewerApp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HTMLPreviewerApp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HTMLPreviewerApp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HTMLPreviewerApp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HTMLPreviewerApp] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [HTMLPreviewerApp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HTMLPreviewerApp] SET RECOVERY FULL 
GO
ALTER DATABASE [HTMLPreviewerApp] SET  MULTI_USER 
GO
ALTER DATABASE [HTMLPreviewerApp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HTMLPreviewerApp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HTMLPreviewerApp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HTMLPreviewerApp] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HTMLPreviewerApp] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HTMLPreviewerApp] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'HTMLPreviewerApp', N'ON'
GO
ALTER DATABASE [HTMLPreviewerApp] SET QUERY_STORE = OFF
GO
USE [HTMLPreviewerApp]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1.8.2021 г. 18:30:49 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 1.8.2021 г. 18:30:49 ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1.8.2021 г. 18:30:49 ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1.8.2021 г. 18:30:49 ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1.8.2021 г. 18:30:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1.8.2021 г. 18:30:49 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1.8.2021 г. 18:30:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 1.8.2021 г. 18:30:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HtmlSamples]    Script Date: 1.8.2021 г. 18:30:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HtmlSamples](
	[Id] [nvarchar](450) NOT NULL,
	[RawHtml] [nvarchar](max) NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[LastEditedOn] [datetime2](7) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_HtmlSamples] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210730131938_InitialCreate', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210730134523_ApplicationUserModel', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210730142000_ApplicationRoleModel', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210730143605_AddHtmlSampleModelConstraints', N'5.0.6')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5602ce6c-1c33-44ea-a108-5710289f46e8', N'kickz@abv.bg', N'KICKZ@ABV.BG', N'kickz@abv.bg', N'KICKZ@ABV.BG', 0, N'AQAAAAEAACcQAAAAEGjZSAnUI7QK9M0kQLY3PmHgO/ME8xWEOTyedZf96hlcmK+MrUrsxngks7ddR2pbbw==', N'AGP4DBSI4QR52JHIXVKJEDWR6CLVY27P', N'30112ca8-ab95-48d3-98e0-24de47609243', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[HtmlSamples] ([Id], [RawHtml], [CreatedOn], [LastEditedOn], [UserId]) VALUES (N'08473785-65ec-4767-bd12-55c49dfaf0bd', N'ferfrefe', CAST(N'2021-08-01T17:40:40.1911974' AS DateTime2), CAST(N'2021-08-01T17:42:40.0405136' AS DateTime2), N'5602ce6c-1c33-44ea-a108-5710289f46e8')
INSERT [dbo].[HtmlSamples] ([Id], [RawHtml], [CreatedOn], [LastEditedOn], [UserId]) VALUES (N'232d7120-ad05-4e91-89e8-3849ef01ad54', N'ревфев', CAST(N'2021-08-01T17:22:39.3744725' AS DateTime2), CAST(N'2021-08-01T17:23:14.7792853' AS DateTime2), N'5602ce6c-1c33-44ea-a108-5710289f46e8')
INSERT [dbo].[HtmlSamples] ([Id], [RawHtml], [CreatedOn], [LastEditedOn], [UserId]) VALUES (N'26a467ac-8bb5-4475-b857-3edd311c48a9', N'<ol>
     <li>
         asdsaas
     </li>
     <li>
         asdsaas
     </li>
</ol>', CAST(N'2021-08-01T16:23:05.8756600' AS DateTime2), NULL, N'5602ce6c-1c33-44ea-a108-5710289f46e8')
INSERT [dbo].[HtmlSamples] ([Id], [RawHtml], [CreatedOn], [LastEditedOn], [UserId]) VALUES (N'3a75d39f-2903-47b9-9b9b-ac00787d6ecc', N'fwevcerfve', CAST(N'2021-08-01T17:25:25.5565335' AS DateTime2), CAST(N'2021-08-01T17:37:31.6773279' AS DateTime2), N'5602ce6c-1c33-44ea-a108-5710289f46e8')
INSERT [dbo].[HtmlSamples] ([Id], [RawHtml], [CreatedOn], [LastEditedOn], [UserId]) VALUES (N'524675e6-884f-413a-924f-4a07623f59aa', N'e', CAST(N'2021-08-01T17:27:07.6213397' AS DateTime2), CAST(N'2021-08-01T17:36:53.2928372' AS DateTime2), N'5602ce6c-1c33-44ea-a108-5710289f46e8')
INSERT [dbo].[HtmlSamples] ([Id], [RawHtml], [CreatedOn], [LastEditedOn], [UserId]) VALUES (N'6359a276-8db4-4921-8ff0-fe68a90f4393', N'vcwe333', CAST(N'2021-08-01T17:42:48.8088099' AS DateTime2), CAST(N'2021-08-01T18:13:58.4037460' AS DateTime2), N'5602ce6c-1c33-44ea-a108-5710289f46e8')
INSERT [dbo].[HtmlSamples] ([Id], [RawHtml], [CreatedOn], [LastEditedOn], [UserId]) VALUES (N'8340116d-f285-4da5-ac8c-c5960e8246f8', N'dd', CAST(N'2021-08-01T16:47:05.1623335' AS DateTime2), NULL, N'5602ce6c-1c33-44ea-a108-5710289f46e8')
INSERT [dbo].[HtmlSamples] ([Id], [RawHtml], [CreatedOn], [LastEditedOn], [UserId]) VALUES (N'a25b22cc-e6bb-4d5d-82b3-0868c85b3833', N'546dddfecer', CAST(N'2021-08-01T17:29:04.9795148' AS DateTime2), CAST(N'2021-08-01T17:40:31.6517672' AS DateTime2), N'5602ce6c-1c33-44ea-a108-5710289f46e8')
INSERT [dbo].[HtmlSamples] ([Id], [RawHtml], [CreatedOn], [LastEditedOn], [UserId]) VALUES (N'a6dc990b-53b6-4201-97df-1e07079952d4', N'r', CAST(N'2021-08-01T16:49:37.1924317' AS DateTime2), CAST(N'2021-08-01T17:16:34.6452820' AS DateTime2), N'5602ce6c-1c33-44ea-a108-5710289f46e8')
INSERT [dbo].[HtmlSamples] ([Id], [RawHtml], [CreatedOn], [LastEditedOn], [UserId]) VALUES (N'a7bcfe5b-500f-4f1f-8fe7-56e7259bc26c', N'ewfdw2ed', CAST(N'2021-08-01T18:22:14.7325028' AS DateTime2), NULL, N'5602ce6c-1c33-44ea-a108-5710289f46e8')
INSERT [dbo].[HtmlSamples] ([Id], [RawHtml], [CreatedOn], [LastEditedOn], [UserId]) VALUES (N'b1ba9cf6-13d7-46cc-8566-a73cac080482', N'wefcwefdwefcwef', CAST(N'2021-08-01T17:43:33.2890638' AS DateTime2), CAST(N'2021-08-01T17:45:27.1252418' AS DateTime2), N'5602ce6c-1c33-44ea-a108-5710289f46e8')
INSERT [dbo].[HtmlSamples] ([Id], [RawHtml], [CreatedOn], [LastEditedOn], [UserId]) VALUES (N'f38b0e6d-26fb-45e9-90ef-99c3d6f5f34e', N'<ol>
     <li>
         asdsaas
     </li>
     <li>
         asdsaas
     </li>
</ol>', CAST(N'2021-08-01T16:33:55.4709013' AS DateTime2), NULL, N'5602ce6c-1c33-44ea-a108-5710289f46e8')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 1.8.2021 г. 18:30:49 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 1.8.2021 г. 18:30:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 1.8.2021 г. 18:30:49 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 1.8.2021 г. 18:30:49 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 1.8.2021 г. 18:30:49 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 1.8.2021 г. 18:30:49 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 1.8.2021 г. 18:30:49 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_HtmlSamples_UserId]    Script Date: 1.8.2021 г. 18:30:49 ******/
CREATE NONCLUSTERED INDEX [IX_HtmlSamples_UserId] ON [dbo].[HtmlSamples]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HtmlSamples] ADD  DEFAULT (N'') FOR [RawHtml]
GO
ALTER TABLE [dbo].[HtmlSamples] ADD  DEFAULT (N'') FOR [UserId]
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
ALTER TABLE [dbo].[HtmlSamples]  WITH CHECK ADD  CONSTRAINT [FK_HtmlSamples_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HtmlSamples] CHECK CONSTRAINT [FK_HtmlSamples_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [HTMLPreviewerApp] SET  READ_WRITE 
GO
