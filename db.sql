USE [master]
GO
/****** Object:  Database [cefalodb]    Script Date: 7/23/2018 12:05:43 AM ******/
CREATE DATABASE [cefalodb]
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
ALTER DATABASE [cefalodb] SET QUERY_STORE = OFF
GO
USE [cefalodb]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [cefalodb]
GO
/****** Object:  Table [dbo].[tblStory]    Script Date: 7/23/2018 12:05:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [text] NULL,
	[Body] [text] NULL,
	[DatePosted] [date] NULL,
	[authorID] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 7/23/2018 12:05:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[fullname] [varchar](150) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblStory] ON 

INSERT [dbo].[tblStory] ([ID], [Title], [Body], [DatePosted], [authorID]) VALUES (1, N'Comet robot Philae phones home again', N'Europe’s comet lander has again been in touch with Earth. The Philae probe made three short contacts of about 10 seconds each at roughly 2130 GMT on Sunday. Controllers at the European Space Agency said the contacts were briefer than they had hoped, but proved the little robot was in encouragingly good health after its seven-month slumber. Philae landed on Comet 67P in November and worked for 60 hours before its battery ran flat. !!', CAST(N'2018-07-05' AS Date), N'ahnaf')
INSERT [dbo].[tblStory] ([ID], [Title], [Body], [DatePosted], [authorID]) VALUES (2, N'The flagship journal of the Society for International Development (SID)', N'This long-established journal, founded in 1957, provides a unique resource and point of reference in the dialogue between activists and intellectuals committed to the search for alternative paths toward social transformation, on the way to a more just and sustainable world.

Offering alternative perspectives on civil society, development policy and community based strategies for livelihoods, gender and social justice, Development provides readers with sharp, critical views and in-depth analysis on the challenging issues of today''s rapidly changing world.', CAST(N'2018-07-09' AS Date), N'shuvo')
INSERT [dbo].[tblStory] ([ID], [Title], [Body], [DatePosted], [authorID]) VALUES (3, N'Interior decorator and small-business', N'Owner Deborah Wiener, 46, has carved out a special place in her Silver Spring, Maryland, market. She doesn''t just help clients pick out colorful fabrics and comfy furniture--Wiener''s work is much more specific and detailed than that. The entrepreneur''s 4-year-old niche company, Designing Solutions LLC, specializes in creating family-friendly interiors for her clients'' homes. This includes helping customers choose furniture that can stand the wear and tear of active children, stain-resistant fabrics, and lamps and accessories that are less prone to breakage.', CAST(N'2018-07-10' AS Date), N'ahnaf')
INSERT [dbo].[tblStory] ([ID], [Title], [Body], [DatePosted], [authorID]) VALUES (4, N'A Gnostic for All Seasons', N'When questioned regarding the personal elements in his lifelong interest in matters Gnostic, Professor Gilles Quispel, the noted Gnostic expert and associate of C.G. Jung, tells a remarkable story. During the dark and hopeless years of World War II, when life and the world seemed lacking in hope and joy, Quispel turned to the study of the message of the great Gnostic teacher and poet, Valentinus. The inspiration, comfort, and faith derived from the writings of Valentinus were instrumental in turning Quispel into a devoted and thoroughly sympathetic scholar of Gnosticism. It would not be a gross exaggeration to state that the experience of the Dutch scholar is far from unique and that numerous persons in our contemporary world are finding the message of this greatest of all Gnostic teachers of eminent and helpful relevance in their lives.', CAST(N'2018-07-11' AS Date), N'shuvo')
INSERT [dbo].[tblStory] ([ID], [Title], [Body], [DatePosted], [authorID]) VALUES (5, N'The Almost Pope', N'G.R.S. Mead, the great early translator and theosophical interpreter of Gnostic documents, called Valentinus "the great unknown" of Gnosticism, and indeed it is true that we do not possess much information regarding his life and personality. He was born in Africa, probably within the territory of the ancient city of Carthage, around or before 100 A.D. He was educated in Alexandria and in the prime of his years transferred his residence to Rome, where he achieved a high degree of prominence in the Christian community between 135 and 160 A.D. Tertullian wrote that Valentinus was a candidate for the office of bishop of Rome and that he lost the election by a rather narrow margin. This same failed orthodox church father (Tertullian himself joined the heresy of Montanism) alleges that Valentinus fell into apostasy around 175 A.D. There is much evidence indicating, however, that he was never universally condemned as a heretic in his lifetime and that he was a respected member of the Christian community until his death. He was almost certainly a priest in the mainstream church and may even have been a bishop.', CAST(N'2018-07-11' AS Date), N'ahnaf')
INSERT [dbo].[tblStory] ([ID], [Title], [Body], [DatePosted], [authorID]) VALUES (6, N'Psycho-Cosmogony and the Pneumatic Equation', N'The often-debated cosmogony of Valentinus might be most profitably understood as being based on a single existential recognition, which might be summarized thus: Something is wrong. Somewhere, somehow, the fabric of being at the existential level of human functioning has lost its integrity. We live in a system which is lacking in essential integrity, and thus is defective. So-called orthodox Christians as well as Jews recognize that there is a certain "wrongness" in human existence, but they account for it chiefly in terms of the effects of human sin, original or other. Jews and Christians hold that whatever is wrong with the world and human existence is the result of human disobedience to the creator. This means, that all evil, discomfort, and terror in our lives and in history are somehow our fault. A great cosmic statement of "Mea Culpa" runs through this world view, which permanently affixes to the human psyche an element of titanic guilt. Valentinus, in opposition to this guilt-ridden view of life, held that the above-noted defect is not the result of our wrongdoing, but is inherent in the system of existence wherein we live and move and have our being. Moreover, by postulating that creation itself is lacking in integrity, Valentinus not only removes the weight of personal and collective guilt from our shoulders but also points to the redemptive potential resident in the soul of every human being.', CAST(N'2018-07-11' AS Date), N'shuvo')
INSERT [dbo].[tblStory] ([ID], [Title], [Body], [DatePosted], [authorID]) VALUES (7, N'Test', N'asdnlnl', CAST(N'2018-07-21' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[tblStory] OFF
SET IDENTITY_INSERT [dbo].[tblUser] ON 

INSERT [dbo].[tblUser] ([ID], [username], [password], [fullname]) VALUES (1, N'ahnaf', N'cefalo', N'Ahnaf Shahriar')
INSERT [dbo].[tblUser] ([ID], [username], [password], [fullname]) VALUES (2, N'admin', N'admin', N'Mr Admin')
INSERT [dbo].[tblUser] ([ID], [username], [password], [fullname]) VALUES (3, N'shuvo', N'admin', N'Ahnaf Sakin')
INSERT [dbo].[tblUser] ([ID], [username], [password], [fullname]) VALUES (4, N'NewUser', N'password', N'New User')
SET IDENTITY_INSERT [dbo].[tblUser] OFF
/****** Object:  StoredProcedure [dbo].[spAddStories]    Script Date: 7/23/2018 12:05:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Ahnaf Shahriar>
-- Create date: <12-Jul-2018>
-- Description:	<Get all the stories from tblStory>
-- =============================================
CREATE PROCEDURE [dbo].[spAddStories] 
@vTitle TEXT,
@vBody TEXT,
@vPostedDate DATE,
@vAuthorID VARCHAR(50)

AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [dbo].[tblStory]
           ([Title]
           ,[Body]
           ,[DatePosted]
		   ,[authorID])
     VALUES
           (@vTitle, @vBody, @vPostedDate, @vAuthorID)
END

GO
/****** Object:  StoredProcedure [dbo].[spAddUser]    Script Date: 7/23/2018 12:05:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Ahnaf Shahriar>
-- Create date: <15-Jul-2018>
-- Description:	<Create new user>
-- =============================================
CREATE PROCEDURE [dbo].[spAddUser] 
@vUsername VARCHAR(50),
@vPassword VARCHAR(50),
@vFullName VARCHAR(150)
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [dbo].[tblUser]
           ([username]
           ,[password]
           ,[fullname])
     VALUES
           (@vUsername, @vPassword, @vFullName)
END

GO
/****** Object:  StoredProcedure [dbo].[spCheckUser]    Script Date: 7/23/2018 12:05:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Ahnaf Shahriar>
-- Create date: <15-Jul-2018>
-- Description:	<Check user login>
-- =============================================
CREATE PROCEDURE [dbo].[spCheckUser]
@vUsername VARCHAR(50),
@vPassword VARCHAR(50)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT username, [password]
	FROM tblUser
	WHERE username = @vUsername AND [password] = @vPassword

END

GO
/****** Object:  StoredProcedure [dbo].[spDeleteStories]    Script Date: 7/23/2018 12:05:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Ahnaf Shahriar>
-- Create date: <12-Jul-2018>
-- Description:	<Delete story>
-- =============================================
CREATE PROCEDURE [dbo].[spDeleteStories] 
@vID INT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM tblStory
	WHERE
	ID = @vID
END

GO
/****** Object:  StoredProcedure [dbo].[spEditStory]    Script Date: 7/23/2018 12:05:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Ahnaf Shahriar>
-- Create date: <13 Jul 2018>
-- Description:	<Stored Procedure to edit stories>
-- =============================================
CREATE PROCEDURE [dbo].[spEditStory]
@vID INT,
@vTitle TEXT,
@vBody TEXT,
@vPostedDate DATE
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE tblStory
	SET Title = @vTitle, Body = @vBody, DatePosted = @vPostedDate
	WHERE
	ID = @vID
END

GO
/****** Object:  StoredProcedure [dbo].[spGetAllStories]    Script Date: 7/23/2018 12:05:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Ahnaf Shahriar>
-- Create date: <12-Jul-2018>
-- Description:	<Get all the stories from tblStory>
-- =============================================
CREATE PROCEDURE [dbo].[spGetAllStories]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM tblStory
END

GO
/****** Object:  StoredProcedure [dbo].[spGetJson]    Script Date: 7/23/2018 12:05:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Ahnaf Shahriar>
-- Create date: <12-Jul-2018>
-- Description:	<Get specific story>
-- =============================================
CREATE PROCEDURE [dbo].[spGetJson] 
@vID INT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM tblStory
	WHERE
	ID = @vID
END

GO
USE [master]
GO
ALTER DATABASE [cefalodb] SET  READ_WRITE 
GO
