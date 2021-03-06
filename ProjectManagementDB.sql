USE [master]
GO
/****** Object:  Database [ProjectManagementDB]    Script Date: 29/11/2017 21:39:04 ******/
CREATE DATABASE [ProjectManagementDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjectManagementDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\ProjectManagementDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ProjectManagementDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\ProjectManagementDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ProjectManagementDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectManagementDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectManagementDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectManagementDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectManagementDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjectManagementDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProjectManagementDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectManagementDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProjectManagementDB] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectManagementDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectManagementDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectManagementDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectManagementDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [ProjectManagementDB]
GO
/****** Object:  Table [dbo].[AssignResourcePerson]    Script Date: 29/11/2017 21:39:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssignResourcePerson](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ProjectId] [int] NOT NULL,
 CONSTRAINT [PK_AssignResourcePerson] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comments]    Script Date: 29/11/2017 21:39:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comments] [varchar](max) NOT NULL,
	[CommentDate] [varchar](50) NOT NULL,
	[UserId] [int] NOT NULL,
	[TaskId] [int] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Designation]    Script Date: 29/11/2017 21:39:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Designation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Designation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Project]    Script Date: 29/11/2017 21:39:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Project](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[CodeName] [varchar](100) NOT NULL,
	[Description] [varchar](300) NOT NULL,
	[StartDate] [varchar](50) NOT NULL,
	[EndDate] [varchar](50) NOT NULL,
	[Status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Task]    Script Date: 29/11/2017 21:39:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Task](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TaskDescription] [varchar](200) NOT NULL,
	[DueDate] [varchar](50) NOT NULL,
	[Priority] [nchar](10) NOT NULL,
	[ProjectId] [int] NOT NULL,
 CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UsersTable]    Script Date: 29/11/2017 21:39:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UsersTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[DesignationId] [int] NOT NULL,
 CONSTRAINT [PK_UsersTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[UserWiseDesignation]    Script Date: 29/11/2017 21:39:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[UserWiseDesignation]
AS
Select u.Id As UserId,u.Name,u.Email,d.Name as Designation,u.Status,u.Password From UsersTable u
Inner Join Designation d
On u.DesignationId=d.Id

GO
SET IDENTITY_INSERT [dbo].[AssignResourcePerson] ON 

INSERT [dbo].[AssignResourcePerson] ([Id], [UserId], [ProjectId]) VALUES (2, 1, 6)
INSERT [dbo].[AssignResourcePerson] ([Id], [UserId], [ProjectId]) VALUES (3, 3, 7)
INSERT [dbo].[AssignResourcePerson] ([Id], [UserId], [ProjectId]) VALUES (4, 5, 12)
INSERT [dbo].[AssignResourcePerson] ([Id], [UserId], [ProjectId]) VALUES (5, 4, 13)
INSERT [dbo].[AssignResourcePerson] ([Id], [UserId], [ProjectId]) VALUES (6, 2, 7)
SET IDENTITY_INSERT [dbo].[AssignResourcePerson] OFF
SET IDENTITY_INSERT [dbo].[Designation] ON 

INSERT [dbo].[Designation] ([Id], [Code], [Name]) VALUES (1, N'1', N'Developer')
INSERT [dbo].[Designation] ([Id], [Code], [Name]) VALUES (2, N'2', N'Project Manager')
INSERT [dbo].[Designation] ([Id], [Code], [Name]) VALUES (3, N'3', N'Team Lead')
INSERT [dbo].[Designation] ([Id], [Code], [Name]) VALUES (4, N'4', N'QA Engineer')
INSERT [dbo].[Designation] ([Id], [Code], [Name]) VALUES (5, N'5', N'UX Engineer')
INSERT [dbo].[Designation] ([Id], [Code], [Name]) VALUES (6, N'6', N'IT Admin')
SET IDENTITY_INSERT [dbo].[Designation] OFF
SET IDENTITY_INSERT [dbo].[Project] ON 

INSERT [dbo].[Project] ([Id], [Name], [CodeName], [Description], [StartDate], [EndDate], [Status]) VALUES (6, N'Fresh Food', N'Fresh Food1', N'aswefs', N'2017-01-11', N'2017-10-11', N'Started')
INSERT [dbo].[Project] ([Id], [Name], [CodeName], [Description], [StartDate], [EndDate], [Status]) VALUES (7, N'Fresh Food', N'Fresh Food1', N'fth', N'2017-01-12', N'2017-08-12', N'Not Started')
INSERT [dbo].[Project] ([Id], [Name], [CodeName], [Description], [StartDate], [EndDate], [Status]) VALUES (12, N'Fresh Food', N'Fresh Food1', N'sa', N'2017-01-11', N'2017-10-11', N'Not Started')
INSERT [dbo].[Project] ([Id], [Name], [CodeName], [Description], [StartDate], [EndDate], [Status]) VALUES (13, N'oo', N'ss', N'sss', N'2017-01-11', N'2017-10-11', N'Not Started')
SET IDENTITY_INSERT [dbo].[Project] OFF
SET IDENTITY_INSERT [dbo].[UsersTable] ON 

INSERT [dbo].[UsersTable] ([Id], [Name], [Email], [Password], [Status], [DesignationId]) VALUES (1, N'Tasnim', N'tasnim@gmail.com', N'tasnim@gmail.com', N'Active', 2)
INSERT [dbo].[UsersTable] ([Id], [Name], [Email], [Password], [Status], [DesignationId]) VALUES (2, N'koly', N'koly@gmail.com', N'koly@mail.com', N'Active', 3)
INSERT [dbo].[UsersTable] ([Id], [Name], [Email], [Password], [Status], [DesignationId]) VALUES (3, N'keya', N'keya@mail.com', N'keya@mail.com', N'Active', 3)
INSERT [dbo].[UsersTable] ([Id], [Name], [Email], [Password], [Status], [DesignationId]) VALUES (4, N'jamil', N'jamil@gmail.com', N'12345', N'Active', 5)
INSERT [dbo].[UsersTable] ([Id], [Name], [Email], [Password], [Status], [DesignationId]) VALUES (5, N'Juthy', N'Juthy@mail.com', N'Juthy@mail.com', N'InActive', 4)
INSERT [dbo].[UsersTable] ([Id], [Name], [Email], [Password], [Status], [DesignationId]) VALUES (6, N'Nusrat', N'Nusrat@mail.com', N'Nusrat@mail.com', N'InActive', 5)
INSERT [dbo].[UsersTable] ([Id], [Name], [Email], [Password], [Status], [DesignationId]) VALUES (7, N'Koli', N'Koli@mail.com', N'Koli@mail.com', N'Active', 2)
INSERT [dbo].[UsersTable] ([Id], [Name], [Email], [Password], [Status], [DesignationId]) VALUES (8, N'riyad', N'riyad@gmail.com', N'riyad@gmail.com123', N'InActive', 2)
INSERT [dbo].[UsersTable] ([Id], [Name], [Email], [Password], [Status], [DesignationId]) VALUES (9, N'riyad', N'riyad1@gmail.com', N'riyad1@gmail.com123', N'Active', 3)
INSERT [dbo].[UsersTable] ([Id], [Name], [Email], [Password], [Status], [DesignationId]) VALUES (11, N'Admin', N'admin', N'admin', N'Active', 6)
INSERT [dbo].[UsersTable] ([Id], [Name], [Email], [Password], [Status], [DesignationId]) VALUES (12, N'muntasir', N'muntasir@mail.com', N'muntasir@mail.com123', N'Active', 3)
INSERT [dbo].[UsersTable] ([Id], [Name], [Email], [Password], [Status], [DesignationId]) VALUES (13, N'atik', N'atik@gmail.com', N'atik', N'Active', 2)
INSERT [dbo].[UsersTable] ([Id], [Name], [Email], [Password], [Status], [DesignationId]) VALUES (14, N'keya', N'k@mail.com', N'k@mail.com123', N'Active', 4)
INSERT [dbo].[UsersTable] ([Id], [Name], [Email], [Password], [Status], [DesignationId]) VALUES (15, N'Tasnim', N't@gmail.com', N't@gmail.com123', N'Active', 2)
SET IDENTITY_INSERT [dbo].[UsersTable] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Project]    Script Date: 29/11/2017 21:39:04 ******/
CREATE NONCLUSTERED INDEX [IX_Project] ON [dbo].[Project]
(
	[CodeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UsersTable]    Script Date: 29/11/2017 21:39:04 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_UsersTable] ON [dbo].[UsersTable]
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AssignResourcePerson]  WITH CHECK ADD  CONSTRAINT [FK_AssignResourcePerson_Project] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([Id])
GO
ALTER TABLE [dbo].[AssignResourcePerson] CHECK CONSTRAINT [FK_AssignResourcePerson_Project]
GO
ALTER TABLE [dbo].[AssignResourcePerson]  WITH CHECK ADD  CONSTRAINT [FK_AssignResourcePerson_UsersTable] FOREIGN KEY([UserId])
REFERENCES [dbo].[UsersTable] ([Id])
GO
ALTER TABLE [dbo].[AssignResourcePerson] CHECK CONSTRAINT [FK_AssignResourcePerson_UsersTable]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Task] FOREIGN KEY([TaskId])
REFERENCES [dbo].[Task] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Task]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_UsersTable] FOREIGN KEY([Id])
REFERENCES [dbo].[UsersTable] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_UsersTable]
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_Project1] FOREIGN KEY([Id])
REFERENCES [dbo].[Project] ([Id])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_Project1]
GO
ALTER TABLE [dbo].[UsersTable]  WITH CHECK ADD  CONSTRAINT [FK_UsersTable_Designation] FOREIGN KEY([DesignationId])
REFERENCES [dbo].[Designation] ([Id])
GO
ALTER TABLE [dbo].[UsersTable] CHECK CONSTRAINT [FK_UsersTable_Designation]
GO
USE [master]
GO
ALTER DATABASE [ProjectManagementDB] SET  READ_WRITE 
GO
