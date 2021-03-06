USE [VoteWeb]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 2019/4/24 12:47:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Message](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TItle] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Message] [text] NOT NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserList]    Script Date: 2019/4/24 12:47:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserList](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Sex] [nchar](10) NOT NULL,
	[Class] [varchar](50) NOT NULL,
	[Type] [nchar](10) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Image] [text] NULL,
 CONSTRAINT [PK_UserList] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VoteRecord]    Script Date: 2019/4/24 12:47:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VoteRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WorksListId] [int] NULL,
	[UserId] [int] NULL,
	[CreateTime] [varchar](50) NULL,
 CONSTRAINT [PK_VoteRecord] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VoteType]    Script Date: 2019/4/24 12:47:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VoteType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[Describe] [varchar](50) NOT NULL,
	[Url] [varchar](50) NOT NULL,
	[Url2] [varchar](50) NOT NULL,
 CONSTRAINT [PK_VoteType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WorksList]    Script Date: 2019/4/24 12:47:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WorksList](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Author] [varchar](50) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[Describe] [varchar](50) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[VoteNumber] [int] NULL,
	[Src] [text] NULL,
 CONSTRAINT [PK_WorksList] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Message] ON 

INSERT [dbo].[Message] ([ID], [TItle], [Name], [Message]) VALUES (1, N'清明上河图', N'123', N'测试评论')
INSERT [dbo].[Message] ([ID], [TItle], [Name], [Message]) VALUES (2, N'清明上河图', N'12', N'测试评论')
INSERT [dbo].[Message] ([ID], [TItle], [Name], [Message]) VALUES (3, N'大数据', N'123', N'测试评论')
INSERT [dbo].[Message] ([ID], [TItle], [Name], [Message]) VALUES (4, N'大数据', N'12', N'测试评论')
INSERT [dbo].[Message] ([ID], [TItle], [Name], [Message]) VALUES (5, N'离骚', N'123', N'测试评论')
INSERT [dbo].[Message] ([ID], [TItle], [Name], [Message]) VALUES (6, N'离骚', N'12', N'测试评论')
INSERT [dbo].[Message] ([ID], [TItle], [Name], [Message]) VALUES (7, N'旅行', N'123', N'测试评论')
INSERT [dbo].[Message] ([ID], [TItle], [Name], [Message]) VALUES (14, N'大数据', N'123', N'测试')
INSERT [dbo].[Message] ([ID], [TItle], [Name], [Message]) VALUES (16, N'旅行', N'123', N'测试')
INSERT [dbo].[Message] ([ID], [TItle], [Name], [Message]) VALUES (17, N'清明上河图', N'123', N'这是测试')
INSERT [dbo].[Message] ([ID], [TItle], [Name], [Message]) VALUES (18, N'清明上河图', N'123', N'再测试')
INSERT [dbo].[Message] ([ID], [TItle], [Name], [Message]) VALUES (20, N'大数据', N'123', N'测试')
INSERT [dbo].[Message] ([ID], [TItle], [Name], [Message]) VALUES (21, N'大数据', N'123', N'这是测试')
INSERT [dbo].[Message] ([ID], [TItle], [Name], [Message]) VALUES (22, N'清明上河图', N'12', N'这是老师评论')
SET IDENTITY_INSERT [dbo].[Message] OFF
SET IDENTITY_INSERT [dbo].[UserList] ON 

INSERT [dbo].[UserList] ([ID], [Name], [Sex], [Class], [Type], [Password], [Image]) VALUES (4, N'123', N'男         ', N'软件班', N'学生        ', N'123', NULL)
INSERT [dbo].[UserList] ([ID], [Name], [Sex], [Class], [Type], [Password], [Image]) VALUES (5, N'12', N'男         ', N'软件班', N'教师        ', N'12', NULL)
INSERT [dbo].[UserList] ([ID], [Name], [Sex], [Class], [Type], [Password], [Image]) VALUES (6, N'13', N'男         ', N'软件班', N'管理员       ', N'13', NULL)
INSERT [dbo].[UserList] ([ID], [Name], [Sex], [Class], [Type], [Password], [Image]) VALUES (1007, N'测试用户', N'女         ', N'软件班', N'学生        ', N'1234', N'123')
SET IDENTITY_INSERT [dbo].[UserList] OFF
SET IDENTITY_INSERT [dbo].[VoteType] ON 

