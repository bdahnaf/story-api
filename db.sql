USE [master]
GO
/****** Object:  Database [cefalodb]    Script Date: 7/7/2018 5:40:03 PM ******/
CREATE DATABASE [cefalodb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'cefalodb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\cefalodb.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'cefalodb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\cefalodb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [cefalodb] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [cefalodb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [cefalodb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [cefalodb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [cefalodb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [cefalodb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [cefalodb] SET ARITHABORT OFF 
GO
ALTER DATABASE [cefalodb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [cefalodb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [cefalodb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [cefalodb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [cefalodb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [cefalodb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [cefalodb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [cefalodb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [cefalodb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [cefalodb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [cefalodb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [cefalodb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [cefalodb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [cefalodb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [cefalodb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [cefalodb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [cefalodb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [cefalodb] SET RECOVERY FULL 
GO
ALTER DATABASE [cefalodb] SET  MULTI_USER 
GO
ALTER DATABASE [cefalodb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [cefalodb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [cefalodb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [cefalodb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [cefalodb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'cefalodb', N'ON'
GO
USE [cefalodb]
GO
/****** Object:  Table [dbo].[tblStory]    Script Date: 7/7/2018 5:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [text] NULL,
	[body] [text] NULL,
	[date] [datetime] NULL,
	[author] [varchar](50) NULL,
	[story_id] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblStory] ON 

INSERT [dbo].[tblStory] ([id], [title], [body], [date], [author], [story_id]) VALUES (1, N'Comet robot Philae phones home again', N'Europe’s comet lander has again been in touch with Earth. The Philae probe made three short contacts of about 10 seconds each at roughly 2130 GMT on Sunday. Controllers at the European Space Agency said the contacts were briefer than they had hoped, but proved the little robot was in encouragingly good health after its seven-month slumber. Philae landed on Comet 67P in November and worked for 60 hours before its battery ran flat.', CAST(N'2018-07-05 00:00:00.000' AS DateTime), N'user01', N'1')
SET IDENTITY_INSERT [dbo].[tblStory] OFF
USE [master]
GO
ALTER DATABASE [cefalodb] SET  READ_WRITE 
GO
