USE [firm]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 10/2/2024 9:01:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_firm] [bigint] NULL,
	[id_user] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 10/2/2024 9:01:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[category] [nvarchar](255) NULL,
	[is_delete] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[check_out]    Script Date: 10/2/2024 9:01:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[check_out](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[date] [datetime2](6) NULL,
	[status] [int] NOT NULL,
	[id_cart] [bigint] NULL,
	[id_user] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[check_out_coins]    Script Date: 10/2/2024 9:01:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[check_out_coins](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[date] [datetime2](6) NULL,
	[money] [float] NOT NULL,
	[status] [bit] NOT NULL,
	[id_qr] [bigint] NOT NULL,
	[id_user] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[coins]    Script Date: 10/2/2024 9:01:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[coins](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[coins] [float] NOT NULL,
	[id_user] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 10/2/2024 9:01:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[comment] [varchar](255) NULL,
	[created_date] [datetime2](6) NULL,
	[id_firm] [bigint] NULL,
	[id_user] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[episode]    Script Date: 10/2/2024 9:01:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[episode](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[link_video] [varchar](255) NULL,
	[id_firm] [bigint] NULL,
	[status] [bit] NOT NULL,
	[name_episode] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[firm]    Script Date: 10/2/2024 9:01:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[firm](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[author_firm] [nvarchar](255) NULL,
	[coins_video] [float] NOT NULL,
	[firmdate] [datetime2](6) NOT NULL,
	[img_firm] [nvarchar](255) NULL,
	[link_video_traller] [nvarchar](255) NULL,
	[name_firm] [nvarchar](255) NULL,
	[status] [bit] NOT NULL,
	[total_episodes] [int] NOT NULL,
	[id_category] [bigint] NOT NULL,
	[link_video_trailer] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movie_firm]    Script Date: 10/2/2024 9:01:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movie_firm](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[view_number] [bigint] NOT NULL,
	[id_firm] [bigint] NULL,
	[id_user] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movie_video]    Script Date: 10/2/2024 9:01:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movie_video](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[status] [int] NOT NULL,
	[id_episode] [bigint] NULL,
	[id_user] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[qr_coins]    Script Date: 10/2/2024 9:01:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qr_coins](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[discount_percentage] [float] NOT NULL,
	[money] [float] NOT NULL,
	[status] [bit] NULL,
	[url_coins] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 10/2/2024 9:01:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_role]    Script Date: 10/2/2024 9:01:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_role](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_role] [bigint] NULL,
	[id_user] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 10/2/2024 9:01:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[accountwith] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[google_id] [varchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cart] ON 

INSERT [dbo].[cart] ([id], [id_firm], [id_user]) VALUES (1, 1, 7)
INSERT [dbo].[cart] ([id], [id_firm], [id_user]) VALUES (10002, 1, 8)
INSERT [dbo].[cart] ([id], [id_firm], [id_user]) VALUES (10003, 1, 8)
INSERT [dbo].[cart] ([id], [id_firm], [id_user]) VALUES (10004, 1, 7)
INSERT [dbo].[cart] ([id], [id_firm], [id_user]) VALUES (10005, 1, 7)
INSERT [dbo].[cart] ([id], [id_firm], [id_user]) VALUES (10006, 1, 7)
INSERT [dbo].[cart] ([id], [id_firm], [id_user]) VALUES (10007, 1, 7)
INSERT [dbo].[cart] ([id], [id_firm], [id_user]) VALUES (10008, 1, 7)
INSERT [dbo].[cart] ([id], [id_firm], [id_user]) VALUES (10009, 1, 7)
INSERT [dbo].[cart] ([id], [id_firm], [id_user]) VALUES (10010, 1, 7)
INSERT [dbo].[cart] ([id], [id_firm], [id_user]) VALUES (10011, 1, 7)
INSERT [dbo].[cart] ([id], [id_firm], [id_user]) VALUES (10012, 1, 7)
INSERT [dbo].[cart] ([id], [id_firm], [id_user]) VALUES (10013, 1, 7)
INSERT [dbo].[cart] ([id], [id_firm], [id_user]) VALUES (10014, 1, 7)
INSERT [dbo].[cart] ([id], [id_firm], [id_user]) VALUES (10015, 1, 7)
INSERT [dbo].[cart] ([id], [id_firm], [id_user]) VALUES (10016, 1, 7)
INSERT [dbo].[cart] ([id], [id_firm], [id_user]) VALUES (10017, 4, 7)
INSERT [dbo].[cart] ([id], [id_firm], [id_user]) VALUES (10018, 4, 46)
SET IDENTITY_INSERT [dbo].[cart] OFF
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([id], [category], [is_delete]) VALUES (1, N'Học đường', 1)
SET IDENTITY_INSERT [dbo].[category] OFF
GO
SET IDENTITY_INSERT [dbo].[check_out] ON 

INSERT [dbo].[check_out] ([id], [date], [status], [id_cart], [id_user]) VALUES (1, CAST(N'2024-09-29T20:31:00.0880000' AS DateTime2), 1, 1, 7)
INSERT [dbo].[check_out] ([id], [date], [status], [id_cart], [id_user]) VALUES (10002, CAST(N'2024-09-29T21:55:51.6920000' AS DateTime2), 1, 10002, 8)
INSERT [dbo].[check_out] ([id], [date], [status], [id_cart], [id_user]) VALUES (10003, CAST(N'2024-09-29T21:57:04.5200000' AS DateTime2), 1, 10003, 8)
INSERT [dbo].[check_out] ([id], [date], [status], [id_cart], [id_user]) VALUES (10004, CAST(N'2024-09-29T22:03:33.0170000' AS DateTime2), 1, 10004, 7)
INSERT [dbo].[check_out] ([id], [date], [status], [id_cart], [id_user]) VALUES (10005, CAST(N'2024-09-29T22:05:08.3910000' AS DateTime2), 1, 10005, 7)
INSERT [dbo].[check_out] ([id], [date], [status], [id_cart], [id_user]) VALUES (10006, CAST(N'2024-09-29T22:09:56.2480000' AS DateTime2), 1, 10006, 7)
INSERT [dbo].[check_out] ([id], [date], [status], [id_cart], [id_user]) VALUES (10007, CAST(N'2024-09-29T22:11:31.0190000' AS DateTime2), 1, 10007, 7)
INSERT [dbo].[check_out] ([id], [date], [status], [id_cart], [id_user]) VALUES (10008, CAST(N'2024-09-29T22:11:37.7850000' AS DateTime2), 1, 10008, 7)
INSERT [dbo].[check_out] ([id], [date], [status], [id_cart], [id_user]) VALUES (10009, CAST(N'2024-09-30T10:11:22.4870000' AS DateTime2), 1, 10009, 7)
INSERT [dbo].[check_out] ([id], [date], [status], [id_cart], [id_user]) VALUES (10010, CAST(N'2024-09-30T10:12:13.8070000' AS DateTime2), 1, 10010, 7)
INSERT [dbo].[check_out] ([id], [date], [status], [id_cart], [id_user]) VALUES (10011, CAST(N'2024-09-30T10:14:29.5080000' AS DateTime2), 1, 10011, 7)
INSERT [dbo].[check_out] ([id], [date], [status], [id_cart], [id_user]) VALUES (10012, CAST(N'2024-09-30T10:14:36.9870000' AS DateTime2), 1, 10012, 7)
INSERT [dbo].[check_out] ([id], [date], [status], [id_cart], [id_user]) VALUES (10013, CAST(N'2024-09-30T10:17:05.2630000' AS DateTime2), 1, 10013, 7)
INSERT [dbo].[check_out] ([id], [date], [status], [id_cart], [id_user]) VALUES (10014, CAST(N'2024-09-30T10:39:12.5990000' AS DateTime2), 1, 10014, 7)
INSERT [dbo].[check_out] ([id], [date], [status], [id_cart], [id_user]) VALUES (10015, CAST(N'2024-09-30T10:39:21.8390000' AS DateTime2), 1, 10015, 7)
INSERT [dbo].[check_out] ([id], [date], [status], [id_cart], [id_user]) VALUES (10016, CAST(N'2024-09-30T10:47:40.2330000' AS DateTime2), 1, 10016, 7)
INSERT [dbo].[check_out] ([id], [date], [status], [id_cart], [id_user]) VALUES (10017, CAST(N'2024-10-01T15:35:53.7470000' AS DateTime2), 1, 10017, 7)
INSERT [dbo].[check_out] ([id], [date], [status], [id_cart], [id_user]) VALUES (10018, CAST(N'2024-10-02T08:56:10.4440000' AS DateTime2), 1, 10018, 46)
SET IDENTITY_INSERT [dbo].[check_out] OFF
GO
SET IDENTITY_INSERT [dbo].[coins] ON 

INSERT [dbo].[coins] ([id], [coins], [id_user]) VALUES (1, 50, 2)
INSERT [dbo].[coins] ([id], [coins], [id_user]) VALUES (2, 50, 3)
INSERT [dbo].[coins] ([id], [coins], [id_user]) VALUES (3, 50, 4)
INSERT [dbo].[coins] ([id], [coins], [id_user]) VALUES (4, 50, 5)
INSERT [dbo].[coins] ([id], [coins], [id_user]) VALUES (5, 50, 6)
INSERT [dbo].[coins] ([id], [coins], [id_user]) VALUES (6, 5, 7)
INSERT [dbo].[coins] ([id], [coins], [id_user]) VALUES (7, 31, 8)
INSERT [dbo].[coins] ([id], [coins], [id_user]) VALUES (8, 50, 18)
INSERT [dbo].[coins] ([id], [coins], [id_user]) VALUES (9, 50, 41)
INSERT [dbo].[coins] ([id], [coins], [id_user]) VALUES (10, 50, 44)
INSERT [dbo].[coins] ([id], [coins], [id_user]) VALUES (11, 50, 45)
INSERT [dbo].[coins] ([id], [coins], [id_user]) VALUES (12, 47, 46)
SET IDENTITY_INSERT [dbo].[coins] OFF
GO
SET IDENTITY_INSERT [dbo].[comment] ON 

INSERT [dbo].[comment] ([id], [comment], [created_date], [id_firm], [id_user]) VALUES (1, N'hay', CAST(N'2024-09-30T21:48:47.9324250' AS DateTime2), 4, 7)
INSERT [dbo].[comment] ([id], [comment], [created_date], [id_firm], [id_user]) VALUES (2, N'hay
', CAST(N'2024-10-02T08:56:30.0732840' AS DateTime2), 4, 46)
SET IDENTITY_INSERT [dbo].[comment] OFF
GO
SET IDENTITY_INSERT [dbo].[episode] ON 

INSERT [dbo].[episode] ([id], [link_video], [id_firm], [status], [name_episode]) VALUES (1, N'T?p 3', 1, 0, N'Tập 1')
INSERT [dbo].[episode] ([id], [link_video], [id_firm], [status], [name_episode]) VALUES (2, N'1726994397260_Kung+Fu+Panda+2+-+Official+Trailer.mp4', 1, 1, N'Tập 2')
INSERT [dbo].[episode] ([id], [link_video], [id_firm], [status], [name_episode]) VALUES (10002, N'1727670111996_MUSHI+SHI++Anime+Trailer+1+-+AFENBO+OGPAF+-+HD1080-60+FPS-.mp4', 4, 1, N'Tập 1')
INSERT [dbo].[episode] ([id], [link_video], [id_firm], [status], [name_episode]) VALUES (10003, N'1727683985933_Kizumonogatari+Part+1-+Tekketsu+-+Trailer+for+U.S+release.mp4', 5, 1, N'Tập 1')
SET IDENTITY_INSERT [dbo].[episode] OFF
GO
SET IDENTITY_INSERT [dbo].[firm] ON 

INSERT [dbo].[firm] ([id], [author_firm], [coins_video], [firmdate], [img_firm], [link_video_traller], [name_firm], [status], [total_episodes], [id_category], [link_video_trailer]) VALUES (1, N'Kizumonogatari III: Reiket su-hen', 1, CAST(N'2024-09-11T16:56:00.0000000' AS DateTime2), N'1726886396578_panda1.jpg', N'1726886396585_Kung+Fu+Panda+3+-+Official+Trailer+%233.mp4', N'Kung Fu Panda', 1, 34, 1, NULL)
INSERT [dbo].[firm] ([id], [author_firm], [coins_video], [firmdate], [img_firm], [link_video_traller], [name_firm], [status], [total_episodes], [id_category], [link_video_trailer]) VALUES (4, N'MUSHI SHI ', 3, CAST(N'2024-10-01T11:06:00.0000000' AS DateTime2), N'1727669241646_review.jpg', N'1727669241653_Kizumonogatari+Part+1-+Tekketsu+-+Trailer+for+U.S+release.mp4', N'KIZUMONOGATARI', 1, 3, 1, NULL)
INSERT [dbo].[firm] ([id], [author_firm], [coins_video], [firmdate], [img_firm], [link_video_traller], [name_firm], [status], [total_episodes], [id_category], [link_video_trailer]) VALUES (5, N' KIZUMONOGATARI Part 3: REIKETSU - Official Trailer (In Cinemas 23 March 2017)', 2, CAST(N'2024-10-02T15:08:00.0000000' AS DateTime2), N'1727683847656_trend-1.jpg', N'1727683847662_MUSHI+SHI++Anime+Trailer+1+-+AFENBO+OGPAF+-+HD1080-60+FPS-.mp4', N'KIZUMONOGATARI', 1, 2, 1, NULL)
INSERT [dbo].[firm] ([id], [author_firm], [coins_video], [firmdate], [img_firm], [link_video_traller], [name_firm], [status], [total_episodes], [id_category], [link_video_trailer]) VALUES (6, N'John Stevenson và Mark Osborne', 2, CAST(N'2024-09-23T15:44:00.0000000' AS DateTime2), N'1727686028274_panda1.jpg', N'1727686028276_KIZUMONOGATARI+Part+3-+REIKETSU+-+Official+Trailer+%28In+Cinemas+23+March+2017%29.mp4', N'Kung Fu Pandayyy', 1, 2, 1, NULL)
SET IDENTITY_INSERT [dbo].[firm] OFF
GO
SET IDENTITY_INSERT [dbo].[movie_firm] ON 

INSERT [dbo].[movie_firm] ([id], [view_number], [id_firm], [id_user]) VALUES (1, 1, 1, 7)
INSERT [dbo].[movie_firm] ([id], [view_number], [id_firm], [id_user]) VALUES (2, 1, 1, 7)
INSERT [dbo].[movie_firm] ([id], [view_number], [id_firm], [id_user]) VALUES (10002, 1, 1, 8)
INSERT [dbo].[movie_firm] ([id], [view_number], [id_firm], [id_user]) VALUES (10003, 1, 1, 8)
INSERT [dbo].[movie_firm] ([id], [view_number], [id_firm], [id_user]) VALUES (10004, 1, 1, 7)
INSERT [dbo].[movie_firm] ([id], [view_number], [id_firm], [id_user]) VALUES (10005, 1, 1, 7)
INSERT [dbo].[movie_firm] ([id], [view_number], [id_firm], [id_user]) VALUES (10006, 1, 1, 7)
INSERT [dbo].[movie_firm] ([id], [view_number], [id_firm], [id_user]) VALUES (10007, 1, 1, 7)
INSERT [dbo].[movie_firm] ([id], [view_number], [id_firm], [id_user]) VALUES (10008, 1, 1, 7)
INSERT [dbo].[movie_firm] ([id], [view_number], [id_firm], [id_user]) VALUES (10009, 1, 1, 7)
INSERT [dbo].[movie_firm] ([id], [view_number], [id_firm], [id_user]) VALUES (10010, 1, 1, 7)
INSERT [dbo].[movie_firm] ([id], [view_number], [id_firm], [id_user]) VALUES (10011, 1, 1, 7)
INSERT [dbo].[movie_firm] ([id], [view_number], [id_firm], [id_user]) VALUES (10012, 1, 1, 7)
INSERT [dbo].[movie_firm] ([id], [view_number], [id_firm], [id_user]) VALUES (10013, 1, 1, 7)
INSERT [dbo].[movie_firm] ([id], [view_number], [id_firm], [id_user]) VALUES (10014, 1, 4, 7)
INSERT [dbo].[movie_firm] ([id], [view_number], [id_firm], [id_user]) VALUES (10015, 1, 4, 46)
SET IDENTITY_INSERT [dbo].[movie_firm] OFF
GO
SET IDENTITY_INSERT [dbo].[movie_video] ON 

INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (1, 1, 1, 2)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (2, 1, 1, 3)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (3, 0, 1, 4)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (4, 0, 1, 5)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (5, 0, 1, 6)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (6, 1, 1, 7)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (7, 1, 1, 8)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (8, 0, 2, 2)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (9, 0, 2, 3)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10, 0, 2, 4)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (11, 0, 2, 5)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (12, 0, 2, 6)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (13, 1, 2, 7)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (14, 0, 2, 8)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10002, 0, 10002, 2)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10003, 0, 10002, 3)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10004, 0, 10002, 4)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10005, 0, 10002, 5)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10006, 0, 10002, 6)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10007, 1, 10002, 7)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10008, 0, 10002, 8)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10009, 0, 10003, 2)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10010, 0, 10003, 3)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10011, 0, 10003, 4)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10012, 0, 10003, 5)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10013, 0, 10003, 6)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10014, 0, 10003, 7)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10015, 0, 10003, 8)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10016, 0, 1, 18)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10017, 0, 2, 18)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10018, 0, 10002, 18)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10019, 0, 10003, 18)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10020, 0, 1, 41)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10021, 0, 2, 41)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10022, 0, 10002, 41)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10023, 0, 10003, 41)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10024, 0, 1, 44)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10025, 0, 2, 44)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10026, 0, 10002, 44)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10027, 0, 10003, 44)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10028, 0, 1, 45)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10029, 0, 2, 45)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10030, 0, 10002, 45)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10031, 0, 10003, 45)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10032, 0, 1, 46)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10033, 0, 2, 46)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10034, 1, 10002, 46)
INSERT [dbo].[movie_video] ([id], [status], [id_episode], [id_user]) VALUES (10035, 0, 10003, 46)
SET IDENTITY_INSERT [dbo].[movie_video] OFF
GO
SET IDENTITY_INSERT [dbo].[role] ON 