INSERT [dbo].[VoteType] ([ID], [Type], [Describe], [Url], [Url2]) VALUES (1, N'绘画作品', N'这是绘画作品', N'Students/Manage/Pictures.aspx', N'Students/Pictures.aspx')
INSERT [dbo].[VoteType] ([ID], [Type], [Describe], [Url], [Url2]) VALUES (2, N'诗文作品', N'这是诗文作品', N'Students/Manage/Articles.aspx', N'Students/Articles.aspx')
INSERT [dbo].[VoteType] ([ID], [Type], [Describe], [Url], [Url2]) VALUES (3, N'摄影作品', N'这是摄影作品', N'Students/Manage/Photograph.aspx', N'Students/Photograph.aspx')
INSERT [dbo].[VoteType] ([ID], [Type], [Describe], [Url], [Url2]) VALUES (4, N'视频作品', N'这是视频作品', N'Students/Manage/VLog.aspx', N'Students/VLog.aspx')
SET IDENTITY_INSERT [dbo].[VoteType] OFF
SET IDENTITY_INSERT [dbo].[WorksList] ON 

INSERT [dbo].[WorksList] ([ID], [Author], [Title], [Describe], [Type], [VoteNumber], [Src]) VALUES (1, N'123', N'清明上河图', N'这是中国十大传世名画之一', N'绘画作品', 14, N'../Works/Pictures/112.jpg')
INSERT [dbo].[WorksList] ([ID], [Author], [Title], [Describe], [Type], [VoteNumber], [Src]) VALUES (4, N'123', N'大数据', N'大数据图片', N'摄影作品', 23463, N'../Works/Pictures/6.jpg')
INSERT [dbo].[WorksList] ([ID], [Author], [Title], [Describe], [Type], [VoteNumber], [Src]) VALUES (5, N'123', N'离骚', N'中国古代最长的抒情诗，是指所谓', N'诗文作品', 10011, N'帝高阳之苗裔兮，朕皇考曰伯庸。
摄提贞于孟陬兮，惟庚寅吾以降。
皇览揆余初度兮，肇锡余以嘉名：
名余曰正则兮，字余曰灵均。
纷吾既有此内美兮，又重之以修能。
扈江离与辟芷兮，纫秋兰以为佩。
汩余若将不及兮，恐年岁之不吾与。
朝搴阰之木兰兮，夕揽洲之宿莽。
日月忽其不淹兮，春与秋其代序。')
INSERT [dbo].[WorksList] ([ID], [Author], [Title], [Describe], [Type], [VoteNumber], [Src]) VALUES (6, N'123', N'旅行', N'日常记录1', N'视频作品', 101, N'../Works/Videos/1.mp4')
INSERT [dbo].[WorksList] ([ID], [Author], [Title], [Describe], [Type], [VoteNumber], [Src]) VALUES (1010, N'123', N'大数据', N'大数据图片二', N'摄影作品', 110, N'../Works/Pictures/6.jpg')
INSERT [dbo].[WorksList] ([ID], [Author], [Title], [Describe], [Type], [VoteNumber], [Src]) VALUES (1021, N'123', N'测试', N'测试', N'诗文作品', 2, N'测试')
INSERT [dbo].[WorksList] ([ID], [Author], [Title], [Describe], [Type], [VoteNumber], [Src]) VALUES (1022, N'123', N'离骚1', N'测试', N'绘画作品', 0, N'../Works/Pictures/1.jpg')
SET IDENTITY_INSERT [dbo].[WorksList] OFF
ALTER TABLE [dbo].[WorksList] ADD  CONSTRAINT [DF_WorksList_VoteNumber]  DEFAULT ((0)) FOR [VoteNumber]
GO
