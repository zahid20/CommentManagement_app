USE [GridView_Exam]
GO
/****** Object:  Table [dbo].[tableComments]    Script Date: 10/17/2020 2:46:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tableComments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Post] [nvarchar](50) NULL,
	[Admin] [nvarchar](50) NULL,
	[Date] [date] NULL,
	[Like] [int] NULL,
	[Dislike] [int] NULL,
 CONSTRAINT [PK_tableComments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tableComments] ON 

INSERT [dbo].[tableComments] ([Id], [Post], [Admin], [Date], [Like], [Dislike]) VALUES (1, N'Comments 1', N'User1', CAST(N'2020-10-17' AS Date), 268, 128)
INSERT [dbo].[tableComments] ([Id], [Post], [Admin], [Date], [Like], [Dislike]) VALUES (2, N'Comments 2', N'User2', CAST(N'2020-10-17' AS Date), 268, 128)
INSERT [dbo].[tableComments] ([Id], [Post], [Admin], [Date], [Like], [Dislike]) VALUES (3, N'Comments 3', N'User3', CAST(N'2020-10-17' AS Date), 268, 128)
INSERT [dbo].[tableComments] ([Id], [Post], [Admin], [Date], [Like], [Dislike]) VALUES (4, N'Comments 4', N'User1', CAST(N'2020-10-17' AS Date), 268, 128)
INSERT [dbo].[tableComments] ([Id], [Post], [Admin], [Date], [Like], [Dislike]) VALUES (5, N'Comments 5', N'User2', CAST(N'2020-10-17' AS Date), 268, 128)
INSERT [dbo].[tableComments] ([Id], [Post], [Admin], [Date], [Like], [Dislike]) VALUES (6, N'Comments 6', N'User3', CAST(N'2020-10-17' AS Date), 268, 128)
INSERT [dbo].[tableComments] ([Id], [Post], [Admin], [Date], [Like], [Dislike]) VALUES (7, N'Comments 7', N'User3', CAST(N'2020-10-17' AS Date), 268, 128)
INSERT [dbo].[tableComments] ([Id], [Post], [Admin], [Date], [Like], [Dislike]) VALUES (8, N'Comments 8', N'User1', CAST(N'2020-10-17' AS Date), 268, 128)
INSERT [dbo].[tableComments] ([Id], [Post], [Admin], [Date], [Like], [Dislike]) VALUES (9, N'Comments 9', N'User1', CAST(N'2020-10-17' AS Date), 268, 128)
INSERT [dbo].[tableComments] ([Id], [Post], [Admin], [Date], [Like], [Dislike]) VALUES (10, N'Comments 10', N'User1', CAST(N'2020-10-17' AS Date), 268, 128)
INSERT [dbo].[tableComments] ([Id], [Post], [Admin], [Date], [Like], [Dislike]) VALUES (11, N'Comments11', N'User1', CAST(N'2020-10-17' AS Date), 268, 128)
INSERT [dbo].[tableComments] ([Id], [Post], [Admin], [Date], [Like], [Dislike]) VALUES (12, N'Comments12', N'User1', CAST(N'2020-10-17' AS Date), 268, 128)
INSERT [dbo].[tableComments] ([Id], [Post], [Admin], [Date], [Like], [Dislike]) VALUES (13, N'Comments13', N'User1', CAST(N'2020-10-17' AS Date), 268, 128)
INSERT [dbo].[tableComments] ([Id], [Post], [Admin], [Date], [Like], [Dislike]) VALUES (14, N'Comments14', N'User1', CAST(N'2020-10-17' AS Date), 268, 128)
SET IDENTITY_INSERT [dbo].[tableComments] OFF
GO