INSERT [dbo].[role] ([id], [name]) VALUES (1, N'User_Role')
INSERT [dbo].[role] ([id], [name]) VALUES (2, N'Admin_Role')
INSERT [dbo].[role] ([id], [name]) VALUES (3, N'Admintrator_Role')
SET IDENTITY_INSERT [dbo].[role] OFF
GO
SET IDENTITY_INSERT [dbo].[user_role] ON 

INSERT [dbo].[user_role] ([id], [id_role], [id_user]) VALUES (1, 1, 4)
INSERT [dbo].[user_role] ([id], [id_role], [id_user]) VALUES (2, 1, 5)
INSERT [dbo].[user_role] ([id], [id_role], [id_user]) VALUES (3, 1, 6)
INSERT [dbo].[user_role] ([id], [id_role], [id_user]) VALUES (4, 1, 7)
INSERT [dbo].[user_role] ([id], [id_role], [id_user]) VALUES (5, 1, 8)
INSERT [dbo].[user_role] ([id], [id_role], [id_user]) VALUES (6, 2, 18)
INSERT [dbo].[user_role] ([id], [id_role], [id_user]) VALUES (7, 2, 41)
INSERT [dbo].[user_role] ([id], [id_role], [id_user]) VALUES (8, 2, 44)
INSERT [dbo].[user_role] ([id], [id_role], [id_user]) VALUES (9, 2, 45)
INSERT [dbo].[user_role] ([id], [id_role], [id_user]) VALUES (10, 3, 46)
SET IDENTITY_INSERT [dbo].[user_role] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [accountwith], [email], [google_id], [name], [password]) VALUES (2, N'GOOGLE', N'43', N'242', N'Duythuan Huynh', NULL)
INSERT [dbo].[users] ([id], [accountwith], [email], [google_id], [name], [password]) VALUES (3, N'GOOGLE', N'454', N'454', N'454', NULL)
INSERT [dbo].[users] ([id], [accountwith], [email], [google_id], [name], [password]) VALUES (4, N'GOOGLE', N'3', N'2', N'Huỳnh Các Duy Thuần', NULL)
INSERT [dbo].[users] ([id], [accountwith], [email], [google_id], [name], [password]) VALUES (5, N'GOOGLE', N'4', N'4444', N'Huỳnh Các Duy Thuần', NULL)
INSERT [dbo].[users] ([id], [accountwith], [email], [google_id], [name], [password]) VALUES (6, N'GOOGLE', N'4', N'2444', N'Duythuan Huynh', NULL)
INSERT [dbo].[users] ([id], [accountwith], [email], [google_id], [name], [password]) VALUES (7, N'GOOGLE', N'huynhduythuan668@gmail.com', N'105240375290208597958', N'Duythuan Huynh', NULL)
INSERT [dbo].[users] ([id], [accountwith], [email], [google_id], [name], [password]) VALUES (8, N'GOOGLE', N'20130423@st.hcmuaf.edu.vn', N'110102554677224787225', N'Huỳnh Các Duy Thuần', NULL)
INSERT [dbo].[users] ([id], [accountwith], [email], [google_id], [name], [password]) VALUES (18, N'LOCAL', N'admin@gmail.com', N'wrw', N'Huỳnh Các Duy Thuần', N'123456')
INSERT [dbo].[users] ([id], [accountwith], [email], [google_id], [name], [password]) VALUES (41, N'LOCAL', N'admiwrwn@gmail.com', NULL, N'Huỳnh Các Duy Thuần', N'erwrw')
INSERT [dbo].[users] ([id], [accountwith], [email], [google_id], [name], [password]) VALUES (44, N'LOCAL', N'huynhduythuan6468@gmail.com', NULL, N'Huy', N'1234')
INSERT [dbo].[users] ([id], [accountwith], [email], [google_id], [name], [password]) VALUES (45, N'LOCAL', N'catc68823324@gmail.com', NULL, N'Huy', N'1234')
INSERT [dbo].[users] ([id], [accountwith], [email], [google_id], [name], [password]) VALUES (46, N'LOCAL', N'longnnt750@gmail.com', NULL, N'Long trần', N'1234')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK34tbrg9ln60e57p6h3p7n3ttp] FOREIGN KEY([id_firm])
REFERENCES [dbo].[firm] ([id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK34tbrg9ln60e57p6h3p7n3ttp]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FKk0lcwd6e5q8ldue7je6efhdot] FOREIGN KEY([id_user])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FKk0lcwd6e5q8ldue7je6efhdot]
GO
ALTER TABLE [dbo].[check_out]  WITH CHECK ADD  CONSTRAINT [FK712fxrsevm0re7cox5u1ajc1n] FOREIGN KEY([id_user])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[check_out] CHECK CONSTRAINT [FK712fxrsevm0re7cox5u1ajc1n]
GO
ALTER TABLE [dbo].[check_out]  WITH CHECK ADD  CONSTRAINT [FKrsmr2n0kkf1914fnhm1ou68db] FOREIGN KEY([id_cart])
REFERENCES [dbo].[cart] ([id])
GO
ALTER TABLE [dbo].[check_out] CHECK CONSTRAINT [FKrsmr2n0kkf1914fnhm1ou68db]
GO
ALTER TABLE [dbo].[check_out_coins]  WITH CHECK ADD  CONSTRAINT [FK5mc8j9sp3qs2pb021qs00gwmj] FOREIGN KEY([id_qr])
REFERENCES [dbo].[qr_coins] ([id])
GO
ALTER TABLE [dbo].[check_out_coins] CHECK CONSTRAINT [FK5mc8j9sp3qs2pb021qs00gwmj]
GO
ALTER TABLE [dbo].[check_out_coins]  WITH CHECK ADD  CONSTRAINT [FKp9ulnd7gqgcdcd0u7qnoektjv] FOREIGN KEY([id_user])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[check_out_coins] CHECK CONSTRAINT [FKp9ulnd7gqgcdcd0u7qnoektjv]
GO
ALTER TABLE [dbo].[coins]  WITH CHECK ADD  CONSTRAINT [FKlbiidmu8gwfiaicp9akewho26] FOREIGN KEY([id_user])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[coins] CHECK CONSTRAINT [FKlbiidmu8gwfiaicp9akewho26]
GO
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK8w6hnv7snuvxlaxd3uf16xmla] FOREIGN KEY([id_firm])
REFERENCES [dbo].[firm] ([id])
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK8w6hnv7snuvxlaxd3uf16xmla]
GO
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FKiuf9gwufew9y31h0rql66f9w9] FOREIGN KEY([id_user])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FKiuf9gwufew9y31h0rql66f9w9]
GO
ALTER TABLE [dbo].[episode]  WITH CHECK ADD  CONSTRAINT [FK1o14viyx5lj5fw8hk7pudhe9i] FOREIGN KEY([id_firm])
REFERENCES [dbo].[firm] ([id])
GO
ALTER TABLE [dbo].[episode] CHECK CONSTRAINT [FK1o14viyx5lj5fw8hk7pudhe9i]
GO
ALTER TABLE [dbo].[firm]  WITH CHECK ADD  CONSTRAINT [FKlfj7ffbp0ca6nq28cef82l1bj] FOREIGN KEY([id_category])
REFERENCES [dbo].[category] ([id])
GO
ALTER TABLE [dbo].[firm] CHECK CONSTRAINT [FKlfj7ffbp0ca6nq28cef82l1bj]
GO
ALTER TABLE [dbo].[movie_firm]  WITH CHECK ADD  CONSTRAINT [FKb14b30c6icjmassyh0lw7qrf0] FOREIGN KEY([id_user])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[movie_firm] CHECK CONSTRAINT [FKb14b30c6icjmassyh0lw7qrf0]
GO
ALTER TABLE [dbo].[movie_firm]  WITH CHECK ADD  CONSTRAINT [FKod6vrtf301a43jn148o3idb9h] FOREIGN KEY([id_firm])
REFERENCES [dbo].[firm] ([id])
GO
ALTER TABLE [dbo].[movie_firm] CHECK CONSTRAINT [FKod6vrtf301a43jn148o3idb9h]
GO
ALTER TABLE [dbo].[movie_video]  WITH CHECK ADD  CONSTRAINT [FKdfg82lts63myisrnqdb1lj3c] FOREIGN KEY([id_episode])
REFERENCES [dbo].[episode] ([id])
GO
ALTER TABLE [dbo].[movie_video] CHECK CONSTRAINT [FKdfg82lts63myisrnqdb1lj3c]
GO
ALTER TABLE [dbo].[movie_video]  WITH CHECK ADD  CONSTRAINT [FKpnukqfcsyicbi2ev30eoy26k] FOREIGN KEY([id_user])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[movie_video] CHECK CONSTRAINT [FKpnukqfcsyicbi2ev30eoy26k]
GO
ALTER TABLE [dbo].[user_role]  WITH CHECK ADD  CONSTRAINT [FK2aam9nt2tv8vcfymi3jo9c314] FOREIGN KEY([id_role])
REFERENCES [dbo].[role] ([id])
GO
ALTER TABLE [dbo].[user_role] CHECK CONSTRAINT [FK2aam9nt2tv8vcfymi3jo9c314]
GO
ALTER TABLE [dbo].[user_role]  WITH CHECK ADD  CONSTRAINT [FKr53t650tbjk5yipcm228wf1nc] FOREIGN KEY([id_user])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[user_role] CHECK CONSTRAINT [FKr53t650tbjk5yipcm228wf1nc]
GO
ALTER TABLE [dbo].[firm]  WITH CHECK ADD CHECK  (([total_episodes]>=(1)))
GO
ALTER TABLE [dbo].[qr_coins]  WITH CHECK ADD CHECK  (([discount_percentage]>=(0)))
GO
ALTER TABLE [dbo].[qr_coins]  WITH CHECK ADD CHECK  (([money]>=(0)))
GO
