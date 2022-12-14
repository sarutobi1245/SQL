USE [Suggession]
GO
/****** Object:  Table [dbo].[AccountGroupAccount]    Script Date: 11/17/2022 3:54:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountGroupAccount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountGroupId] [int] NOT NULL,
	[AccountId] [int] NOT NULL,
 CONSTRAINT [PK_AccountGroupAccount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountGroups]    Script Date: 11/17/2022 3:54:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountGroups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Position] [int] NOT NULL,
	[Sequence] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[ModifiedTime] [datetime2](7) NULL,
 CONSTRAINT [PK_AccountGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 11/17/2022 3:54:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](255) NULL,
	[FullName] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[IsLock] [bit] NOT NULL,
	[AccountGroupId] [int] NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[ModifiedTime] [datetime2](7) NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 11/17/2022 3:54:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[CreatedBy] [int] NOT NULL,
	[AccountId] [int] NOT NULL,
	[IdeaId] [int] NOT NULL,
	[ModifiedBy] [int] NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[ModifiedTime] [datetime2](7) NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Idea]    Script Date: 11/17/2022 3:54:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Idea](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReceiveID] [int] NULL,
	[SendID] [int] NULL,
	[Title] [nvarchar](max) NULL,
	[Suggession] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[ModifiedTime] [datetime2](7) NULL,
	[Issue] [nvarchar](max) NULL,
	[Isshow] [bit] NOT NULL,
	[IsAnnouncement] [bit] NULL,
	[IsShowApproveTab] [bit] NULL,
 CONSTRAINT [PK_Idea] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdeaHistory]    Script Date: 11/17/2022 3:54:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdeaHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdeaID] [int] NOT NULL,
	[InsertBy] [int] NULL,
	[Status] [int] NOT NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[ModifiedTime] [datetime2](7) NULL,
	[Isshow] [bit] NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[CommentZh] [nvarchar](max) NULL,
 CONSTRAINT [PK_IdeaHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanIdea]    Script Date: 11/17/2022 3:54:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanIdea](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IdeaID] [int] NOT NULL,
	[Plan] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[StatusPlanID] [int] NULL,
	[CreatedTime] [datetime2](7) NULL,
	[CreatedBy] [int] NULL,
	[IsDisplay] [bit] NOT NULL,
	[DeleteTime] [datetime2](7) NULL,
	[IsReject] [bit] NULL,
	[StatusPlanID_Before] [int] NULL,
 CONSTRAINT [PK_PlanIdea] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanStatus]    Script Date: 11/17/2022 3:54:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Icon] [nvarchar](50) NULL,
	[Color] [nvarchar](max) NULL,
	[FontSize] [nvarchar](max) NULL,
 CONSTRAINT [PK_PlanStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 11/17/2022 3:54:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [int] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 11/17/2022 3:54:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[NameEn] [nvarchar](max) NULL,
	[NameZh] [nvarchar](max) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemLanguages]    Script Date: 11/17/2022 3:54:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemLanguages](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SLPage] [nvarchar](50) NULL,
	[SLType] [nvarchar](50) NULL,
	[SLKey] [nvarchar](50) NULL,
	[Comment] [nvarchar](100) NULL,
	[SLTW] [nvarchar](500) NULL,
	[SLEN] [nvarchar](500) NULL,
 CONSTRAINT [PK_SystemLanguage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tab]    Script Date: 11/17/2022 3:54:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tab](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
	[NameEn] [nvarchar](max) NULL,
	[NameZh] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tab] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeLine]    Script Date: 11/17/2022 3:54:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeLine](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](50) NULL,
	[IdeaID] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedTime] [datetime2](7) NULL,
	[Comment] [nvarchar](max) NULL,
	[ModifiedTime] [datetime2](7) NULL,
 CONSTRAINT [PK_TimeLine] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UploadFile]    Script Date: 11/17/2022 3:54:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UploadFile](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Path] [nvarchar](max) NULL,
	[IdealID] [int] NOT NULL,
	[UploadTime] [datetime2](7) NOT NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[ModifiedTime] [datetime2](7) NULL,
 CONSTRAINT [PK_UploadFile] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AccountGroupAccount] ON 

INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (4, 1, 5)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (1010, 1, 1008)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (1012, 1, 1010)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (1043, 1, 1009)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (1045, 1, 4)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (1046, 1, 2)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (1047, 1, 8)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (1048, 1, 9)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (1052, 1, 1020)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (1056, 1, 1024)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (1060, 1, 1012)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (1062, 1, 1013)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (1063, 1, 1014)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (1064, 1, 1015)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (1065, 1, 1017)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (1066, 1, 1018)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (1068, 1, 1021)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (1069, 1, 1022)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (1070, 1, 1023)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (1071, 1, 1019)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (1073, 2, 1016)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (1075, 1, 7)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (1079, 3, 6)
INSERT [dbo].[AccountGroupAccount] ([Id], [AccountGroupId], [AccountId]) VALUES (1080, 2, 3)
SET IDENTITY_INSERT [dbo].[AccountGroupAccount] OFF
SET IDENTITY_INSERT [dbo].[AccountGroups] ON 

INSERT [dbo].[AccountGroups] ([Id], [Name], [Position], [Sequence], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime]) VALUES (1, N'Proposer', 1, 1, 0, 0, CAST(N'2021-10-13T00:00:00.0000000' AS DateTime2), CAST(N'2021-12-10T11:21:28.4457178' AS DateTime2))
INSERT [dbo].[AccountGroups] ([Id], [Name], [Position], [Sequence], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime]) VALUES (2, N'Spokesman', 2, 2, 0, 0, CAST(N'2021-10-13T00:00:00.0000000' AS DateTime2), CAST(N'2021-12-10T11:21:31.3918154' AS DateTime2))
INSERT [dbo].[AccountGroups] ([Id], [Name], [Position], [Sequence], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime]) VALUES (3, N'Erick', 3, 3, 0, 0, CAST(N'2021-10-13T00:00:00.0000000' AS DateTime2), CAST(N'2021-11-06T07:47:47.3208536' AS DateTime2))
SET IDENTITY_INSERT [dbo].[AccountGroups] OFF
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountGroupId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime]) VALUES (1, N'admin', N'admin', N'8Azyga8DO7g=', NULL, 0, NULL, 0, 0, CAST(N'2021-10-13T00:00:00.0000000' AS DateTime2), CAST(N'2021-11-13T09:23:00.4142747' AS DateTime2))
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountGroupId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime]) VALUES (2, N'C65105', N'Leo', N'8Azyga8DO7g=', NULL, 0, NULL, 0, 0, CAST(N'2021-10-13T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-15T07:55:04.8134253' AS DateTime2))
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountGroupId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime]) VALUES (3, N'C90342', N'John Chuang', N'8Azyga8DO7g=', NULL, 0, NULL, 0, 0, CAST(N'2021-10-13T00:00:00.0000000' AS DateTime2), CAST(N'2022-04-19T07:54:34.3480652' AS DateTime2))
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountGroupId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime]) VALUES (4, N'C63125', N'Henry', N'8Azyga8DO7g=', NULL, 0, NULL, 0, 0, CAST(N'2021-10-13T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-15T07:54:54.4088224' AS DateTime2))
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountGroupId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime]) VALUES (5, N'C60212', N'Peter', N'8Azyga8DO7g=', NULL, 0, NULL, 0, 0, CAST(N'2021-10-13T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountGroupId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime]) VALUES (6, N'C90014', N'Erick.Chong', N'8Azyga8DO7g=', NULL, 0, NULL, 0, 0, CAST(N'2021-10-13T00:00:00.0000000' AS DateTime2), CAST(N'2022-04-14T10:54:03.1974720' AS DateTime2))
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountGroupId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime]) VALUES (7, N'C90394', N'Swook', N'BB7+p7nS6qw=', NULL, 0, NULL, 0, 0, CAST(N'2021-11-06T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-26T11:21:41.4242906' AS DateTime2))
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountGroupId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime]) VALUES (8, N'C90647', N'Yvonne', N'BB7+p7nS6qw=', NULL, 0, NULL, 0, 0, CAST(N'2021-11-22T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-15T07:55:15.6871714' AS DateTime2))
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountGroupId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime]) VALUES (9, N'C60213', N'peter test', N'8Azyga8DO7g=', NULL, 0, NULL, 0, 0, CAST(N'2021-11-22T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-15T07:55:28.7218048' AS DateTime2))
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountGroupId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime]) VALUES (1008, N'C66288', N'Sin Chen', N'BB7+p7nS6qw=', NULL, 0, NULL, 0, 0, CAST(N'2021-12-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountGroupId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime]) VALUES (1009, N'C90654', N'Ariel Hsu', N'BB7+p7nS6qw=', NULL, 0, NULL, 0, 0, CAST(N'2021-12-07T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-15T07:54:19.2092517' AS DateTime2))
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountGroupId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime]) VALUES (1010, N'C90655', N'Nancy Tseng', N'BB7+p7nS6qw=', NULL, 0, NULL, 0, 0, CAST(N'2021-12-07T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-10T09:38:27.4579154' AS DateTime2))
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountGroupId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime]) VALUES (1012, N'C90418', N'Coni Lin', N'BB7+p7nS6qw=', NULL, 0, NULL, 0, 0, CAST(N'2022-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-16T11:16:43.2110605' AS DateTime2))
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountGroupId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime]) VALUES (1013, N'C80122', N'He Lai', N'BB7+p7nS6qw=', NULL, 0, NULL, 0, 0, CAST(N'2022-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-16T11:17:11.9350716' AS DateTime2))
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountGroupId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime]) VALUES (1014, N'C90359', N'Mel Kuo', N'BB7+p7nS6qw=', NULL, 0, NULL, 0, 0, CAST(N'2022-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-16T11:17:25.6410994' AS DateTime2))
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountGroupId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime]) VALUES (1015, N'C90512', N'Vicky Lu', N'BB7+p7nS6qw=', NULL, 0, NULL, 0, 0, CAST(N'2022-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-16T11:17:35.6114684' AS DateTime2))
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountGroupId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime]) VALUES (1016, N'C90659', N'Kelvin Lin', N'8Azyga8DO7g=', NULL, 0, NULL, 0, 0, CAST(N'2022-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-17T11:11:58.5929363' AS DateTime2))
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountGroupId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime]) VALUES (1017, N'C90546', N'Frank Lee', N'BB7+p7nS6qw=', NULL, 0, NULL, 0, 0, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-16T11:17:45.8570154' AS DateTime2))
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountGroupId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime]) VALUES (1018, N'C90457', N'Morgan Hsiao', N'BB7+p7nS6qw=', NULL, 0, NULL, 0, 0, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-16T11:20:09.0202152' AS DateTime2))
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountGroupId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime]) VALUES (1019, N'C90352', N'Chris Liu', N'BB7+p7nS6qw=', NULL, 0, NULL, 0, 0, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-16T11:22:03.1288154' AS DateTime2))
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountGroupId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime]) VALUES (1020, N'C80112', N'Zhu Gang', N'BB7+p7nS6qw=', NULL, 0, NULL, 0, 0, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-15T10:13:49.8015928' AS DateTime2))
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountGroupId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime]) VALUES (1021, N'C90364', N'James Chou', N'BB7+p7nS6qw=', NULL, 0, NULL, 0, 0, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-16T11:20:56.2742869' AS DateTime2))
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountGroupId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime]) VALUES (1022, N'C80264', N'Deniel Cao', N'BB7+p7nS6qw=', NULL, 0, NULL, 0, 0, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-16T11:21:04.8227535' AS DateTime2))
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountGroupId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime]) VALUES (1023, N'C90451', N'Eric Chen', N'PQDT23FWuaqXjLj9beesow==', NULL, 0, NULL, 0, 0, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2), CAST(N'2022-04-06T08:48:56.4758778' AS DateTime2))
INSERT [dbo].[Accounts] ([Id], [Username], [FullName], [Password], [Email], [IsLock], [AccountGroupId], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime]) VALUES (1024, N'C90623', N'Clara Chang', N'BB7+p7nS6qw=', NULL, 0, NULL, 0, 0, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
SET IDENTITY_INSERT [dbo].[Idea] ON 

INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1049, 3, 1010, N'洗衣機太吵', N'希望追加隔音設備，或規定假日洗衣時間在早上9點30分後', 7, 1010, NULL, CAST(N'2022-03-15T14:06:49.0288374' AS DateTime2), CAST(N'2022-03-15T14:13:24.8820342' AS DateTime2), N'洗衣機太吵，目前沒有隔音設備', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1050, 1016, 1008, N'Test 1234', N'345678910', 2, 1008, NULL, CAST(N'2022-03-16T10:29:01.1481405' AS DateTime2), CAST(N'2022-03-16T10:29:28.5365852' AS DateTime2), N'ABCDEFG', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1051, 1016, 1015, N'Villa區廚房增加儲物櫃', N'希望新增, 避免物品散落地面存放', 6, 1015, NULL, CAST(N'2022-03-16T12:00:31.1977267' AS DateTime2), CAST(N'2022-04-15T13:07:15.9228438' AS DateTime2), N'Villa 區有廚房, 但部分舊的樓層未有儲物櫃', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1052, 3, 1010, N'洗衣機問題', N'可以加裝墊子', 7, 1010, NULL, CAST(N'2022-03-16T14:00:36.6578189' AS DateTime2), CAST(N'2022-04-22T13:40:21.8570097' AS DateTime2), N'有點吵', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1053, 3, 1024, N'公文簽呈無紙化', N'公文簽呈無紙化，系統簽核申請者可查詢簽核進度
完整分類建置表單模板、歷史資料庫
減少紙張使用
減少病毒透過公文簽呈傳播
簽核站點清楚可詢
', 7, 1024, NULL, CAST(N'2022-03-16T14:06:59.2863978' AS DateTime2), CAST(N'2022-03-31T08:49:24.3831797' AS DateTime2), N'公文簽呈人工送簽跑各站點耗時
簽核進度模糊
庶務耗材使用量(紙張、印表機、碳粉)
病毒透過公文紙張傳播', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1054, 1016, 1010, N'測試', N'23445', 7, 1010, NULL, CAST(N'2022-03-16T14:35:36.0549685' AS DateTime2), CAST(N'2022-03-16T14:46:14.2231776' AS DateTime2), N'1', 1, 1, 1)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1055, 3, 1024, N'H棟宿舍床墊太窄', N'床墊定期汰舊換新，加寬床墊', 7, 1024, NULL, CAST(N'2022-03-17T09:39:52.9083325' AS DateTime2), CAST(N'2022-03-31T08:49:19.1773838' AS DateTime2), N'翻身很難，有快掉下床的感覺
約3-6個月床就凹陷了
', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1056, 1016, 1024, N'上下班打卡機動線不佳', N'重新規劃打卡機安排，外籍、越籍打卡機錯開一點距離', 7, 1024, NULL, CAST(N'2022-03-17T09:50:37.2082663' AS DateTime2), CAST(N'2022-03-31T08:49:12.7005830' AS DateTime2), N'外籍打卡機正下方為越籍新人打卡機，上下班跟越籍新人擠在一起打卡，動線不佳', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1057, 1016, 1023, N'VILLA門口積水', N'趁還沒雨季趕緊弄一弄吧。', 6, 1023, NULL, CAST(N'2022-03-17T14:31:23.0865356' AS DateTime2), CAST(N'2022-04-14T09:04:17.4893349' AS DateTime2), N'VILLA大門按指紋的地方都是常態性的積水。', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1058, 3, 1010, N'餐廳用餐時應加強燈光照明', N'如仍在用餐時間內，燈光應維持照明', 7, 1010, NULL, CAST(N'2022-03-18T14:14:36.1901817' AS DateTime2), CAST(N'2022-03-18T14:18:23.0003093' AS DateTime2), N'在用餐時間時會關閉部分照明，造成用餐人員的不便', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1059, 3, 1010, N'測試', N'56778', 7, 1010, NULL, CAST(N'2022-03-18T14:30:00.1334639' AS DateTime2), CAST(N'2022-04-19T08:10:54.8492683' AS DateTime2), N'12344', 1, 1, 1)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1060, 3, 1010, N'上班時間維持開冷氣', N'八點前和四點後維持開冷氣', 7, 1010, NULL, CAST(N'2022-03-19T14:15:16.3658654' AS DateTime2), CAST(N'2022-04-20T08:35:58.8773090' AS DateTime2), N'目前八點前和四點後冷氣會自動關閉，造成工作效率不彰', 1, 0, 1)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1061, 1016, 1017, N'業務辦公室冷不冷', N'建議重新檢查或者重灌冷媒，否則不僅冷房效率差，也浪費電', 7, 1017, NULL, CAST(N'2022-03-22T15:08:31.8849080' AS DateTime2), CAST(N'2022-04-15T14:10:21.0106717' AS DateTime2), N'業務辦公室冷氣效率低落，即使全開之後還是與沒開差不多', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1062, 3, 1010, N'張量科技的球型馬達解放衛星上的空間，帶來龐大太空商機，成為台灣搶進太空產業的敲門磚。 建立以學習為目的、不害怕跟別人不一樣的思維，成功自然就會到來。 顏伯勳的自學秘訣：學習、實作、分享。張量科技的球型馬達解放衛星上的空間，帶來龐大太空商機，成為台灣搶進太空產業的敲門磚。 建立以學習為目的、不害怕跟別人不一樣的思維，成功自然就會到來。 顏伯勳的自學秘訣：學習、實作、分享。張量科技的球型馬達解放衛星上的空間，帶來龐大太空商機，成為台灣搶進太空產業的敲門磚。 建立以學習為目的、不害怕跟別人不一樣的思維，成功自然就會到來。 顏伯勳的自學秘訣：學習、實作、分享。張量科技的球型馬達解放衛星上的空間，帶來龐大太空商機，成為台灣搶進太空產業的敲門磚。 建立以學習為目的、不害怕跟別人不一樣的思維，成功自然就會到來。 顏伯勳的自學秘訣：學習、實作、分享。張量科技的球型馬達解放衛星上的空間，帶來龐大太空商機，成為台灣搶進太空產業的敲門磚。 建立以學習為目的、不害怕跟別人不一樣的思維，成功自然就會到來。 顏伯勳的自學秘訣：學習、實作、分享。張量科技的球型馬達解放衛星上的空間，帶來龐大太空商機，成為台灣搶進太空產業的敲門磚。 建立以學習為目的、不害怕跟別人不一樣的思維，成功自然就會到來。 顏伯勳的自學秘訣：學習、實作、分享。張量科技的球型馬達解放衛星上的空間，帶來龐大太空商機，成為台灣搶進太空產業的敲門磚。 建立以學習為目的、不害怕跟別人不一樣的思維，成功自然就會到來。 顏伯勳的自學秘訣：學習、實作、分享。張量科技的球型馬達解放衛星上的空間，帶來龐大太空商機，成為台灣搶進太空產業的敲門磚。 建立以學習為目的、不害怕跟別人不一樣的思維，成功自然就會到來。 顏伯勳的自學秘訣：學習、實作、分享。張量科技的球型馬達解放衛星上的空間，帶來龐大太空商機，成為台灣搶進太空產業的敲門磚。 建立以學習為目的、不害怕跟別人不一樣的思維，成功自然就會到來。 顏伯勳的自學秘訣：學習、實作、分享。秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享', N'秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享v', 2, 1010, NULL, CAST(N'2022-03-25T12:01:39.3519206' AS DateTime2), CAST(N'2022-03-30T17:49:04.7193567' AS DateTime2), N'秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1063, 1016, 1015, N'員工識別證改版', N'建議可以整合識別證與門禁磁卡, 將二卡合一為一張塑料磁卡。', 6, 1015, NULL, CAST(N'2022-03-25T13:10:05.3349062' AS DateTime2), CAST(N'2022-04-06T10:33:00.8501109' AS DateTime2), N'現有員工識別證是紙質的, 容易遇水濕掉。疫情影響下公司又有製作門禁磁卡。', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1064, 1016, 1015, N'新增Villa區冰箱', N'建議可以調查新增一台冰箱, 供食材的保鮮。', 7, 1015, NULL, CAST(N'2022-03-25T13:15:41.5302986' AS DateTime2), CAST(N'2022-04-06T10:30:53.7879296' AS DateTime2), N'Villa區的AB或E型房型的2樓為2間房間, 但只有一台冰箱。但H棟3間房間有2台冰箱, 而Villa區有廚房, 許多女性同仁會在下班後烹煮。', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1065, 1016, 1015, N'廁所增加置物不銹鋼層架', N'建議毛巾架上可以新增一放置衣物的不銹鋼層架放置乾淨衣物。', 7, 1015, NULL, CAST(N'2022-03-25T13:27:08.7058788' AS DateTime2), CAST(N'2022-04-06T10:30:39.8250008' AS DateTime2), N'廁所沒有任何可以放置衣物的架子, 洗澡時無法放置欲更換的衣物。', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1066, 1016, 1014, N'牛肉麵', N'不知道  有可能是煮得比較久的關西嗎
湯越煮會越辣', 7, 1014, NULL, CAST(N'2022-03-25T14:06:39.2161404' AS DateTime2), CAST(N'2022-04-16T09:37:14.0767747' AS DateTime2), N'晚餐提供的牛肉麵比先前午餐提供的牛肉麵辣度高很多', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1067, 1016, 1013, N'年度體檢可否安排更細緻的檢查', N'能否像台灣總公司安排的那種健康檢查那樣，可以增加多檢查一些項目，超出規定項目的部份可以自費？請評估一下，謝謝。', 7, 1013, NULL, CAST(N'2022-03-25T14:34:52.3839083' AS DateTime2), CAST(N'2022-04-14T09:13:15.9078270' AS DateTime2), N'目前每年一次的年度體檢是辦工作證所需的體檢，感覺較簡單且檢查不是很嚴謹。', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1068, 1016, 1020, N'员工加班20.00点用餐不便', N'   希望后段车间加班用餐可以改至K/J栋旁边餐厅（既中午素食餐厅位置）', 7, 1020, NULL, CAST(N'2022-03-25T14:58:26.2921172' AS DateTime2), CAST(N'2022-04-09T10:37:20.8670538' AS DateTime2), N'      为配合生产需求，生管要求M/L/K/J/I栋生产线加班到20.00点，由于加班用餐+到餐厅来回时间只有30分钟根本不够（如遇下雨天更加困难），造成50%-80%的员工不到餐厅用餐，既浪费了餐费又拖垮了员工身体。', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1069, 1016, 1014, N'宿舍椅子問題', N'宿舍椅子建議更換可調整高度與有輪子的椅子
每個人的身高不一樣 以及木頭的椅子移動容易吵到別人', 6, 1014, NULL, CAST(N'2022-03-25T16:14:23.4619422' AS DateTime2), CAST(N'2022-04-16T09:36:37.3787557' AS DateTime2), N'宿舍木頭椅子不符合人體工學', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1070, 1016, 1017, N'辦公室冷氣', N'將冷氣開放時間延長，七點半到六點，讓各部門自行依照加班情況開關冷氣，而非統一於四點切斷電源', 7, 1017, NULL, CAST(N'2022-03-26T11:20:18.6193710' AS DateTime2), CAST(N'2022-04-15T14:09:52.9735053' AS DateTime2), N'辦公室冷氣僅於早上八點到下午四點開放，造成工作環境燥熱，人人心浮氣躁，歸心似箭，沒人想留下來加班', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1071, 1016, 1012, N'外籍幹部伙食', N'如果肉類都會切小丁，照理說葉菜類也要切斷才會好入味跟入口，圖檔3/22 中餐青江菜為例
3/22中餐的主食(照片肉類)辣的口味過鹹', 7, 1012, NULL, CAST(N'2022-03-26T11:23:59.0818508' AS DateTime2), CAST(N'2022-05-10T10:16:39.6910909' AS DateTime2), N'1.葉菜類青菜切段，此案例發生青江菜，空心菜，小白菜......
2. 3/22中餐主食過鹹
', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1072, 1016, 1021, N'test', N'test', 7, 1021, NULL, CAST(N'2022-03-26T11:35:49.4086646' AS DateTime2), CAST(N'2022-04-06T11:09:16.4069577' AS DateTime2), N'test', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1073, 3, 7, N'水煮蝦肉好吃', N'因逢疫情，建議可以每周提供一次，讓大家吃好維持健康狀態', 3, 7, NULL, CAST(N'2022-03-26T11:59:07.5366825' AS DateTime2), CAST(N'2022-03-29T17:07:26.0228369' AS DateTime2), N'現在蝦肉出現頻頻率大概兩到三周一次', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1074, 3, 1019, N'中午第一批飯菜準備', N'第一批吃飯應該是有足夠的時間準備', 7, 1019, NULL, CAST(N'2022-03-28T16:19:54.5686773' AS DateTime2), CAST(N'2022-04-14T17:36:18.8955204' AS DateTime2), N'中午第一批吃飯時餐廳似乎往往都沒準備好，第一批原本就沒有多少人，應該有足夠時間可以準備而不是時間到了卻還往往捕菜', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1075, 3, 1010, N'B棟女廁太少間', N'希望加蓋廁所', 7, 1010, NULL, CAST(N'2022-03-28T17:10:58.3497484' AS DateTime2), CAST(N'2022-03-28T17:13:09.0904653' AS DateTime2), N'廁所不夠，時常要排隊，影響工作效率', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1076, 1016, 1018, N'H棟隔音差', N'改善隔音或和住宿同仁宣導', 6, 1018, NULL, CAST(N'2022-03-30T07:51:24.7234534' AS DateTime2), CAST(N'2022-04-15T13:49:55.8931711' AS DateTime2), N'412房時常在平日或週日早晨約莫6點，開始聽樓上住戶廁所的流水聲。
時常長達5-10分鐘持續不停的流水聲，推測並非馬桶而是洗手台。
以上情形一週約發生3-4次', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1077, 3, 1010, N'水質不佳', N'飲水機、洗手槽和浴室加裝濾水器', 7, 1010, NULL, CAST(N'2022-03-30T17:59:12.6898710' AS DateTime2), CAST(N'2022-03-30T18:01:55.3693165' AS DateTime2), N'水質不佳，請改善', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1078, 1016, 1010, N'12345', N'TTTTTTTTTTTTTTTTTTT@@@@@@@@@', 7, 1010, NULL, CAST(N'2022-03-30T18:09:47.5217472' AS DateTime2), CAST(N'2022-03-30T18:11:32.9591640' AS DateTime2), N'掱11111111111111', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1079, 3, 1010, N'Test File size', N'file size', 1, 1010, NULL, CAST(N'2022-03-31T12:28:40.8537452' AS DateTime2), NULL, N'test test test ', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1080, 3, 1010, N'Test File size', N'file size', 1, 1010, NULL, CAST(N'2022-03-31T12:28:41.5211400' AS DateTime2), NULL, N'test test test ', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1081, 3, 1010, N'Test File size', N'file size', 1, 1010, NULL, CAST(N'2022-03-31T12:28:42.2590770' AS DateTime2), NULL, N'test test test ', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1082, 3, 1010, N'Test File size', N'file size', 1, 1010, NULL, CAST(N'2022-03-31T12:28:42.5870499' AS DateTime2), NULL, N'test test test ', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1083, 3, 1010, N'Test File size', N'file size', 1, 1010, NULL, CAST(N'2022-03-31T12:28:43.1272347' AS DateTime2), NULL, N'test test test ', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1084, 3, 1010, N'Test File size', N'file size', 1, 1010, NULL, CAST(N'2022-03-31T12:28:43.1726847' AS DateTime2), NULL, N'test test test ', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1085, 1016, 1010, N'1', N'1', 3, 1010, NULL, CAST(N'2022-03-31T15:48:39.1315720' AS DateTime2), CAST(N'2022-03-31T15:49:39.8719049' AS DateTime2), N'1', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1087, 1016, 1024, N'菜單', N'菜單多變化', 3, 1024, NULL, CAST(N'2022-04-09T14:17:16.5142417' AS DateTime2), CAST(N'2022-04-09T14:51:11.5164322' AS DateTime2), N'菜單經常性重複', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1088, 1016, 1010, N'test ok or not', N'ok or not', 3, 1010, NULL, CAST(N'2022-04-09T14:50:59.1454335' AS DateTime2), CAST(N'2022-04-09T14:51:19.3193414' AS DateTime2), N'testing', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1089, 1016, 1010, N'test 2', N'test', 3, 1010, NULL, CAST(N'2022-04-09T14:52:09.2201596' AS DateTime2), CAST(N'2022-04-09T14:53:53.7176690' AS DateTime2), N'test', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1090, 1016, 1022, N'補助油費', N'建議公司考慮補助給員工油費', 7, 1022, NULL, CAST(N'2022-04-09T15:17:38.2840846' AS DateTime2), CAST(N'2022-04-14T09:04:44.0731636' AS DateTime2), N'因汽油價格上漲，', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1091, 3, 1010, N'功能改善測試', N'數據分析不單是電商的必備能力，還有機會為傳統藥廠加值、帶來訂單。
針對精準族群的行銷，如何用數據優化EDM，大幅提高開信率。
帶領團隊改變行為，初期一定要有小勝，同仁才有感。數據分析不單是電商的必備能力，還有機會數據分析不單是電商的必備能力，還有機會為傳統藥廠加值、帶來訂單。
針對精準族群的行銷，如何用數據優化EDM，大幅提高開信率。
帶領團隊改變行為，初期一定要有小勝，同仁才有感。', 8, 1010, NULL, CAST(N'2022-04-19T07:56:31.1799314' AS DateTime2), CAST(N'2022-04-19T08:11:37.6625173' AS DateTime2), N'test', 1, 1, 1)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1092, 3, 1010, N'Hi John', N'2', 5, 1010, NULL, CAST(N'2022-04-19T13:51:55.2086683' AS DateTime2), CAST(N'2022-04-19T13:56:49.6524440' AS DateTime2), N'1', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1093, 3, 1010, N'test A', N'BBBDCD', 8, 1010, NULL, CAST(N'2022-04-22T13:44:12.0953134' AS DateTime2), CAST(N'2022-04-22T13:46:53.0510452' AS DateTime2), N'AAA', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1094, 3, 1010, N'增加派車AEON週數', N'希望從只有一週去AEON，改成一和三週都有派車AEON', 8, 1010, NULL, CAST(N'2022-04-23T11:30:13.0337920' AS DateTime2), CAST(N'2022-04-23T11:47:54.2126344' AS DateTime2), N'目前只有第一週有派車AEON
但民生用品有去AEON採買的需求，故希望增加週數', 1, 0, 0)
INSERT [dbo].[Idea] ([Id], [ReceiveID], [SendID], [Title], [Suggession], [Status], [CreatedBy], [ModifiedBy], [CreatedTime], [ModifiedTime], [Issue], [Isshow], [IsAnnouncement], [IsShowApproveTab]) VALUES (1095, 1016, 1014, N'餐廳伙食', N'隨然先前有成立伙食委員會
但是根本沒有成效
因為廚師根本不接受別的意見
建議懂吃的人來開菜單
或是
另外發伙食費
TKS', 1, 1014, NULL, CAST(N'2022-05-09T11:25:37.9764119' AS DateTime2), NULL, N'七天中有四天午餐都是炸的
董事長要我們健康生活
但公司伙食反其道而行
請問 董事長知道我們伙食這麼可怕嗎??????
開重訓班有什麼用??
還有菜單都沒有任何變化
很膩   
好吃的菜都沒有了比如說涼拌牛肉 小蔥豆腐 鐵板豆腐等
很難吃的菜都一直出現
 ', 1, 0, 0)
SET IDENTITY_INSERT [dbo].[Idea] OFF
SET IDENTITY_INSERT [dbo].[IdeaHistory] ON 

INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1255, 1049, 1010, 1, CAST(N'2022-03-15T14:06:49.1045507' AS DateTime2), NULL, 1, N'Issue: 洗衣機太吵，目前沒有隔音設備
Suggestion: 希望追加隔音設備，或規定假日洗衣時間在早上9點30分後', N'問題: 洗衣機太吵，目前沒有隔音設備
建議: 希望追加隔音設備，或規定假日洗衣時間在早上9點30分後')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1256, 1049, 3, 5, CAST(N'2022-03-15T14:08:55.6686301' AS DateTime2), NULL, 1, N'收到，會再了解', N'收到，會再了解')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1257, 1049, 3, 5, CAST(N'2022-03-15T14:09:34.5149288' AS DateTime2), NULL, 1, N'現在已貼公告，待4月會加裝隔音棉', N'現在已貼公告，待4月會加裝隔音棉')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1258, 1049, 3, 3, CAST(N'2022-03-15T14:10:08.3398785' AS DateTime2), NULL, 1, N'已安裝完成', N'已安裝完成')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1259, 1049, 1010, 6, CAST(N'2022-03-15T14:11:32.4515854' AS DateTime2), NULL, 1, N'不太滿意，隔音設備不佳，需要再多加一些隔音設備', N'不太滿意，隔音設備不佳，需要再多加一些隔音設備')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1260, 1049, 6, 5, CAST(N'2022-03-15T14:12:44.3884751' AS DateTime2), NULL, 1, N'To John: 繼續加裝隔音設備', N'To John: 繼續加裝隔音設備')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1261, 1049, 3, 3, CAST(N'2022-03-15T14:13:00.7090224' AS DateTime2), NULL, 1, N'OK', N'OK')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1262, 1049, 1010, 7, CAST(N'2022-03-15T14:13:24.8770547' AS DateTime2), NULL, 1, N'OK, 謝謝', N'OK, 謝謝')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1263, 1050, 1008, 1, CAST(N'2022-03-16T10:29:01.2175730' AS DateTime2), NULL, 1, N'Issue: ABCDEFG
Suggestion: 345678910', N'問題: ABCDEFG
建議: 345678910')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1264, 1050, 1016, 2, CAST(N'2022-03-16T10:29:28.5313115' AS DateTime2), NULL, 1, N'NONONO', N'NONONO')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1265, 1051, 1015, 1, CAST(N'2022-03-16T12:00:31.2642077' AS DateTime2), NULL, 1, N'Issue: Villa 區有廚房, 但部分舊的樓層未有儲物櫃
Suggestion: 希望新增, 避免物品散落地面存放', N'問題: Villa 區有廚房, 但部分舊的樓層未有儲物櫃
建議: 希望新增, 避免物品散落地面存放')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1266, 1052, 1010, 1, CAST(N'2022-03-16T14:00:36.7275327' AS DateTime2), NULL, 1, N'Issue: 有點吵
Suggestion: 可以加裝墊子', N'問題: 有點吵
建議: 可以加裝墊子')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1267, 1052, 3, 5, CAST(N'2022-03-16T14:01:24.7948763' AS DateTime2), NULL, 1, N'好的，收到，會再了解', N'好的，收到，會再了解')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1268, 1052, 3, 3, CAST(N'2022-03-16T14:01:50.6730270' AS DateTime2), NULL, 1, N'已加裝，結案', N'已加裝，結案')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1269, 1052, 1010, 6, CAST(N'2022-03-16T14:02:16.2144820' AS DateTime2), NULL, 1, N'不滿意', N'不滿意')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1270, 1052, 6, 5, CAST(N'2022-03-16T14:02:42.9451369' AS DateTime2), NULL, 1, N'To John: 請再了解', N'To John: 請再了解')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1271, 1052, 3, 3, CAST(N'2022-03-16T14:02:54.3373224' AS DateTime2), NULL, 1, N'OK', N'OK')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1272, 1052, 1010, 7, CAST(N'2022-03-16T14:03:10.1915986' AS DateTime2), NULL, 1, N'OK', N'OK')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1273, 1053, 1024, 1, CAST(N'2022-03-16T14:06:59.2886817' AS DateTime2), NULL, 1, N'Issue: 公文簽呈人工送簽跑各站點耗時
簽核進度模糊
庶務耗材使用量(紙張、印表機、碳粉)
病毒透過公文紙張傳播
Suggestion: 公文簽呈無紙化，系統簽核申請者可查詢簽核進度
完整分類建置表單模板、歷史資料庫
減少紙張使用
減少病毒透過公文簽呈傳播
簽核站點清楚可詢
', N'問題: 公文簽呈人工送簽跑各站點耗時
簽核進度模糊
庶務耗材使用量(紙張、印表機、碳粉)
病毒透過公文紙張傳播
建議: 公文簽呈無紙化，系統簽核申請者可查詢簽核進度
完整分類建置表單模板、歷史資料庫
減少紙張使用
減少病毒透過公文簽呈傳播
簽核站點清楚可詢
')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1274, 1054, 1010, 1, CAST(N'2022-03-16T14:35:36.0594405' AS DateTime2), NULL, 1, N'Issue: 1
Suggestion: 23445', N'問題: 1
建議: 23445')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1275, 1054, 1016, 5, CAST(N'2022-03-16T14:35:57.3623552' AS DateTime2), NULL, 1, N'445566', N'445566')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1276, 1054, 1016, 5, CAST(N'2022-03-16T14:36:28.7969232' AS DateTime2), NULL, 1, N'9098', N'9098')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1277, 1054, 1016, 3, CAST(N'2022-03-16T14:37:17.1434172' AS DateTime2), NULL, 1, N'OK', N'OK')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1278, 1054, 1010, 6, CAST(N'2022-03-16T14:37:36.6187496' AS DateTime2), NULL, 1, N'NO', N'NO')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1279, 1054, 6, 5, CAST(N'2022-03-16T14:38:03.5796171' AS DateTime2), NULL, 1, N'111', N'111')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1280, 1054, 1016, 3, CAST(N'2022-03-16T14:38:23.2533116' AS DateTime2), NULL, 1, N'45', N'45')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1281, 1054, 1010, 7, CAST(N'2022-03-16T14:42:23.3901920' AS DateTime2), NULL, 1, N'123', N'123')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1282, 1054, 6, 9, CAST(N'2022-03-16T14:46:14.2181679' AS DateTime2), NULL, 1, N'OK', N'OK')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1283, 1052, 6, 9, CAST(N'2022-03-16T14:47:12.7902469' AS DateTime2), NULL, 1, N'NO', N'NO')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1284, 1055, 1024, 1, CAST(N'2022-03-17T09:39:53.0041549' AS DateTime2), NULL, 1, N'Issue: 翻身很難，有快掉下床的感覺
約3-6個月床就凹陷了

Suggestion: 床墊定期汰舊換新，加寬床墊', N'問題: 翻身很難，有快掉下床的感覺
約3-6個月床就凹陷了

建議: 床墊定期汰舊換新，加寬床墊')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1285, 1056, 1024, 1, CAST(N'2022-03-17T09:50:37.2157538' AS DateTime2), NULL, 1, N'Issue: 外籍打卡機正下方為越籍新人打卡機，上下班跟越籍新人擠在一起打卡，動線不佳
Suggestion: 重新規劃打卡機安排，外籍、越籍打卡機錯開一點距離', N'問題: 外籍打卡機正下方為越籍新人打卡機，上下班跟越籍新人擠在一起打卡，動線不佳
建議: 重新規劃打卡機安排，外籍、越籍打卡機錯開一點距離')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1286, 1057, 1023, 1, CAST(N'2022-03-17T14:31:23.1557249' AS DateTime2), NULL, 1, N'Issue: VILLA大門按指紋的地方都是常態性的積水。
Suggestion: 趁還沒雨季趕緊弄一弄吧。', N'問題: VILLA大門按指紋的地方都是常態性的積水。
建議: 趁還沒雨季趕緊弄一弄吧。')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1287, 1058, 1010, 1, CAST(N'2022-03-18T14:14:36.2594392' AS DateTime2), NULL, 1, N'Issue: 在用餐時間時會關閉部分照明，造成用餐人員的不便
Suggestion: 如仍在用餐時間內，燈光應維持照明', N'問題: 在用餐時間時會關閉部分照明，造成用餐人員的不便
建議: 如仍在用餐時間內，燈光應維持照明')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1288, 1058, 3, 5, CAST(N'2022-03-18T14:15:50.4886517' AS DateTime2), NULL, 1, N'了解，會去與餐廳了解', N'了解，會去與餐廳了解')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1289, 1058, 3, 3, CAST(N'2022-03-18T14:16:46.5251706' AS DateTime2), NULL, 1, N'已告知人員，之後不會再隨意關閉電源', N'已告知人員，之後不會再隨意關閉電源')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1290, 1058, 1010, 6, CAST(N'2022-03-18T14:17:21.6608273' AS DateTime2), NULL, 1, N'不滿意', N'不滿意')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1291, 1058, 6, 5, CAST(N'2022-03-18T14:17:49.6101442' AS DateTime2), NULL, 1, N'To John: 請了解', N'To John: 請了解')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1292, 1058, 3, 3, CAST(N'2022-03-18T14:18:08.7496186' AS DateTime2), NULL, 1, N'OK', N'OK')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1293, 1058, 1010, 7, CAST(N'2022-03-18T14:18:22.9948292' AS DateTime2), NULL, 1, N'OK', N'OK')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1294, 1059, 1010, 1, CAST(N'2022-03-18T14:30:00.1356154' AS DateTime2), NULL, 1, N'Issue: 12344
Suggestion: 56778', N'問題: 12344
建議: 56778')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1295, 1059, 3, 5, CAST(N'2022-03-18T14:30:34.2222984' AS DateTime2), NULL, 1, N'OK', N'OK')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1296, 1059, 3, 5, CAST(N'2022-03-18T14:30:53.3864899' AS DateTime2), NULL, 1, N'1', N'1')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1297, 1059, 3, 3, CAST(N'2022-03-18T14:31:05.7540838' AS DateTime2), NULL, 1, N'2', N'2')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1298, 1059, 1010, 6, CAST(N'2022-03-18T14:31:31.0510284' AS DateTime2), NULL, 1, N'NO', N'NO')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1299, 1059, 6, 5, CAST(N'2022-03-18T14:31:57.4198572' AS DateTime2), NULL, 1, N'To John: 請了解', N'To John: 請了解')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1300, 1059, 3, 3, CAST(N'2022-03-18T14:32:11.9871277' AS DateTime2), NULL, 1, N'OK', N'OK')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1301, 1059, 1010, 7, CAST(N'2022-03-18T14:32:24.7470648' AS DateTime2), NULL, 1, N'OK', N'OK')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1302, 1055, 3, 5, CAST(N'2022-03-19T09:06:57.6940401' AS DateTime2), NULL, 1, N'【以下僅做為系統測試try用途，非正式回復】
1. 目前宿舍的單人床，因過去沿革的安排，尺寸分別為
H棟 0.9*1.8m 
Villa 1.2*2m
可應逐步做整合，朝VIlla Size逐步汰換

2. 床墊問題，朝向編列預算，購買品質較高的床墊為原則如"天然橡膠"；針對舊款有凹陷狀況，逐步做汰換

汰換原則：因為睡久會凹陷，屆時由當事人與總務判斷後座汰換', N'【以下僅做為系統測試try用途，非正式回復】
1. 目前宿舍的單人床，因過去沿革的安排，尺寸分別為
H棟 0.9*1.8m 
Villa 1.2*2m
可應逐步做整合，朝VIlla Size逐步汰換

2. 床墊問題，朝向編列預算，購買品質較高的床墊為原則如"天然橡膠"；針對舊款有凹陷狀況，逐步做汰換

汰換原則：因為睡久會凹陷，屆時由當事人與總務判斷後座汰換')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1303, 1056, 1016, 5, CAST(N'2022-03-19T10:06:21.0718822' AS DateTime2), NULL, 1, N'安排到現場確認，重新思考外籍打卡機地點', N'安排到現場確認，重新思考外籍打卡機地點')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1304, 1055, 3, 3, CAST(N'2022-03-19T10:07:48.0154127' AS DateTime2), NULL, 1, N'如處理上述', N'如處理上述')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1305, 1053, 3, 5, CAST(N'2022-03-19T10:51:35.3681867' AS DateTime2), NULL, 1, N'【以下僅為處理參考 非正式回復終版 】

SSB已經設計完畢 EIP的  簽呈無紙化流程並準備上線
Training deadline: 3月底前~4月上旬  (對部級主管、各單位助理)
SHC正式上線：4月中前', N'【以下僅為處理參考 非正式回復終版 】

SSB已經設計完畢 EIP的  簽呈無紙化流程並準備上線
Training deadline: 3月底前~4月上旬  (對部級主管、各單位助理)
SHC正式上線：4月中前')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1306, 1053, 3, 3, CAST(N'2022-03-19T10:51:43.6062757' AS DateTime2), NULL, 1, N'如上述', N'如上述')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1307, 1060, 1010, 1, CAST(N'2022-03-19T14:15:16.4351899' AS DateTime2), NULL, 1, N'Issue: 目前八點前和四點後冷氣會自動關閉，造成工作效率不彰
Suggestion: 八點前和四點後維持開冷氣', N'問題: 目前八點前和四點後冷氣會自動關閉，造成工作效率不彰
建議: 八點前和四點後維持開冷氣')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1308, 1060, 3, 5, CAST(N'2022-03-19T14:16:06.0197670' AS DateTime2), NULL, 1, N'接受', N'接受')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1309, 1060, 3, 5, CAST(N'2022-03-19T14:16:33.2930287' AS DateTime2), NULL, 1, N'八點前已設定好', N'八點前已設定好')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1310, 1060, 3, 3, CAST(N'2022-03-19T14:16:55.0148338' AS DateTime2), NULL, 1, N'四點也設定好', N'四點也設定好')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1311, 1060, 1010, 6, CAST(N'2022-03-19T14:17:26.5719547' AS DateTime2), NULL, 1, N'NO', N'NO')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1312, 1060, 6, 5, CAST(N'2022-03-19T14:17:50.5264843' AS DateTime2), NULL, 1, N'To John: 請了解', N'To John: 請了解')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1313, 1060, 3, 3, CAST(N'2022-03-19T14:18:39.6993215' AS DateTime2), NULL, 1, N'OK', N'OK')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1314, 1060, 1010, 7, CAST(N'2022-03-19T14:18:53.8097733' AS DateTime2), NULL, 1, N'OK', N'OK')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1315, 1056, 1016, 3, CAST(N'2022-03-22T12:16:45.6782042' AS DateTime2), NULL, 1, N'預計另外安裝再A棟裡面，做打卡分流 (測試系統)', N'預計另外安裝再A棟裡面，做打卡分流 (測試系統)')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1316, 1061, 1017, 1, CAST(N'2022-03-22T15:08:31.9532955' AS DateTime2), NULL, 1, N'Issue: 業務辦公室冷氣效率低落，即使全開之後還是與沒開差不多
Suggestion: 建議重新檢查或者重灌冷媒，否則不僅冷房效率差，也浪費電', N'問題: 業務辦公室冷氣效率低落，即使全開之後還是與沒開差不多
建議: 建議重新檢查或者重灌冷媒，否則不僅冷房效率差，也浪費電')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1317, 1062, 1010, 1, CAST(N'2022-03-25T12:01:39.4440551' AS DateTime2), NULL, 1, N'Issue: 秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享
Suggestion: 秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享v', N'問題: 秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享
建議: 秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享秘訣：學習、實作、分享v')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1318, 1063, 1015, 1, CAST(N'2022-03-25T13:10:05.4017486' AS DateTime2), NULL, 1, N'Issue: 現有員工識別證是紙質的, 容易遇水濕掉。疫情影響下公司又有製作門禁磁卡。
Suggestion: 建議可以整合識別證與門禁磁卡, 將二卡合一為一張塑料磁卡。', N'問題: 現有員工識別證是紙質的, 容易遇水濕掉。疫情影響下公司又有製作門禁磁卡。
建議: 建議可以整合識別證與門禁磁卡, 將二卡合一為一張塑料磁卡。')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1319, 1064, 1015, 1, CAST(N'2022-03-25T13:15:41.5396431' AS DateTime2), NULL, 1, N'Issue: Villa區的AB或E型房型的2樓為2間房間, 但只有一台冰箱。但H棟3間房間有2台冰箱, 而Villa區有廚房, 許多女性同仁會在下班後烹煮。
Suggestion: 建議可以調查新增一台冰箱, 供食材的保鮮。', N'問題: Villa區的AB或E型房型的2樓為2間房間, 但只有一台冰箱。但H棟3間房間有2台冰箱, 而Villa區有廚房, 許多女性同仁會在下班後烹煮。
建議: 建議可以調查新增一台冰箱, 供食材的保鮮。')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1320, 1065, 1015, 1, CAST(N'2022-03-25T13:27:08.7101321' AS DateTime2), NULL, 1, N'Issue: 廁所沒有任何可以放置衣物的架子, 洗澡時無法放置欲更換的衣物。
Suggestion: 建議毛巾架上可以新增一放置衣物的不銹鋼層架放置乾淨衣物。', N'問題: 廁所沒有任何可以放置衣物的架子, 洗澡時無法放置欲更換的衣物。
建議: 建議毛巾架上可以新增一放置衣物的不銹鋼層架放置乾淨衣物。')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1321, 1066, 1014, 1, CAST(N'2022-03-25T14:06:39.2834219' AS DateTime2), NULL, 1, N'Issue: 晚餐提供的牛肉麵比先前午餐提供的牛肉麵辣度高很多
Suggestion: 不知道  有可能是煮得比較久的關西嗎
湯越煮會越辣', N'問題: 晚餐提供的牛肉麵比先前午餐提供的牛肉麵辣度高很多
建議: 不知道  有可能是煮得比較久的關西嗎
湯越煮會越辣')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1322, 1067, 1013, 1, CAST(N'2022-03-25T14:34:52.3883912' AS DateTime2), NULL, 1, N'Issue: 目前每年一次的年度體檢是辦工作證所需的體檢，感覺較簡單且檢查不是很嚴謹。
Suggestion: 能否像台灣總公司安排的那種健康檢查那樣，可以增加多檢查一些項目，超出規定項目的部份可以自費？請評估一下，謝謝。', N'問題: 目前每年一次的年度體檢是辦工作證所需的體檢，感覺較簡單且檢查不是很嚴謹。
建議: 能否像台灣總公司安排的那種健康檢查那樣，可以增加多檢查一些項目，超出規定項目的部份可以自費？請評估一下，謝謝。')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1323, 1068, 1020, 1, CAST(N'2022-03-25T14:58:26.2993307' AS DateTime2), NULL, 1, N'Issue:       为配合生产需求，生管要求M/L/K/J/I栋生产线加班到20.00点，由于加班用餐+到餐厅来回时间只有30分钟根本不够（如遇下雨天更加困难），造成50%-80%的员工不到餐厅用餐，既浪费了餐费又拖垮了员工身体。
Suggestion:    希望后段车间加班用餐可以改至K/J栋旁边餐厅（既中午素食餐厅位置）', N'問題:       为配合生产需求，生管要求M/L/K/J/I栋生产线加班到20.00点，由于加班用餐+到餐厅来回时间只有30分钟根本不够（如遇下雨天更加困难），造成50%-80%的员工不到餐厅用餐，既浪费了餐费又拖垮了员工身体。
建議:    希望后段车间加班用餐可以改至K/J栋旁边餐厅（既中午素食餐厅位置）')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1324, 1069, 1014, 1, CAST(N'2022-03-25T16:14:23.5322935' AS DateTime2), NULL, 1, N'Issue: 宿舍木頭椅子不符合人體工學
Suggestion: 宿舍椅子建議更換可調整高度與有輪子的椅子
每個人的身高不一樣 以及木頭的椅子移動容易吵到別人', N'問題: 宿舍木頭椅子不符合人體工學
建議: 宿舍椅子建議更換可調整高度與有輪子的椅子
每個人的身高不一樣 以及木頭的椅子移動容易吵到別人')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1325, 1070, 1017, 1, CAST(N'2022-03-26T11:20:18.6883795' AS DateTime2), NULL, 1, N'Issue: 辦公室冷氣僅於早上八點到下午四點開放，造成工作環境燥熱，人人心浮氣躁，歸心似箭，沒人想留下來加班
Suggestion: 將冷氣開放時間延長，七點半到六點，讓各部門自行依照加班情況開關冷氣，而非統一於四點切斷電源', N'問題: 辦公室冷氣僅於早上八點到下午四點開放，造成工作環境燥熱，人人心浮氣躁，歸心似箭，沒人想留下來加班
建議: 將冷氣開放時間延長，七點半到六點，讓各部門自行依照加班情況開關冷氣，而非統一於四點切斷電源')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1326, 1071, 1012, 1, CAST(N'2022-03-26T11:23:59.0835375' AS DateTime2), NULL, 1, N'Issue: 1.葉菜類青菜切段，此案例發生青江菜，空心菜，小白菜......
2. 3/22中餐主食過鹹

Suggestion: 如果肉類都會切小丁，照理說葉菜類也要切斷才會好入味跟入口，圖檔3/22 中餐青江菜為例
3/22中餐的主食(照片肉類)辣的口味過鹹', N'問題: 1.葉菜類青菜切段，此案例發生青江菜，空心菜，小白菜......
2. 3/22中餐主食過鹹

建議: 如果肉類都會切小丁，照理說葉菜類也要切斷才會好入味跟入口，圖檔3/22 中餐青江菜為例
3/22中餐的主食(照片肉類)辣的口味過鹹')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1327, 1072, 1021, 1, CAST(N'2022-03-26T11:35:49.4122431' AS DateTime2), NULL, 1, N'Issue: test
Suggestion: test', N'問題: test
建議: test')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1328, 1073, 7, 1, CAST(N'2022-03-26T11:59:07.5415581' AS DateTime2), NULL, 1, N'Issue: 現在蝦肉出現頻頻率大概兩到三周一次
Suggestion: 因逢疫情，建議可以每周提供一次，讓大家吃好維持健康狀態', N'問題: 現在蝦肉出現頻頻率大概兩到三周一次
建議: 因逢疫情，建議可以每周提供一次，讓大家吃好維持健康狀態')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1329, 1074, 1019, 1, CAST(N'2022-03-28T16:19:54.6417438' AS DateTime2), NULL, 1, N'Issue: 中午第一批吃飯時餐廳似乎往往都沒準備好，第一批原本就沒有多少人，應該有足夠時間可以準備而不是時間到了卻還往往捕菜
Suggestion: 第一批吃飯應該是有足夠的時間準備', N'問題: 中午第一批吃飯時餐廳似乎往往都沒準備好，第一批原本就沒有多少人，應該有足夠時間可以準備而不是時間到了卻還往往捕菜
建議: 第一批吃飯應該是有足夠的時間準備')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1330, 1075, 1010, 1, CAST(N'2022-03-28T17:10:58.4166685' AS DateTime2), NULL, 1, N'Issue: 廁所不夠，時常要排隊，影響工作效率
Suggestion: 希望加蓋廁所', N'問題: 廁所不夠，時常要排隊，影響工作效率
建議: 希望加蓋廁所')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1331, 1075, 3, 5, CAST(N'2022-03-28T17:11:21.3026376' AS DateTime2), NULL, 1, N'測試，OK', N'測試，OK')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1332, 1075, 3, 3, CAST(N'2022-03-28T17:11:32.9960323' AS DateTime2), NULL, 1, N'測試，OK 1', N'測試，OK 1')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1333, 1075, 1010, 7, CAST(N'2022-03-28T17:13:09.0849838' AS DateTime2), NULL, 1, N'滿意: 會到完成分頁', N'滿意: 會到完成分頁')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1334, 1067, 1016, 5, CAST(N'2022-03-29T12:03:10.5726105' AS DateTime2), NULL, 1, N'與總公司討論後暫不實施，ADM會與醫院討論方案，供需求人員自費體檢', N'與總公司討論後暫不實施，ADM會與醫院討論方案，供需求人員自費體檢')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1335, 1072, 1016, 5, CAST(N'2022-03-29T12:04:27.3316808' AS DateTime2), NULL, 1, N'test', N'test')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1336, 1065, 1016, 5, CAST(N'2022-03-29T12:05:12.9532376' AS DateTime2), NULL, 1, N'經評估後會安裝毛巾架供放置衣服', N'經評估後會安裝毛巾架供放置衣服')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1337, 1074, 3, 5, CAST(N'2022-03-29T17:05:36.5992423' AS DateTime2), NULL, 1, N'【以下答案僅為測試系統用，非正式回復】
過往11:20開始準備擺盤，提前10分鐘，11:10要開始擺盤', N'【以下答案僅為測試系統用，非正式回復】
過往11:20開始準備擺盤，提前10分鐘，11:10要開始擺盤')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1338, 1074, 3, 3, CAST(N'2022-03-29T17:05:44.5245324' AS DateTime2), NULL, 1, N'同上', N'同上')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1339, 1072, 3, 3, CAST(N'2022-03-29T17:05:51.0105865' AS DateTime2), NULL, 1, N'test', N'test')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1340, 1067, 3, 3, CAST(N'2022-03-29T17:06:20.0158838' AS DateTime2), NULL, 1, N'同上 已向SSB ADM建議，審慎評估後如上', N'同上 已向SSB ADM建議，審慎評估後如上')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1341, 1065, 3, 3, CAST(N'2022-03-29T17:06:30.8924272' AS DateTime2), NULL, 1, N'同上', N'同上')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1342, 1073, 3, 5, CAST(N'2022-03-29T17:07:20.5260526' AS DateTime2), NULL, 1, N'【以下答案僅為測試系統用，非正式回復】
有多數同仁反映椒鹽蝦好吃，將了解後決定', N'【以下答案僅為測試系統用，非正式回復】
有多數同仁反映椒鹽蝦好吃，將了解後決定')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1343, 1073, 3, 3, CAST(N'2022-03-29T17:07:26.0197224' AS DateTime2), NULL, 1, N'同上', N'同上')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1344, 1076, 1018, 1, CAST(N'2022-03-30T07:51:24.7975701' AS DateTime2), NULL, 1, N'Issue: 412房時常在平日或週日早晨約莫6點，開始聽樓上住戶廁所的流水聲。
時常長達5-10分鐘持續不停的流水聲，推測並非馬桶而是洗手台。
以上情形一週約發生3-4次
Suggestion: 改善隔音或和住宿同仁宣導', N'問題: 412房時常在平日或週日早晨約莫6點，開始聽樓上住戶廁所的流水聲。
時常長達5-10分鐘持續不停的流水聲，推測並非馬桶而是洗手台。
以上情形一週約發生3-4次
建議: 改善隔音或和住宿同仁宣導')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1345, 1068, 1016, 5, CAST(N'2022-03-30T15:48:44.4523365' AS DateTime2), NULL, 1, N'改至K/J栋旁边餐厅', N'改至K/J栋旁边餐厅')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1346, 1057, 1016, 5, CAST(N'2022-03-30T15:49:21.1926280' AS DateTime2), NULL, 1, N'請總務安排施工或外包', N'請總務安排施工或外包')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1347, 1064, 1016, 5, CAST(N'2022-03-30T15:53:24.2573096' AS DateTime2), NULL, 1, N'建議增加一台冰箱', N'建議增加一台冰箱')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1348, 1076, 1016, 5, CAST(N'2022-03-30T15:54:31.0846932' AS DateTime2), NULL, 1, N'請總務單位確認並維修', N'請總務單位確認並維修')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1349, 1063, 1016, 5, CAST(N'2022-03-30T15:57:01.8903766' AS DateTime2), NULL, 1, N'經評估無法直接將是識別證印製在磁卡上，為避免遇水濕掉，可做護貝', N'經評估無法直接將是識別證印製在磁卡上，為避免遇水濕掉，可做護貝')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1350, 1062, 3, 2, CAST(N'2022-03-30T17:49:04.6495391' AS DateTime2), NULL, 1, N'No', N'No')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1351, 1077, 1010, 1, CAST(N'2022-03-30T17:59:12.6956787' AS DateTime2), NULL, 1, N'Issue: 水質不佳，請改善
Suggestion: 飲水機、洗手槽和浴室加裝濾水器', N'問題: 水質不佳，請改善
建議: 飲水機、洗手槽和浴室加裝濾水器')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1352, 1077, 3, 5, CAST(N'2022-03-30T17:59:35.3330977' AS DateTime2), NULL, 1, N'OK, 收到', N'OK, 收到')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1353, 1077, 3, 3, CAST(N'2022-03-30T17:59:59.8013232' AS DateTime2), NULL, 1, N'目前無經費，請自購濾水器', N'目前無經費，請自購濾水器')
GO
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1354, 1077, 1010, 6, CAST(N'2022-03-30T18:00:38.7744436' AS DateTime2), NULL, 1, N'不滿意', N'不滿意')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1355, 1077, 6, 5, CAST(N'2022-03-30T18:01:09.1597466' AS DateTime2), NULL, 1, N'To John: 請了解', N'To John: 請了解')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1356, 1077, 3, 3, CAST(N'2022-03-30T18:01:32.8935558' AS DateTime2), NULL, 1, N'會與GA討論', N'會與GA討論')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1357, 1077, 1010, 7, CAST(N'2022-03-30T18:01:55.3650796' AS DateTime2), NULL, 1, N'滿意', N'滿意')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1358, 1078, 1010, 1, CAST(N'2022-03-30T18:09:47.5251022' AS DateTime2), NULL, 1, N'Issue: 掱11111111111111
Suggestion: TTTTTTTTTTTTTTTTTTT@@@@@@@@@', N'問題: 掱11111111111111
建議: TTTTTTTTTTTTTTTTTTT@@@@@@@@@')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1359, 1078, 1016, 5, CAST(N'2022-03-30T18:10:07.4717238' AS DateTime2), NULL, 1, N'測試TEST', N'測試TEST')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1360, 1078, 1016, 5, CAST(N'2022-03-30T18:10:19.7506652' AS DateTime2), NULL, 1, N'NONO', N'NONO')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1361, 1078, 1016, 4, CAST(N'2022-03-30T18:10:27.7081273' AS DateTime2), NULL, 1, N'YES', N'YES')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1362, 1078, 1010, 6, CAST(N'2022-03-30T18:10:41.3111214' AS DateTime2), NULL, 1, N'22222', N'22222')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1363, 1078, 6, 5, CAST(N'2022-03-30T18:10:58.3828260' AS DateTime2), NULL, 1, N'iii', N'iii')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1364, 1078, 1016, 3, CAST(N'2022-03-30T18:11:15.7716305' AS DateTime2), NULL, 1, N'OKTEST', N'OKTEST')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1365, 1078, 1010, 7, CAST(N'2022-03-30T18:11:32.9511595' AS DateTime2), NULL, 1, N'99999', N'99999')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1366, 1056, 1024, 7, CAST(N'2022-03-31T08:49:12.6287809' AS DateTime2), NULL, 1, N'OK', N'OK')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1367, 1055, 1024, 7, CAST(N'2022-03-31T08:49:19.1730081' AS DateTime2), NULL, 1, N'OK', N'OK')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1368, 1053, 1024, 7, CAST(N'2022-03-31T08:49:24.3803402' AS DateTime2), NULL, 1, N'OK', N'OK')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1369, 1079, 1010, 1, CAST(N'2022-03-31T12:28:40.9209007' AS DateTime2), NULL, 1, N'Issue: test test test 
Suggestion: file size', N'問題: test test test 
建議: file size')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1370, 1080, 1010, 1, CAST(N'2022-03-31T12:28:41.5225489' AS DateTime2), NULL, 1, N'Issue: test test test 
Suggestion: file size', N'問題: test test test 
建議: file size')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1371, 1081, 1010, 1, CAST(N'2022-03-31T12:28:42.2602864' AS DateTime2), NULL, 1, N'Issue: test test test 
Suggestion: file size', N'問題: test test test 
建議: file size')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1372, 1082, 1010, 1, CAST(N'2022-03-31T12:28:42.5882391' AS DateTime2), NULL, 1, N'Issue: test test test 
Suggestion: file size', N'問題: test test test 
建議: file size')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1373, 1083, 1010, 1, CAST(N'2022-03-31T12:28:43.1286930' AS DateTime2), NULL, 1, N'Issue: test test test 
Suggestion: file size', N'問題: test test test 
建議: file size')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1374, 1084, 1010, 1, CAST(N'2022-03-31T12:28:43.1738855' AS DateTime2), NULL, 1, N'Issue: test test test 
Suggestion: file size', N'問題: test test test 
建議: file size')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1375, 1085, 1010, 1, CAST(N'2022-03-31T15:48:39.2001108' AS DateTime2), NULL, 1, N'Issue: 1
Suggestion: 1', N'問題: 1
建議: 1')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1376, 1085, 1016, 5, CAST(N'2022-03-31T15:48:49.9569159' AS DateTime2), NULL, 1, N'no', N'no')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1377, 1085, 1016, 3, CAST(N'2022-03-31T15:48:55.0904075' AS DateTime2), NULL, 1, N'OK', N'OK')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1378, 1085, 1010, 6, CAST(N'2022-03-31T15:49:08.9895843' AS DateTime2), NULL, 1, N'test', N'test')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1379, 1085, 6, 5, CAST(N'2022-03-31T15:49:16.5741968' AS DateTime2), NULL, 1, N'test', N'test')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1380, 1085, 1016, 3, CAST(N'2022-03-31T15:49:39.8691179' AS DateTime2), NULL, 1, N'OK', N'OK')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1382, 1076, 1016, 3, CAST(N'2022-04-06T09:21:29.3595807' AS DateTime2), NULL, 1, N'ok', N'ok')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1383, 1068, 1016, 3, CAST(N'2022-04-06T09:21:42.9302578' AS DateTime2), NULL, 1, N'已執行', N'已執行')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1384, 1064, 1016, 3, CAST(N'2022-04-06T09:21:58.6738102' AS DateTime2), NULL, 1, N'ok', N'ok')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1385, 1063, 1016, 3, CAST(N'2022-04-06T09:22:08.4497118' AS DateTime2), NULL, 1, N'ok', N'ok')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1386, 1057, 1016, 3, CAST(N'2022-04-06T09:22:17.9512908' AS DateTime2), NULL, 1, N'ok', N'ok')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1387, 1065, 1015, 7, CAST(N'2022-04-06T10:30:39.7556429' AS DateTime2), NULL, 1, N'請問有due date嗎?  ', N'請問有due date嗎?  ')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1388, 1064, 1015, 7, CAST(N'2022-04-06T10:30:53.7833319' AS DateTime2), NULL, 1, N'請問有due date嗎?', N'請問有due date嗎?')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1389, 1063, 1015, 6, CAST(N'2022-04-06T10:33:00.8444784' AS DateTime2), NULL, 1, N'是否應該思考可以有多工的識別證? 以前前東家的就是識別證與門禁卡合一, 相信有機會可以達到目的, 而非為了擔心紙質識別證濕掉再另外增加一個工序給製作的同仁。', N'是否應該思考可以有多工的識別證? 以前前東家的就是識別證與門禁卡合一, 相信有機會可以達到目的, 而非為了擔心紙質識別證濕掉再另外增加一個工序給製作的同仁。')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1390, 1072, 1021, 7, CAST(N'2022-04-06T11:09:16.4017717' AS DateTime2), NULL, 1, N'tks...', N'tks...')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1391, 1071, 1016, 5, CAST(N'2022-04-09T10:15:29.0965873' AS DateTime2), NULL, 1, N'會將問題反應給廚師，進行調整
後續持續觀察', N'會將問題反應給廚師，進行調整
後續持續觀察')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1392, 1071, 1016, 5, CAST(N'2022-04-09T10:15:38.6845246' AS DateTime2), NULL, 1, N'會將問題反應給廚師，進行調整
後續持續觀察', N'會將問題反應給廚師，進行調整
後續持續觀察')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1393, 1068, 1020, 7, CAST(N'2022-04-09T10:37:20.8626774' AS DateTime2), NULL, 1, N'J/I栋加班用餐已经做处理，但L/M栋还未得到解决。', N'J/I栋加班用餐已经做处理，但L/M栋还未得到解决。')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1394, 1070, 1016, 5, CAST(N'2022-04-09T14:00:48.3390185' AS DateTime2), NULL, 1, N'因應節能減碳，同時配合客人的目標，中央空調統一於4點關閉
若同仁有相關需求，可以申請安裝風扇', N'因應節能減碳，同時配合客人的目標，中央空調統一於4點關閉
若同仁有相關需求，可以申請安裝風扇')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1395, 1069, 1016, 5, CAST(N'2022-04-09T14:01:50.5616838' AS DateTime2), NULL, 1, N'因目前椅子未壞，不能做報廢，可作為後續椅子採購的建議', N'因目前椅子未壞，不能做報廢，可作為後續椅子採購的建議')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1396, 1066, 1016, 5, CAST(N'2022-04-09T14:02:54.2584728' AS DateTime2), NULL, 1, N'會請廚師做調整~ ', N'會請廚師做調整~ ')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1397, 1061, 1016, 5, CAST(N'2022-04-09T14:09:37.1441337' AS DateTime2), NULL, 1, N'請總務協助檢修', N'請總務協助檢修')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1398, 1087, 1024, 1, CAST(N'2022-04-09T14:17:16.5184036' AS DateTime2), NULL, 1, N'Issue: 菜單經常性重複
Suggestion: 菜單多變化', N'問題: 菜單經常性重複
建議: 菜單多變化')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1399, 1051, 1016, 5, CAST(N'2022-04-09T14:20:49.5499966' AS DateTime2), NULL, 1, N'重新調查，設定標準', N'重新調查，設定標準')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1400, 1087, 1016, 5, CAST(N'2022-04-09T14:50:54.4908633' AS DateTime2), NULL, 1, N'測試已結束', N'測試已結束')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1401, 1088, 1010, 1, CAST(N'2022-04-09T14:50:59.1470528' AS DateTime2), NULL, 1, N'Issue: testing
Suggestion: ok or not', N'問題: testing
建議: ok or not')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1402, 1087, 1016, 3, CAST(N'2022-04-09T14:51:11.5133536' AS DateTime2), NULL, 1, N'測試完成~', N'測試完成~')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1403, 1088, 1016, 5, CAST(N'2022-04-09T14:51:11.6214606' AS DateTime2), NULL, 1, N'test', N'test')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1404, 1088, 1016, 3, CAST(N'2022-04-09T14:51:19.3143908' AS DateTime2), NULL, 1, N'ok', N'ok')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1405, 1071, 1016, 3, CAST(N'2022-04-09T14:51:31.9671667' AS DateTime2), NULL, 1, N'廚師進行調整', N'廚師進行調整')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1406, 1070, 1016, 3, CAST(N'2022-04-09T14:52:00.9283166' AS DateTime2), NULL, 1, N'GA會實際查看，若有需求會增加冷氣送風機', N'GA會實際查看，若有需求會增加冷氣送風機')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1407, 1089, 1010, 1, CAST(N'2022-04-09T14:52:09.2238177' AS DateTime2), NULL, 1, N'Issue: test
Suggestion: test', N'問題: test
建議: test')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1408, 1066, 1016, 3, CAST(N'2022-04-09T14:52:10.8251595' AS DateTime2), NULL, 1, N'已調整', N'已調整')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1409, 1061, 1016, 3, CAST(N'2022-04-09T14:52:21.3121040' AS DateTime2), NULL, 1, N'ok', N'ok')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1410, 1089, 1016, 5, CAST(N'2022-04-09T14:53:00.9077159' AS DateTime2), NULL, 1, N'11', N'11')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1411, 1069, 1016, 3, CAST(N'2022-04-09T14:53:43.9171192' AS DateTime2), NULL, 1, N'建議後續子椅子採購重新調整', N'建議後續子椅子採購重新調整')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1412, 1089, 1016, 3, CAST(N'2022-04-09T14:53:53.7124712' AS DateTime2), NULL, 1, N'test', N'test')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1413, 1051, 1016, 3, CAST(N'2022-04-09T14:54:03.5842265' AS DateTime2), NULL, 1, N'呈核', N'呈核')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1414, 1090, 1022, 1, CAST(N'2022-04-09T15:17:38.2918593' AS DateTime2), NULL, 1, N'Issue: 因汽油價格上漲，
Suggestion: 建議公司考慮補助給員工油費', N'問題: 因汽油價格上漲，
建議: 建議公司考慮補助給員工油費')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1415, 1090, 1016, 5, CAST(N'2022-04-13T17:30:14.4793585' AS DateTime2), NULL, 1, N'收到', N'收到')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1416, 1090, 1016, 3, CAST(N'2022-04-13T17:35:10.9146845' AS DateTime2), NULL, 1, N'商請SEA針對員工油費補助進行評估', N'商請SEA針對員工油費補助進行評估')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1417, 1057, 1023, 6, CAST(N'2022-04-14T09:04:17.4225672' AS DateTime2), NULL, 1, N'毫無反應，就一樣是個下雨積水的狀態。', N'毫無反應，就一樣是個下雨積水的狀態。')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1418, 1090, 1022, 7, CAST(N'2022-04-14T09:04:44.0696609' AS DateTime2), NULL, 1, N'收到', N'收到')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1419, 1067, 1013, 7, CAST(N'2022-04-14T09:13:15.8994658' AS DateTime2), NULL, 1, N'拭目以待。', N'拭目以待。')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1420, 1074, 1019, 7, CAST(N'2022-04-14T17:36:18.8236466' AS DateTime2), NULL, 1, N'ok', N'ok')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1421, 1051, 1015, 6, CAST(N'2022-04-15T13:07:15.8517753' AS DateTime2), NULL, 1, N'可以說明呈核的意思嗎? 是否有預計完成日? ', N'可以說明呈核的意思嗎? 是否有預計完成日? ')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1422, 1076, 1018, 6, CAST(N'2022-04-15T13:49:55.8239917' AS DateTime2), NULL, 1, N'上週4/4至4/9六天上班日當中有五天仍然發生此問題。', N'上週4/4至4/9六天上班日當中有五天仍然發生此問題。')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1423, 1070, 1017, 7, CAST(N'2022-04-15T14:09:52.9700754' AS DateTime2), NULL, 1, N'謝謝，已有看到GA派人來查看，後續有問題會再提出', N'謝謝，已有看到GA派人來查看，後續有問題會再提出')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1424, 1061, 1017, 7, CAST(N'2022-04-15T14:10:21.0057749' AS DateTime2), NULL, 1, N'THANKS', N'THANKS')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1425, 1069, 1014, 6, CAST(N'2022-04-16T09:36:37.3077080' AS DateTime2), NULL, 1, N'身高不到160CM的應該要先換', N'身高不到160CM的應該要先換')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1426, 1066, 1014, 7, CAST(N'2022-04-16T09:37:14.0700926' AS DateTime2), NULL, 1, N'會再試吃再提出建議', N'會再試吃再提出建議')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1427, 1091, 1010, 1, CAST(N'2022-04-19T07:56:31.1852159' AS DateTime2), NULL, 1, N'Issue: test
Suggestion: 數據分析不單是電商的必備能力，還有機會為傳統藥廠加值、帶來訂單。
針對精準族群的行銷，如何用數據優化EDM，大幅提高開信率。
帶領團隊改變行為，初期一定要有小勝，同仁才有感。數據分析不單是電商的必備能力，還有機會數據分析不單是電商的必備能力，還有機會為傳統藥廠加值、帶來訂單。
針對精準族群的行銷，如何用數據優化EDM，大幅提高開信率。
帶領團隊改變行為，初期一定要有小勝，同仁才有感。', N'問題: test
建議: 數據分析不單是電商的必備能力，還有機會為傳統藥廠加值、帶來訂單。
針對精準族群的行銷，如何用數據優化EDM，大幅提高開信率。
帶領團隊改變行為，初期一定要有小勝，同仁才有感。數據分析不單是電商的必備能力，還有機會數據分析不單是電商的必備能力，還有機會為傳統藥廠加值、帶來訂單。
針對精準族群的行銷，如何用數據優化EDM，大幅提高開信率。
帶領團隊改變行為，初期一定要有小勝，同仁才有感。')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1428, 1091, 3, 5, CAST(N'2022-04-19T07:57:01.7210848' AS DateTime2), NULL, 1, N'got it', N'got it')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1429, 1091, 3, 3, CAST(N'2022-04-19T07:57:47.3118244' AS DateTime2), NULL, 1, N'OK', N'OK')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1430, 1091, 1010, 6, CAST(N'2022-04-19T07:58:01.1253909' AS DateTime2), NULL, 1, N'NO', N'NO')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1431, 1091, 6, 8, CAST(N'2022-04-19T07:58:19.4197022' AS DateTime2), NULL, 1, N'TEST', N'TEST')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1432, 1091, 6, 9, CAST(N'2022-04-19T07:59:54.7603575' AS DateTime2), NULL, 1, N'please revised the plan and description', N'please revised the plan and description')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1433, 1091, 6, 9, CAST(N'2022-04-19T08:00:53.9419353' AS DateTime2), NULL, 1, N'please test again', N'please test again')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1434, 1091, 6, 9, CAST(N'2022-04-19T08:03:50.3510507' AS DateTime2), NULL, 1, N'test ', N'test ')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1435, 1059, 6, 9, CAST(N'2022-04-19T08:10:15.0180658' AS DateTime2), NULL, 1, N'test', N'test')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1436, 1059, 6, 9, CAST(N'2022-04-19T08:10:54.8431744' AS DateTime2), NULL, 1, N'', N'')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1437, 1091, 6, 9, CAST(N'2022-04-19T08:11:37.6573885' AS DateTime2), NULL, 1, N'', N'')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1438, 1092, 1010, 1, CAST(N'2022-04-19T13:51:55.3059122' AS DateTime2), NULL, 1, N'Issue: 1
Suggestion: 2', N'問題: 1
建議: 2')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1439, 1092, 3, 5, CAST(N'2022-04-19T13:56:49.6484762' AS DateTime2), NULL, 1, N'OK', N'OK')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1440, 1060, 6, 9, CAST(N'2022-04-19T14:46:27.2029041' AS DateTime2), NULL, 1, N'', N'')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1441, 1060, 6, 9, CAST(N'2022-04-20T08:32:35.4704492' AS DateTime2), NULL, 1, N'', N'')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1442, 1052, 6, 9, CAST(N'2022-04-20T08:34:40.8829206' AS DateTime2), NULL, 1, N'', N'')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1443, 1052, 6, 9, CAST(N'2022-04-22T13:39:33.6819482' AS DateTime2), NULL, 1, N'Please check again', N'Please check again')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1444, 1052, 6, 9, CAST(N'2022-04-22T13:40:21.8521781' AS DateTime2), NULL, 1, N'test', N'test')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1445, 1093, 1010, 1, CAST(N'2022-04-22T13:44:12.0992946' AS DateTime2), NULL, 1, N'Issue: AAA
Suggestion: BBBDCD', N'問題: AAA
建議: BBBDCD')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1446, 1093, 3, 5, CAST(N'2022-04-22T13:44:25.3385995' AS DateTime2), NULL, 1, N'OK', N'OK')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1447, 1093, 3, 5, CAST(N'2022-04-22T13:45:01.6646417' AS DateTime2), NULL, 1, N'test try', N'test try')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1448, 1093, 3, 3, CAST(N'2022-04-22T13:45:08.4710952' AS DateTime2), NULL, 1, N'test ok', N'test ok')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1449, 1093, 1010, 6, CAST(N'2022-04-22T13:45:46.1066691' AS DateTime2), NULL, 1, N'NO', N'NO')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1450, 1093, 6, 8, CAST(N'2022-04-22T13:46:53.0463461' AS DateTime2), NULL, 1, N'ok', N'ok')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1451, 1094, 1010, 1, CAST(N'2022-04-23T11:30:13.1008085' AS DateTime2), NULL, 1, N'Issue: 目前只有第一週有派車AEON
但民生用品有去AEON採買的需求，故希望增加週數
Suggestion: 希望從只有一週去AEON，改成一和三週都有派車AEON', N'問題: 目前只有第一週有派車AEON
但民生用品有去AEON採買的需求，故希望增加週數
建議: 希望從只有一週去AEON，改成一和三週都有派車AEON')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1452, 1094, 3, 5, CAST(N'2022-04-23T11:30:24.8297504' AS DateTime2), NULL, 1, N'收到', N'收到')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1453, 1094, 3, 3, CAST(N'2022-04-23T11:31:58.1894110' AS DateTime2), NULL, 1, N'與GA討論後，目前派車仍維持不變，如有採買需求，可自行叫車前往', N'與GA討論後，目前派車仍維持不變，如有採買需求，可自行叫車前往')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1454, 1094, 1010, 6, CAST(N'2022-04-23T11:34:06.2285225' AS DateTime2), NULL, 1, N'如有下廚習慣，只有一週可採買不太方便
希望可以再討論看看可否增加派車數量，或改平日下班派車', N'如有下廚習慣，只有一週可採買不太方便
希望可以再討論看看可否增加派車數量，或改平日下班派車')
GO
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1455, 1094, 6, 5, CAST(N'2022-04-23T11:35:23.5077016' AS DateTime2), NULL, 1, N'To John: 請再與GA了解可否增加週數', N'To John: 請再與GA了解可否增加週數')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1456, 1094, 3, 5, CAST(N'2022-04-23T11:42:25.0257070' AS DateTime2), NULL, 1, N'(測試回覆) 已與GA再次討論，目前可考慮增加平日派車一天，待召開會議確定星期幾及實施日期後再公告', N'(測試回覆) 已與GA再次討論，目前可考慮增加平日派車一天，待召開會議確定星期幾及實施日期後再公告')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1457, 1094, 3, 3, CAST(N'2022-04-23T11:43:49.2448349' AS DateTime2), NULL, 1, N'(測試回覆) 將於6月中旬執行，週二派一班車至AEON，17:30去20:30回', N'(測試回覆) 將於6月中旬執行，週二派一班車至AEON，17:30去20:30回')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1458, 1094, 1010, 6, CAST(N'2022-04-23T11:47:01.0404587' AS DateTime2), NULL, 1, N'(測試回覆) 收到，可否改至週三呢？', N'(測試回覆) 收到，可否改至週三呢？')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1459, 1094, 6, 8, CAST(N'2022-04-23T11:47:54.2082778' AS DateTime2), NULL, 1, N'請依管理中心回應處理', N'請依管理中心回應處理')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1460, 1095, 1014, 1, CAST(N'2022-05-09T11:25:38.0463567' AS DateTime2), NULL, 1, N'Issue: 七天中有四天午餐都是炸的
董事長要我們健康生活
但公司伙食反其道而行
請問 董事長知道我們伙食這麼可怕嗎??????
開重訓班有什麼用??
還有菜單都沒有任何變化
很膩   
好吃的菜都沒有了比如說涼拌牛肉 小蔥豆腐 鐵板豆腐等
很難吃的菜都一直出現
 
Suggestion: 隨然先前有成立伙食委員會
但是根本沒有成效
因為廚師根本不接受別的意見
建議懂吃的人來開菜單
或是
另外發伙食費
TKS', N'問題: 七天中有四天午餐都是炸的
董事長要我們健康生活
但公司伙食反其道而行
請問 董事長知道我們伙食這麼可怕嗎??????
開重訓班有什麼用??
還有菜單都沒有任何變化
很膩   
好吃的菜都沒有了比如說涼拌牛肉 小蔥豆腐 鐵板豆腐等
很難吃的菜都一直出現
 
建議: 隨然先前有成立伙食委員會
但是根本沒有成效
因為廚師根本不接受別的意見
建議懂吃的人來開菜單
或是
另外發伙食費
TKS')
INSERT [dbo].[IdeaHistory] ([Id], [IdeaID], [InsertBy], [Status], [CreatedTime], [ModifiedTime], [Isshow], [Comment], [CommentZh]) VALUES (1461, 1071, 1012, 7, CAST(N'2022-05-10T10:16:39.6220682' AS DateTime2), NULL, 1, N'水煮蔬菜仍舊一樣，已到5/6中餐都又到餐廳吃飯的觀感', N'水煮蔬菜仍舊一樣，已到5/6中餐都又到餐廳吃飯的觀感')
SET IDENTITY_INSERT [dbo].[IdeaHistory] OFF
SET IDENTITY_INSERT [dbo].[PlanIdea] ON 

INSERT [dbo].[PlanIdea] ([ID], [IdeaID], [Plan], [Description], [StatusPlanID], [CreatedTime], [CreatedBy], [IsDisplay], [DeleteTime], [IsReject], [StatusPlanID_Before]) VALUES (47, 1054, N'1', N'1', 1, CAST(N'2022-03-16T14:45:29.4538661' AS DateTime2), 3, 0, CAST(N'2022-03-16T14:45:37.2091735' AS DateTime2), 0, 0)
INSERT [dbo].[PlanIdea] ([ID], [IdeaID], [Plan], [Description], [StatusPlanID], [CreatedTime], [CreatedBy], [IsDisplay], [DeleteTime], [IsReject], [StatusPlanID_Before]) VALUES (48, 1054, N'1', N'1', 1, CAST(N'2022-03-16T14:45:43.6329987' AS DateTime2), 3, 1, NULL, 0, 0)
INSERT [dbo].[PlanIdea] ([ID], [IdeaID], [Plan], [Description], [StatusPlanID], [CreatedTime], [CreatedBy], [IsDisplay], [DeleteTime], [IsReject], [StatusPlanID_Before]) VALUES (49, 1054, N'2', N'2', 2, CAST(N'2022-03-16T14:45:49.3021763' AS DateTime2), 3, 1, NULL, 0, 0)
INSERT [dbo].[PlanIdea] ([ID], [IdeaID], [Plan], [Description], [StatusPlanID], [CreatedTime], [CreatedBy], [IsDisplay], [DeleteTime], [IsReject], [StatusPlanID_Before]) VALUES (50, 1052, N'1', N'1', 3, CAST(N'2022-03-16T14:46:54.0931755' AS DateTime2), 3, 1, NULL, 1, 3)
INSERT [dbo].[PlanIdea] ([ID], [IdeaID], [Plan], [Description], [StatusPlanID], [CreatedTime], [CreatedBy], [IsDisplay], [DeleteTime], [IsReject], [StatusPlanID_Before]) VALUES (51, 1052, N'2', N'2', 3, CAST(N'2022-03-16T14:46:57.8416205' AS DateTime2), 3, 1, NULL, 1, 3)
INSERT [dbo].[PlanIdea] ([ID], [IdeaID], [Plan], [Description], [StatusPlanID], [CreatedTime], [CreatedBy], [IsDisplay], [DeleteTime], [IsReject], [StatusPlanID_Before]) VALUES (52, 1060, N'follow', NULL, 3, CAST(N'2022-03-21T12:27:21.5977875' AS DateTime2), 3, 1, NULL, 1, 0)
INSERT [dbo].[PlanIdea] ([ID], [IdeaID], [Plan], [Description], [StatusPlanID], [CreatedTime], [CreatedBy], [IsDisplay], [DeleteTime], [IsReject], [StatusPlanID_Before]) VALUES (53, 1059, N'OK', N'OK', 3, CAST(N'2022-03-21T12:27:42.9968132' AS DateTime2), 3, 1, NULL, 1, 0)
INSERT [dbo].[PlanIdea] ([ID], [IdeaID], [Plan], [Description], [StatusPlanID], [CreatedTime], [CreatedBy], [IsDisplay], [DeleteTime], [IsReject], [StatusPlanID_Before]) VALUES (54, 1091, N'Plan NO.1', N'test 1', 3, CAST(N'2022-04-19T07:58:52.1753661' AS DateTime2), 3, 1, NULL, 1, 0)
INSERT [dbo].[PlanIdea] ([ID], [IdeaID], [Plan], [Description], [StatusPlanID], [CreatedTime], [CreatedBy], [IsDisplay], [DeleteTime], [IsReject], [StatusPlanID_Before]) VALUES (55, 1091, NULL, NULL, 0, CAST(N'2022-04-19T07:58:53.8757468' AS DateTime2), 3, 1, NULL, 0, 0)
INSERT [dbo].[PlanIdea] ([ID], [IdeaID], [Plan], [Description], [StatusPlanID], [CreatedTime], [CreatedBy], [IsDisplay], [DeleteTime], [IsReject], [StatusPlanID_Before]) VALUES (56, 1091, N'Plan NO.2', N'test 2', 3, CAST(N'2022-04-19T07:58:56.6695804' AS DateTime2), 3, 1, NULL, 1, 0)
INSERT [dbo].[PlanIdea] ([ID], [IdeaID], [Plan], [Description], [StatusPlanID], [CreatedTime], [CreatedBy], [IsDisplay], [DeleteTime], [IsReject], [StatusPlanID_Before]) VALUES (57, 1091, N'Plan test', N'NG Test', 1, CAST(N'2022-04-19T08:01:25.9135841' AS DateTime2), 3, 1, NULL, 0, 0)
INSERT [dbo].[PlanIdea] ([ID], [IdeaID], [Plan], [Description], [StatusPlanID], [CreatedTime], [CreatedBy], [IsDisplay], [DeleteTime], [IsReject], [StatusPlanID_Before]) VALUES (58, 1091, NULL, NULL, 0, CAST(N'2022-04-19T08:01:30.1161518' AS DateTime2), 3, 1, NULL, 0, 0)
INSERT [dbo].[PlanIdea] ([ID], [IdeaID], [Plan], [Description], [StatusPlanID], [CreatedTime], [CreatedBy], [IsDisplay], [DeleteTime], [IsReject], [StatusPlanID_Before]) VALUES (59, 1091, N'Plan OK', N'OK test', 3, CAST(N'2022-04-19T08:02:18.9014202' AS DateTime2), 3, 1, NULL, 1, 0)
INSERT [dbo].[PlanIdea] ([ID], [IdeaID], [Plan], [Description], [StatusPlanID], [CreatedTime], [CreatedBy], [IsDisplay], [DeleteTime], [IsReject], [StatusPlanID_Before]) VALUES (60, 1059, N'test', N'test', 2, CAST(N'2022-04-19T08:10:39.1438965' AS DateTime2), 3, 1, NULL, 0, 0)
INSERT [dbo].[PlanIdea] ([ID], [IdeaID], [Plan], [Description], [StatusPlanID], [CreatedTime], [CreatedBy], [IsDisplay], [DeleteTime], [IsReject], [StatusPlanID_Before]) VALUES (61, 1060, N'Testing 1', N'2', 3, CAST(N'2022-04-19T14:46:54.4122937' AS DateTime2), 3, 1, NULL, 1, 0)
INSERT [dbo].[PlanIdea] ([ID], [IdeaID], [Plan], [Description], [StatusPlanID], [CreatedTime], [CreatedBy], [IsDisplay], [DeleteTime], [IsReject], [StatusPlanID_Before]) VALUES (62, 1090, NULL, NULL, 1, CAST(N'2022-04-20T08:32:09.5099494' AS DateTime2), 1016, 1, NULL, 0, 0)
INSERT [dbo].[PlanIdea] ([ID], [IdeaID], [Plan], [Description], [StatusPlanID], [CreatedTime], [CreatedBy], [IsDisplay], [DeleteTime], [IsReject], [StatusPlanID_Before]) VALUES (63, 1060, N'11', NULL, 1, CAST(N'2022-04-20T08:35:41.2978957' AS DateTime2), 3, 1, NULL, 0, 0)
INSERT [dbo].[PlanIdea] ([ID], [IdeaID], [Plan], [Description], [StatusPlanID], [CreatedTime], [CreatedBy], [IsDisplay], [DeleteTime], [IsReject], [StatusPlanID_Before]) VALUES (64, 1060, N'333', NULL, 2, CAST(N'2022-04-20T08:35:44.3439181' AS DateTime2), 3, 1, NULL, 0, 0)
INSERT [dbo].[PlanIdea] ([ID], [IdeaID], [Plan], [Description], [StatusPlanID], [CreatedTime], [CreatedBy], [IsDisplay], [DeleteTime], [IsReject], [StatusPlanID_Before]) VALUES (65, 1052, N'1', NULL, 3, CAST(N'2022-04-22T13:40:01.2600801' AS DateTime2), 3, 1, NULL, 1, 2)
INSERT [dbo].[PlanIdea] ([ID], [IdeaID], [Plan], [Description], [StatusPlanID], [CreatedTime], [CreatedBy], [IsDisplay], [DeleteTime], [IsReject], [StatusPlanID_Before]) VALUES (66, 1052, N'2', NULL, 3, CAST(N'2022-04-22T13:40:07.6910540' AS DateTime2), 3, 1, NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[PlanIdea] OFF
SET IDENTITY_INSERT [dbo].[PlanStatus] ON 

INSERT [dbo].[PlanStatus] ([ID], [Name], [Icon], [Color], [FontSize]) VALUES (1, N'NG', N'fa fa-times-circle', N'red', N'18px')
INSERT [dbo].[PlanStatus] ([ID], [Name], [Icon], [Color], [FontSize]) VALUES (2, N'OK', N'fa fa-check-circle', N'green', N'18px')
INSERT [dbo].[PlanStatus] ([ID], [Name], [Icon], [Color], [FontSize]) VALUES (3, N'Refused', N'fa fa-repeat', N'black', N'15px')
SET IDENTITY_INSERT [dbo].[PlanStatus] OFF
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([Id], [Name], [Description], [NameEn], [NameZh]) VALUES (1, N'Apply', N'Apply', N'Apply', N'申請中')
INSERT [dbo].[Status] ([Id], [Name], [Description], [NameEn], [NameZh]) VALUES (2, N'Reject', N'Reject', N'Reject', N'退回')
INSERT [dbo].[Status] ([Id], [Name], [Description], [NameEn], [NameZh]) VALUES (3, N'Complete', N'Complete', N'Complete', N'完成')
INSERT [dbo].[Status] ([Id], [Name], [Description], [NameEn], [NameZh]) VALUES (4, N'Terminate', N'Terminate', N'Terminate', N'Terminate')
INSERT [dbo].[Status] ([Id], [Name], [Description], [NameEn], [NameZh]) VALUES (5, N'Update', N'Update', N'Update', N'處理中')
INSERT [dbo].[Status] ([Id], [Name], [Description], [NameEn], [NameZh]) VALUES (6, N'Dissatisfied', N'Dissatisfied', N'Dissatisfied', N'不滿意')
INSERT [dbo].[Status] ([Id], [Name], [Description], [NameEn], [NameZh]) VALUES (7, N'Satisfied', N'Satisfied', N'Satisfied', N'滿意')
INSERT [dbo].[Status] ([Id], [Name], [Description], [NameEn], [NameZh]) VALUES (8, N'Close', N'Close', N'Close', N'結案')
SET IDENTITY_INSERT [dbo].[Status] OFF
SET IDENTITY_INSERT [dbo].[SystemLanguages] ON 

INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (1, NULL, NULL, N'ACCOUNTGROUP_NAME_LABEL', NULL, N'Name', N'Name')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (2, NULL, NULL, N'MODAL_TERMINATE_BUTTON_LABEL', NULL, N'终止', N'Terminate')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (3, NULL, NULL, N'MODAL_SATISFIED_BUTTON_LABEL', NULL, N'結案', N'End Proposal')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (4, NULL, NULL, N'MODAL_DISSATISFIED_BUTTON_LABEL', NULL, N'繼續處理', N'Still Have Questions')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (5, NULL, NULL, N'MODAL_SATISFIED_LABEL', NULL, N'滿意', N'Satisfied')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (6, NULL, NULL, N'MODAL_REJECT_LABEL', NULL, N'退回', N'Reject')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (7, NULL, NULL, N'MODAL_DISSATIFIED_LABEL', NULL, N'不滿意', N'Dissatisfied')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (8, NULL, NULL, N'MODAL_CLOSE_BUTTON_LABEL', NULL, N'結案', N'Close')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (9, NULL, NULL, N'MODAL_ASIGN_BUTTON_LABEL', NULL, N'指派', N'Assign')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (10, NULL, NULL, N'MODAL_DOWNLOADFILE_LABEL', NULL, N'下載檔案', N'Download File')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (11, NULL, NULL, N'MODAL_SUGGESTION_TO_LABEL', NULL, N'至', N'To')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (12, NULL, NULL, N'MODAL_SUGGESTION_TITLE_LABEL', NULL, N'主題', N'Title')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (13, NULL, NULL, N'MODAL_SUGGESTION_ISSUE_LABEL', NULL, N'問題', N'Issue')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (14, NULL, NULL, N'MODAL_SUGGESTION_LABEL', NULL, N'建議', N'Suggestion')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (15, NULL, NULL, N'MODAL_SUGGESTION_FILE_LABEL', NULL, N'檔案', N'File')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (16, NULL, NULL, N'MODAL_BUTTON_SAVE_LABEL', NULL, N'保存', N'Save')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (17, NULL, NULL, N'MODAL_BUTTON_SUBMIT_LABEL', NULL, N'提交', N'Submit')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (18, NULL, NULL, N'MODAL_SUGGESTION_EDIT_LABEL', NULL, N'Edit 建議', N'Edit Suggestion')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (19, NULL, NULL, N'MODAL_SUGGESTION_EDIT_TO_LABEL', NULL, N'至', N'To')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (20, NULL, NULL, N'MODAL_SUGGESTION_EDIT_TITLE_LABEL', NULL, N'主題', N'Title')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (21, NULL, NULL, N'MODAL_SUGGESTION_EDIT_ISSUE_LABEL', NULL, N'問題', N'Issue')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (22, NULL, NULL, N'MODAL_SUGGESTION_EDIT_SUGGESTION_LABEL', NULL, N'建議', N'Suggestion')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (23, NULL, NULL, N'MODAL_SUGGESTION_EDIT_FILE_LABEL', NULL, N'檔案', N'File')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (24, NULL, NULL, N'DEFAULT_SYSTEM_LABEL', NULL, N'建議箱系統', N'Suggestion Box System')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (25, NULL, NULL, N'PROPOSAL_TAB_LABEL', NULL, N'提議', N'Proposal')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (26, NULL, NULL, N'PROCESSING_TAB_LABEL', NULL, N'過程中', N'Processing')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (27, NULL, NULL, N'MODAL_COMPLETE_BUTTON_LABEL', NULL, N'完成', N'Complete')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (28, NULL, NULL, N'MODAL_UPDATE_BUTTON_LABEL', NULL, N'處理中', N'Update')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (29, NULL, NULL, N'MODAL_PROCESSDETAIL_LABEL', NULL, N'過程細節', N'Process Detail')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (30, NULL, NULL, N'MODAL_CLOSEMODAL_BUTTON_LABEL', NULL, N'關閉', N'Close')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (31, NULL, NULL, N'ACCOUNTGROUP_SEQUENCE_LABEL', NULL, N'Sequence', N'Sequence')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (32, NULL, NULL, N'ACCOUNT_USERNAME_LABEL', NULL, N'帳號', N'User Name')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (33, NULL, NULL, N'ACCOUNT_FULLNAME_LABEL', NULL, N'名字', N'Full Name')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (34, NULL, NULL, N'ACCOUNT_PASSWORD_LABEL', NULL, N'密碼', N'Password')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (35, NULL, NULL, N'ACCOUNT_EMAIL_LABEL', NULL, N'Email', N'Email')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (36, NULL, NULL, N'ACCOUNT_ACCOUNTGROUP_LABEL', NULL, N'角色群組', N'Account Group')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (37, NULL, NULL, N'ACCOUNT_OPTION_LABEL', NULL, N'權限開放', N'Option')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (38, NULL, NULL, N'SIGN_OUT', NULL, N'登出', N'Sign-out')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (39, NULL, NULL, N'SEARCH_LABEL', NULL, N'搜索', N'Search')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (40, NULL, NULL, N'SUGGESTION_BUTTON_LABEL', NULL, N'建議', N'Suggestion')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (41, NULL, NULL, N'TODOLIST_TITLE_LABEL', NULL, N'主題', N'Title')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (42, NULL, NULL, N'TODOLIST_DATE_LABEL', NULL, N'日期', N'Date')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (43, NULL, NULL, N'ERICK_TAB_LABEL', NULL, N'Erick', N'Erick')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (44, NULL, NULL, N'TODOLIST_STATUS_LABEL', NULL, N'狀態', N'Status')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (45, NULL, NULL, N'MODAL_DETAIL_LABEL', NULL, N'細節', N'Detail')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (46, NULL, NULL, N'MODAL_PROPOSER_LABEL', NULL, N'提議人', N'Proposer')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (47, NULL, NULL, N'MODAL_TITLE_LABEL', NULL, N' 主題', N' Title')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (48, NULL, NULL, N'MODAL_SIGNEE_LABEL', NULL, N'簽核者', N'Signee')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (49, NULL, NULL, N'MODAL_COMMENT_LABEL', NULL, N'評論', N'Comment')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (50, NULL, NULL, N'MODAL_TIME_LABEL', NULL, N'時間', N'Time')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (51, NULL, NULL, N'MODAL_STATUS_LABEL', NULL, N'狀態', N'Status')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (52, NULL, NULL, N'MODAL_ATTRACHMENT_LABEL', NULL, N'附件', N'Attachment ')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (53, NULL, NULL, N'MODAL_VIEW_LABEL', NULL, N'瀏覽', N'View')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (54, NULL, NULL, N'MODAL_ATTACKFILE_LABEL', NULL, N'檔案', N'Attached file ')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (55, NULL, NULL, N'MODAL_ACCEPT_BUTTON_LABEL', NULL, N'接受', N'Accept')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (56, NULL, NULL, N'MODAL_REJECT_BUTTON_LABEL', NULL, N'退回', N'Reject')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (57, NULL, NULL, N'TODOLIST_DETAIL_LABEL', NULL, N'細節', N'Detail')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (58, NULL, NULL, N'COMPLETE_TAB_LABEL', NULL, N'完成', N'Complete')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (59, N'Todolist', NULL, N'SUGGESTION_PLACEHOLDER_LABEL', NULL, N'請選擇', N'Select a user')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (60, NULL, NULL, N'ISSUE_DATA_LABEL', NULL, N'問題', N'Issue')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (61, NULL, NULL, N'SUGGESTION_DATA_LABEL', NULL, N'建議', N'Suggestion')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (62, NULL, NULL, N'PLACEHOLDER_COMMENT_LABEL', NULL, N'寫個評論...', N'Write a comment...')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (63, NULL, NULL, N'TODOLIST_COMMENT_LABEL', NULL, N'評論', N'Comment')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (64, NULL, NULL, N'ANNOUNCEMENT_TAB_LABEL', NULL, N'Announcement', N'Announcement')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (65, NULL, NULL, N'TODOLIST_ANNOUNCEMENT_LABEL', NULL, N'Announcement', N'Announcement')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (66, NULL, NULL, N'MESSAGE_SAVE_TO_SUGGESTION', NULL, N'Please select a user', N'Please select a user')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (67, NULL, NULL, N'MESSAGE_SAVE_TITLE_SUGGESTION', NULL, N'Title can''t be blank', N'Title can''t be blank')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (68, NULL, NULL, N'MESSAGE_SAVE_ISSUE_SUGGESTION', NULL, N'Issue can''t be blank', N'Issue can''t be blank')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (69, NULL, NULL, N'MESSAGE_SAVE_SUGGESTIONTEXT_SUGGESTION', NULL, N'Please fill in the suggestion content', N'Please fill in the suggestion content')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (70, NULL, NULL, N'APPROVAL_TAB_LABEL', NULL, N'審核', N'Approval')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (71, NULL, NULL, N'MODAL_PLAN_LABEL', NULL, N'Plan', N'Plan')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (72, NULL, NULL, N'MODAL_DESCRIPTION_LABEL', NULL, N'Description', N'Description')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (73, NULL, NULL, N'MODAL_SUBMITMODAL_SPOKERMAN_BUTTON_LABEL', NULL, N'Submit', N'Submit')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (74, NULL, NULL, N'MODAL_SATISFIED_ERICK_BUTTON_APPROVE_LABEL', NULL, N'同意', N'Approved')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (75, NULL, NULL, N'MODAL_SATISFIED_ERICK_BUTTON_REJECT_LABEL', NULL, N'不同意', N'Rejection')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (76, NULL, NULL, N'MODAL_SATISFIED_ERICK_LABEL', NULL, N'審核 (Apporval)', N'審核 (Apporval)')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (77, NULL, NULL, N'MODAL_ANNOUNCEMENT_TITLE_LABEL', NULL, N'Detail', N'Detail')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (78, NULL, NULL, N'MESSAGE_COMMENT_TEXT', NULL, N'Please fill in the comment text', N'Please fill in the comment text')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (79, NULL, NULL, N'STATUS_NAME_EN_LABEL', NULL, N'Name En', N'Name En')
INSERT [dbo].[SystemLanguages] ([ID], [SLPage], [SLType], [SLKey], [Comment], [SLTW], [SLEN]) VALUES (80, NULL, NULL, N'STATUS_NAME_ZH_LABEL', NULL, N'Name Zh', N'Name Zh')
SET IDENTITY_INSERT [dbo].[SystemLanguages] OFF
SET IDENTITY_INSERT [dbo].[Tab] ON 

INSERT [dbo].[Tab] ([Id], [Name], [Type], [NameEn], [NameZh]) VALUES (1, N'Proposal', N'Proposal', N'Proposal', N'提議')
INSERT [dbo].[Tab] ([Id], [Name], [Type], [NameEn], [NameZh]) VALUES (2, N'Processing', N'Processing', N'Processing', N'過程中')
INSERT [dbo].[Tab] ([Id], [Name], [Type], [NameEn], [NameZh]) VALUES (3, N'Erick', N'Erick', N'Erick', N'Erick')
INSERT [dbo].[Tab] ([Id], [Name], [Type], [NameEn], [NameZh]) VALUES (4, N'Complete', N'Close', N'Complete', N'完成')
INSERT [dbo].[Tab] ([Id], [Name], [Type], [NameEn], [NameZh]) VALUES (1002, N'Approval', N'Approval', N'Approval', N'Approval')
INSERT [dbo].[Tab] ([Id], [Name], [Type], [NameEn], [NameZh]) VALUES (1003, N'Announcement', N'Announcement', N'Announcement', N'Announcement')
SET IDENTITY_INSERT [dbo].[Tab] OFF
SET IDENTITY_INSERT [dbo].[TimeLine] ON 

INSERT [dbo].[TimeLine] ([ID], [StatusName], [IdeaID], [CreatedBy], [CreatedTime], [Comment], [ModifiedTime]) VALUES (1, N'Rejection', 1019, 6, CAST(N'2022-02-16T09:30:09.3468904' AS DateTime2), N'reject', NULL)
INSERT [dbo].[TimeLine] ([ID], [StatusName], [IdeaID], [CreatedBy], [CreatedTime], [Comment], [ModifiedTime]) VALUES (2, N'Rejection', 1028, 6, CAST(N'2022-02-17T14:30:38.0784520' AS DateTime2), N'', NULL)
INSERT [dbo].[TimeLine] ([ID], [StatusName], [IdeaID], [CreatedBy], [CreatedTime], [Comment], [ModifiedTime]) VALUES (3, N'Rejection', 1028, 6, CAST(N'2022-02-26T10:47:36.8206598' AS DateTime2), N'please rewrite the answer', NULL)
INSERT [dbo].[TimeLine] ([ID], [StatusName], [IdeaID], [CreatedBy], [CreatedTime], [Comment], [ModifiedTime]) VALUES (4, N'Rejection', 1028, 6, CAST(N'2022-02-26T11:54:11.1822711' AS DateTime2), N'Can''t not see all content', NULL)
INSERT [dbo].[TimeLine] ([ID], [StatusName], [IdeaID], [CreatedBy], [CreatedTime], [Comment], [ModifiedTime]) VALUES (5, N'Rejection', 1019, 6, CAST(N'2022-03-04T16:43:03.6082862' AS DateTime2), N'', NULL)
INSERT [dbo].[TimeLine] ([ID], [StatusName], [IdeaID], [CreatedBy], [CreatedTime], [Comment], [ModifiedTime]) VALUES (6, N'Rejection', 1038, 6, CAST(N'2022-03-04T16:43:09.6073056' AS DateTime2), N'', NULL)
INSERT [dbo].[TimeLine] ([ID], [StatusName], [IdeaID], [CreatedBy], [CreatedTime], [Comment], [ModifiedTime]) VALUES (7, N'Rejection', 1038, 6, CAST(N'2022-03-04T16:47:16.8210677' AS DateTime2), N'', NULL)
INSERT [dbo].[TimeLine] ([ID], [StatusName], [IdeaID], [CreatedBy], [CreatedTime], [Comment], [ModifiedTime]) VALUES (8, N'Rejection', 1033, 6, CAST(N'2022-03-05T14:23:19.2814714' AS DateTime2), N'', NULL)
INSERT [dbo].[TimeLine] ([ID], [StatusName], [IdeaID], [CreatedBy], [CreatedTime], [Comment], [ModifiedTime]) VALUES (9, N'Rejection', 1028, 6, CAST(N'2022-03-07T07:39:50.3757911' AS DateTime2), N'test', NULL)
INSERT [dbo].[TimeLine] ([ID], [StatusName], [IdeaID], [CreatedBy], [CreatedTime], [Comment], [ModifiedTime]) VALUES (10, N'Rejection', 1019, 6, CAST(N'2022-03-08T10:04:55.0105822' AS DateTime2), N'test, refused issue', NULL)
INSERT [dbo].[TimeLine] ([ID], [StatusName], [IdeaID], [CreatedBy], [CreatedTime], [Comment], [ModifiedTime]) VALUES (11, N'Rejection', 1040, 6, CAST(N'2022-03-08T15:38:39.5693092' AS DateTime2), N'No ', NULL)
INSERT [dbo].[TimeLine] ([ID], [StatusName], [IdeaID], [CreatedBy], [CreatedTime], [Comment], [ModifiedTime]) VALUES (12, N'Rejection', 1019, 6, CAST(N'2022-03-09T14:29:28.2979940' AS DateTime2), N'NO', NULL)
INSERT [dbo].[TimeLine] ([ID], [StatusName], [IdeaID], [CreatedBy], [CreatedTime], [Comment], [ModifiedTime]) VALUES (13, N'Rejection', 1030, 6, CAST(N'2022-03-09T16:08:54.5616421' AS DateTime2), N'', NULL)
INSERT [dbo].[TimeLine] ([ID], [StatusName], [IdeaID], [CreatedBy], [CreatedTime], [Comment], [ModifiedTime]) VALUES (14, N'Rejection', 1028, 6, CAST(N'2022-03-10T08:56:22.2718835' AS DateTime2), N'test2 by admin', NULL)
INSERT [dbo].[TimeLine] ([ID], [StatusName], [IdeaID], [CreatedBy], [CreatedTime], [Comment], [ModifiedTime]) VALUES (15, N'Rejection', 1030, 6, CAST(N'2022-03-10T12:28:12.0490604' AS DateTime2), N'test by admin', NULL)
INSERT [dbo].[TimeLine] ([ID], [StatusName], [IdeaID], [CreatedBy], [CreatedTime], [Comment], [ModifiedTime]) VALUES (16, N'Rejection', 1048, 6, CAST(N'2022-03-14T16:47:46.3299759' AS DateTime2), N'NO ', NULL)
INSERT [dbo].[TimeLine] ([ID], [StatusName], [IdeaID], [CreatedBy], [CreatedTime], [Comment], [ModifiedTime]) VALUES (17, N'Rejection', 1052, 6, CAST(N'2022-03-16T14:47:12.8007896' AS DateTime2), N'NO', NULL)
INSERT [dbo].[TimeLine] ([ID], [StatusName], [IdeaID], [CreatedBy], [CreatedTime], [Comment], [ModifiedTime]) VALUES (18, N'Rejection', 1091, 6, CAST(N'2022-04-19T07:59:54.7678470' AS DateTime2), N'please revised the plan and description', NULL)
INSERT [dbo].[TimeLine] ([ID], [StatusName], [IdeaID], [CreatedBy], [CreatedTime], [Comment], [ModifiedTime]) VALUES (19, N'Rejection', 1091, 6, CAST(N'2022-04-19T08:00:53.9458343' AS DateTime2), N'please test again', NULL)
INSERT [dbo].[TimeLine] ([ID], [StatusName], [IdeaID], [CreatedBy], [CreatedTime], [Comment], [ModifiedTime]) VALUES (20, N'Rejection', 1091, 6, CAST(N'2022-04-19T08:03:50.3550007' AS DateTime2), N'test ', NULL)
INSERT [dbo].[TimeLine] ([ID], [StatusName], [IdeaID], [CreatedBy], [CreatedTime], [Comment], [ModifiedTime]) VALUES (21, N'Rejection', 1059, 6, CAST(N'2022-04-19T08:10:15.0281830' AS DateTime2), N'test', NULL)
INSERT [dbo].[TimeLine] ([ID], [StatusName], [IdeaID], [CreatedBy], [CreatedTime], [Comment], [ModifiedTime]) VALUES (22, N'Rejection', 1060, 6, CAST(N'2022-04-19T14:46:27.2975301' AS DateTime2), N'', NULL)
INSERT [dbo].[TimeLine] ([ID], [StatusName], [IdeaID], [CreatedBy], [CreatedTime], [Comment], [ModifiedTime]) VALUES (23, N'Rejection', 1060, 6, CAST(N'2022-04-20T08:32:35.4855765' AS DateTime2), N'', NULL)
INSERT [dbo].[TimeLine] ([ID], [StatusName], [IdeaID], [CreatedBy], [CreatedTime], [Comment], [ModifiedTime]) VALUES (24, N'Rejection', 1052, 6, CAST(N'2022-04-20T08:34:40.8881245' AS DateTime2), N'', NULL)
INSERT [dbo].[TimeLine] ([ID], [StatusName], [IdeaID], [CreatedBy], [CreatedTime], [Comment], [ModifiedTime]) VALUES (25, N'Rejection', 1052, 6, CAST(N'2022-04-22T13:39:33.7054136' AS DateTime2), N'Please check again', NULL)
INSERT [dbo].[TimeLine] ([ID], [StatusName], [IdeaID], [CreatedBy], [CreatedTime], [Comment], [ModifiedTime]) VALUES (26, N'Rejection', 1052, 6, CAST(N'2022-04-22T13:40:21.8569999' AS DateTime2), N'test', NULL)
SET IDENTITY_INSERT [dbo].[TimeLine] OFF
SET IDENTITY_INSERT [dbo].[UploadFile] ON 

INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1024, N'/UploadedFiles/6EBF4949-9394-4D4C-B193-AA05E6C448FB.jpg', 1326, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-26T11:23:59.0918216' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1025, N'/UploadedFiles/6EBF4949-9394-4D4C-B193-AA05E6C448FB.jpg', 1326, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-26T11:23:59.0918545' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1026, N'/UploadedFiles/6EBF4949-9394-4D4C-B193-AA05E6C448FB-1.jpg', 1326, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-26T11:23:59.0918581' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1027, N'/UploadedFiles/6EBF4949-9394-4D4C-B193-AA05E6C448FB.jpg', 1328, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-26T11:59:07.5428698' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1028, N'/UploadedFiles/6EBF4949-9394-4D4C-B193-AA05E6C448FB.jpg', 1328, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-26T11:59:07.5428715' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1029, N'/UploadedFiles/6EBF4949-9394-4D4C-B193-AA05E6C448FB.jpg', 1328, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-26T11:59:07.5428716' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1030, N'/UploadedFiles/Ephesus · SlidesCarnival.pptx', 1369, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:40.9317039' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1031, N'/UploadedFiles/Curio · SlidesCarnival.pptx', 1369, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:40.9317358' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1032, N'/UploadedFiles/Lucius · SlidesCarnival.pptx', 1369, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:40.9317397' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1033, N'/UploadedFiles/Feeble · SlidesCarnival.pptx', 1369, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:40.9317400' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1034, N'/UploadedFiles/original-8F5910A1-CFF3-4369-83FB-7F9F9EF66FE2.mp4', 1369, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:40.9317402' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1035, N'/UploadedFiles/CE978580-ABFE-4A73-AC77-CE5999B3B49B.jpg', 1369, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:40.9317403' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1036, N'/UploadedFiles/1648688984613.JPEG', 1369, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:40.9317405' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1037, N'/UploadedFiles/1648691027256.JPEG', 1369, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:40.9317406' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1038, N'/UploadedFiles/1648691026986.JPEG', 1369, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:40.9317408' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1039, N'/UploadedFiles/Ephesus · SlidesCarnival.pptx', 1370, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:41.5237237' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1040, N'/UploadedFiles/Curio · SlidesCarnival.pptx', 1370, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:41.5237240' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1041, N'/UploadedFiles/Lucius · SlidesCarnival.pptx', 1370, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:41.5237242' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1042, N'/UploadedFiles/Feeble · SlidesCarnival.pptx', 1370, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:41.5237244' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1043, N'/UploadedFiles/original-8F5910A1-CFF3-4369-83FB-7F9F9EF66FE2.mp4', 1370, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:41.5237245' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1044, N'/UploadedFiles/CE978580-ABFE-4A73-AC77-CE5999B3B49B.jpg', 1370, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:41.5237247' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1045, N'/UploadedFiles/1648688984613.JPEG', 1370, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:41.5237248' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1046, N'/UploadedFiles/1648691027256.JPEG', 1370, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:41.5237254' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1047, N'/UploadedFiles/1648691026986.JPEG', 1370, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:41.5237256' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1048, N'/UploadedFiles/Video_2022-03-25_121052.wmv', 1370, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:41.5237257' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1049, N'/UploadedFiles/Ephesus · SlidesCarnival.pptx', 1371, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:42.2614580' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1050, N'/UploadedFiles/Curio · SlidesCarnival.pptx', 1371, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:42.2614781' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1051, N'/UploadedFiles/Lucius · SlidesCarnival.pptx', 1371, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:42.2614784' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1052, N'/UploadedFiles/Feeble · SlidesCarnival.pptx', 1371, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:42.2614785' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1053, N'/UploadedFiles/original-8F5910A1-CFF3-4369-83FB-7F9F9EF66FE2.mp4', 1371, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:42.2614786' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1054, N'/UploadedFiles/CE978580-ABFE-4A73-AC77-CE5999B3B49B.jpg', 1371, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:42.2614788' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1055, N'/UploadedFiles/1648688984613.JPEG', 1371, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:42.2614789' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1056, N'/UploadedFiles/1648691027256.JPEG', 1371, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:42.2614791' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1057, N'/UploadedFiles/1648691026986.JPEG', 1371, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:42.2614792' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1058, N'/UploadedFiles/Video_2022-03-25_121052.wmv', 1371, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:42.2614793' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1059, N'/UploadedFiles/Ephesus · SlidesCarnival.pptx', 1372, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:42.5892723' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1060, N'/UploadedFiles/Curio · SlidesCarnival.pptx', 1372, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:42.5892726' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1061, N'/UploadedFiles/Lucius · SlidesCarnival.pptx', 1372, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:42.5892727' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1062, N'/UploadedFiles/Feeble · SlidesCarnival.pptx', 1372, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:42.5892732' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1063, N'/UploadedFiles/original-8F5910A1-CFF3-4369-83FB-7F9F9EF66FE2.mp4', 1372, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:42.5892733' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1064, N'/UploadedFiles/CE978580-ABFE-4A73-AC77-CE5999B3B49B.jpg', 1372, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:42.5892734' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1065, N'/UploadedFiles/1648688984613.JPEG', 1372, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:42.5892736' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1066, N'/UploadedFiles/1648691027256.JPEG', 1372, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:42.5892737' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1067, N'/UploadedFiles/1648691026986.JPEG', 1372, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:42.5892738' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1068, N'/UploadedFiles/Video_2022-03-25_121052.wmv', 1372, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:42.5892746' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1069, N'/UploadedFiles/Ephesus · SlidesCarnival.pptx', 1373, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:43.1300213' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1070, N'/UploadedFiles/Curio · SlidesCarnival.pptx', 1373, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:43.1300216' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1071, N'/UploadedFiles/Lucius · SlidesCarnival.pptx', 1373, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:43.1300217' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1072, N'/UploadedFiles/Feeble · SlidesCarnival.pptx', 1373, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:43.1300218' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1073, N'/UploadedFiles/original-8F5910A1-CFF3-4369-83FB-7F9F9EF66FE2.mp4', 1373, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:43.1300220' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1074, N'/UploadedFiles/CE978580-ABFE-4A73-AC77-CE5999B3B49B.jpg', 1373, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:43.1300221' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1075, N'/UploadedFiles/1648688984613.JPEG', 1373, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:43.1300222' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1076, N'/UploadedFiles/1648691027256.JPEG', 1373, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:43.1300223' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1077, N'/UploadedFiles/1648691026986.JPEG', 1373, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:43.1300225' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1078, N'/UploadedFiles/Video_2022-03-25_121052.wmv', 1373, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:43.1300226' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1079, N'/UploadedFiles/Ephesus · SlidesCarnival.pptx', 1374, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:43.1754038' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1080, N'/UploadedFiles/Curio · SlidesCarnival.pptx', 1374, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:43.1754041' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1081, N'/UploadedFiles/Lucius · SlidesCarnival.pptx', 1374, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:43.1754043' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1082, N'/UploadedFiles/Feeble · SlidesCarnival.pptx', 1374, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:43.1754044' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1083, N'/UploadedFiles/original-8F5910A1-CFF3-4369-83FB-7F9F9EF66FE2.mp4', 1374, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:43.1754045' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1084, N'/UploadedFiles/CE978580-ABFE-4A73-AC77-CE5999B3B49B.jpg', 1374, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:43.1754046' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1085, N'/UploadedFiles/1648688984613.JPEG', 1374, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:43.1754047' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1086, N'/UploadedFiles/1648691027256.JPEG', 1374, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:43.1754049' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1087, N'/UploadedFiles/1648691026986.JPEG', 1374, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:43.1754050' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1088, N'/UploadedFiles/Video_2022-03-25_121052.wmv', 1374, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-03-31T12:28:43.1754051' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1090, N'/UploadedFiles/Curio · SlidesCarnival.pptx', 1401, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-04-09T14:50:59.1551641' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1091, N'/UploadedFiles/水質不佳錄影.wmv', 1427, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-04-19T07:56:31.1941374' AS DateTime2), NULL)
INSERT [dbo].[UploadFile] ([Id], [Path], [IdealID], [UploadTime], [CreatedTime], [ModifiedTime]) VALUES (1092, N'/UploadedFiles/Curio · SlidesCarnival.pptx', 1445, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-04-22T13:44:12.1074384' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[UploadFile] OFF
ALTER TABLE [dbo].[Idea] ADD  DEFAULT (CONVERT([bit],(0))) FOR [Isshow]
GO
ALTER TABLE [dbo].[IdeaHistory] ADD  DEFAULT (CONVERT([bit],(0))) FOR [Isshow]
GO
ALTER TABLE [dbo].[AccountGroupAccount]  WITH CHECK ADD  CONSTRAINT [FK_AccountGroupAccount_AccountGroups_AccountGroupId] FOREIGN KEY([AccountGroupId])
REFERENCES [dbo].[AccountGroups] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AccountGroupAccount] CHECK CONSTRAINT [FK_AccountGroupAccount_AccountGroups_AccountGroupId]
GO
ALTER TABLE [dbo].[AccountGroupAccount]  WITH CHECK ADD  CONSTRAINT [FK_AccountGroupAccount_Accounts_AccountId] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Accounts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AccountGroupAccount] CHECK CONSTRAINT [FK_AccountGroupAccount_Accounts_AccountId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Accounts_AccountId] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Accounts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Accounts_AccountId]
GO
