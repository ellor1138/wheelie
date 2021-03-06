USE [remotetest]
GO
/****** Object:  Table [dbo].[videos_categories]    Script Date: 01/13/2014 15:52:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[videos_categories](
	[videocategoryid] [int] NOT NULL,
	[videoid] [int] NOT NULL,
	[createdAt] [datetime] NULL,
	[createdBy] [int] NULL,
	[updatedAt] [datetime] NULL,
	[updatedBy] [int] NULL,
 CONSTRAINT [PK_videos_categories] PRIMARY KEY CLUSTERED 
(
	[videocategoryid] ASC,
	[videoid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[videos_categories] ([videocategoryid], [videoid], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (25, 56, CAST(0x0000A2A800D89F78 AS DateTime), 1, CAST(0x0000A2A800D89F78 AS DateTime), 1)
INSERT [dbo].[videos_categories] ([videocategoryid], [videoid], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (25, 64, CAST(0x0000A2A700FE5560 AS DateTime), 1, CAST(0x0000A2A700FE5560 AS DateTime), 1)
INSERT [dbo].[videos_categories] ([videocategoryid], [videoid], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (25, 67, CAST(0x0000A2A700FEDE7C AS DateTime), 1, CAST(0x0000A2A700FEDE7C AS DateTime), 1)
INSERT [dbo].[videos_categories] ([videocategoryid], [videoid], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (51, 1, CAST(0x0000A2B200F28FA7 AS DateTime), 31, CAST(0x0000A2B200F28FA7 AS DateTime), 31)
/****** Object:  Table [dbo].[videos]    Script Date: 01/13/2014 15:52:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[videos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[urlid] [varchar](250) NOT NULL,
	[name] [varchar](250) NOT NULL,
	[teaser] [varchar](5000) NOT NULL,
	[description] [varchar](5000) NOT NULL,
	[videoSubHeader] [varchar](5000) NULL,
	[videoLink] [varchar](250) NULL,
	[hideFromB2B] [varchar](250) NULL,
	[isFeatured] [int] NULL,
	[sortBy] [int] NULL,
	[typeId] [varchar](250) NULL,
	[status] [varchar](50) NULL,
	[videofileid] [int] NOT NULL,
	[siteid] [int] NULL,
	[createdat] [datetime] NULL,
	[createdby] [int] NULL,
	[updatedat] [datetime] NULL,
	[updatedby] [int] NULL,
	[deletedat] [datetime] NULL,
	[deletedby] [int] NULL,
 CONSTRAINT [PK_videos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[videos] ON
INSERT [dbo].[videos] ([id], [urlid], [name], [teaser], [description], [videoSubHeader], [videoLink], [hideFromB2B], [isFeatured], [sortBy], [typeId], [status], [videofileid], [siteid], [createdat], [createdby], [updatedat], [updatedby], [deletedat], [deletedby]) VALUES (1, N'asdf', N'asdf', N'sadfasd', N'asdffdsa', NULL, NULL, NULL, 1, NULL, NULL, N'published', 1, 1, CAST(0x0000A2B200F28F7D AS DateTime), 31, CAST(0x0000A2B200F28F7D AS DateTime), 31, NULL, NULL)
SET IDENTITY_INSERT [dbo].[videos] OFF
/****** Object:  Table [dbo].[users_categories]    Script Date: 01/13/2014 15:52:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_categories](
	[categoryid] [int] NOT NULL,
	[userid] [int] NOT NULL,
	[createdAt] [datetime] NULL,
	[createdBy] [int] NULL,
	[updatedAt] [datetime] NULL,
	[updatedBy] [int] NULL,
 CONSTRAINT [PK_users_categories] PRIMARY KEY CLUSTERED 
(
	[categoryid] ASC,
	[userid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[users_categories] ([categoryid], [userid], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (44, 1, CAST(0x0000A2AF00C41094 AS DateTime), 1, CAST(0x0000A2AF00C41094 AS DateTime), 1)
INSERT [dbo].[users_categories] ([categoryid], [userid], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (45, 1, CAST(0x0000A2AF00C411C0 AS DateTime), 1, CAST(0x0000A2AF00C411C0 AS DateTime), 1)
INSERT [dbo].[users_categories] ([categoryid], [userid], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (48, 31, CAST(0x0000A2B200F05879 AS DateTime), 31, CAST(0x0000A2B200F05879 AS DateTime), 31)
INSERT [dbo].[users_categories] ([categoryid], [userid], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (49, 31, CAST(0x0000A2B200F05887 AS DateTime), 31, CAST(0x0000A2B200F05887 AS DateTime), 31)
INSERT [dbo].[users_categories] ([categoryid], [userid], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (50, 31, CAST(0x0000A2B200F0586A AS DateTime), 31, CAST(0x0000A2B200F0586A AS DateTime), 31)
/****** Object:  Table [dbo].[users]    Script Date: 01/13/2014 15:52:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [varchar](250) NULL,
	[lastname] [varchar](250) NULL,
	[spouse_firstname] [varchar](250) NULL,
	[title] [varchar](250) NULL,
	[email] [varchar](150) NULL,
	[phone] [varchar](250) NULL,
	[password] [varchar](70) NULL,
	[about] [varchar](5000) NULL,
	[address1] [varchar](250) NULL,
	[address2] [varchar](250) NULL,
	[city] [varchar](250) NULL,
	[state] [varchar](250) NULL,
	[zip] [int] NULL,
	[country] [varchar](250) NULL,
	[role] [varchar](250) NULL,
	[portrait] [varchar](550) NULL,
	[status] [varchar](250) NULL,
	[siteid] [int] NULL,
	[createdat] [datetime] NULL,
	[createdby] [int] NULL,
	[updatedat] [datetime] NULL,
	[updatedby] [int] NULL,
	[deletedat] [datetime] NULL,
	[deletedby] [int] NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON
INSERT [dbo].[users] ([id], [firstname], [lastname], [spouse_firstname], [title], [email], [phone], [password], [about], [address1], [address2], [city], [state], [zip], [country], [role], [portrait], [status], [siteid], [createdat], [createdby], [updatedat], [updatedby], [deletedat], [deletedby]) VALUES (1, N'Get', N'Wheelie', N'', N'', N'admin@getwheelie.com', N'', N'FE7874168A1593052982406379EDCAB0', N'', N'', N'', N'', N'AL', 0, N'AF', N'admin', N'/assets/uploads/placeit (1).png', N'published', 0, CAST(0x0000A296010BB214 AS DateTime), 1, CAST(0x0000A2AF00C41094 AS DateTime), 1, CAST(0x0000000000000000 AS DateTime), 0)
INSERT [dbo].[users] ([id], [firstname], [lastname], [spouse_firstname], [title], [email], [phone], [password], [about], [address1], [address2], [city], [state], [zip], [country], [role], [portrait], [status], [siteid], [createdat], [createdby], [updatedat], [updatedby], [deletedat], [deletedby]) VALUES (26, N'Chuck', N'Norris', N'', N'', N'norris@chuck.com', N'', N'FE7874168A1593052982406379EDCAB0', N'', N'', N'', N'', N'AL', 0, N'AF', N'admin', N'/assets/uploads/placeit (1)_1.png', N'published', 0, CAST(0x0000A2AD00D9A01C AS DateTime), 0, CAST(0x0000A2AD00D9E2E8 AS DateTime), 26, CAST(0x0000000000000000 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[users] OFF
/****** Object:  Table [dbo].[sites]    Script Date: 01/13/2014 15:52:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sites](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](250) NULL,
	[urlid] [varchar](250) NULL,
 CONSTRAINT [PK_sites] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[sites] ON
INSERT [dbo].[sites] ([id], [name], [urlid]) VALUES (1, N'Multisite', N'Coming later')
SET IDENTITY_INSERT [dbo].[sites] OFF
/****** Object:  Table [dbo].[posts]    Script Date: 01/13/2014 15:52:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[posts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[postType] [varchar](255) NULL,
	[urlid] [varchar](150) NULL,
	[name] [varchar](150) NULL,
	[content] [varchar](7000) NULL,
	[metagenerated] [int] NULL,
	[metatitle] [varchar](500) NULL,
	[metadescription] [varchar](500) NULL,
	[metakeywords] [varchar](500) NULL,
	[status] [varchar](255) NULL,
	[siteid] [int] NULL,
	[createdat] [datetime] NULL,
	[createdby] [int] NULL,
	[updatedat] [datetime] NULL,
	[updatedby] [int] NULL,
	[deletedat] [datetime] NULL,
	[deletedby] [int] NULL,
 CONSTRAINT [PK_posts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[posts] ON
INSERT [dbo].[posts] ([id], [postType], [urlid], [name], [content], [metagenerated], [metatitle], [metadescription], [metakeywords], [status], [siteid], [createdat], [createdby], [updatedat], [updatedby], [deletedat], [deletedby]) VALUES (1, N'page', N'home', N'Home', N'homepage', 1, N'Home', N'homepage', N'homepage', N'published', NULL, CAST(0x0000A2B200F0CA6F AS DateTime), 31, CAST(0x0000A2B200F0CA6F AS DateTime), 31, NULL, NULL)
SET IDENTITY_INSERT [dbo].[posts] OFF
/****** Object:  Table [dbo].[permissions]    Script Date: 01/13/2014 15:52:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[permissions](
	[id] [varchar](500) NOT NULL,
	[admin] [tinyint] NULL,
	[editor] [tinyint] NULL,
	[author] [tinyint] NULL,
	[user] [tinyint] NULL,
	[guest] [tinyint] NULL,
 CONSTRAINT [PK_permissions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'category_delete', 1, 1, 1, 0, 0)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'category_delete_others', 1, 1, 0, 0, 0)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'category_read', 1, 1, 1, 1, 1)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'category_read_others', 1, 1, 0, 0, 1)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'category_save', 1, 1, 1, 0, 0)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'category_save_others', 1, 1, 0, 0, 0)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'log_read_others', 1, 1, 0, 0, 0)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'option_delete', 1, 1, 0, 0, 0)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'option_delete_others', 1, 1, 0, 0, 0)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'option_read', 1, 1, 1, 1, 1)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'option_read_others', 1, 1, 1, 1, 1)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'option_save', 1, 1, 0, 0, 0)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'option_save_others', 1, 1, 0, 0, 0)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'page_delete', 1, 1, 1, 0, 0)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'page_delete_others', 1, 1, 0, 0, 0)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'page_read', 1, 1, 1, 1, 1)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'page_read_others', 1, 1, 0, 0, 1)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'page_save', 1, 1, 1, 0, 0)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'page_save_others', 1, 1, 0, 0, 0)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'user_delete', 1, 1, 1, 1, 0)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'user_delete_others', 1, 0, 0, 0, 0)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'user_read', 1, 1, 1, 1, 1)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'user_read_others', 1, 1, 0, 0, 1)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'user_save', 1, 1, 1, 1, 1)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'user_save_others', 1, 0, 0, 0, 0)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'user_save_role', 1, 1, 0, 0, 0)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'user_save_role_admin', 1, 0, 0, 0, 0)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'video_delete', 1, 1, 1, 0, 0)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'video_delete_others', 1, 1, 0, 0, 0)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'video_read', 1, 1, 1, 0, 1)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'video_read_others', 1, 1, 0, 0, 1)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'video_save', 1, 1, 1, 0, 0)
INSERT [dbo].[permissions] ([id], [admin], [editor], [author], [user], [guest]) VALUES (N'video_save_others', 1, 1, 0, 0, 0)
/****** Object:  Table [dbo].[options]    Script Date: 01/13/2014 15:52:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[options](
	[id] [varchar](500) NOT NULL,
	[label] [varchar](500) NULL,
	[content] [varchar](5000) NULL,
	[attachment] [varchar](500) NULL,
	[inputlabel] [varchar](500) NULL,
	[inputtype] [varchar](50) NULL,
	[editContent] [int] NULL,
	[editLabel] [int] NULL,
	[editAttachment] [int] NULL,
	[siteid] [int] NULL,
	[createdat] [datetime] NULL,
	[createdby] [int] NULL,
	[updatedat] [datetime] NULL,
	[updatedby] [int] NULL,
	[deletedat] [datetime] NULL,
	[deletedby] [int] NULL,
 CONSTRAINT [PK_options] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[options] ([id], [label], [content], [attachment], [inputlabel], [inputtype], [editContent], [editLabel], [editAttachment], [siteid], [createdat], [createdby], [updatedat], [updatedby], [deletedat], [deletedby]) VALUES (N'home_feature_1', N'Sweet Phone', NULL, NULL, N'Link URL', N'text', 1, 1, 1, NULL, NULL, NULL, CAST(0x0000A2B200F0CA28 AS DateTime), 31, NULL, NULL)
INSERT [dbo].[options] ([id], [label], [content], [attachment], [inputlabel], [inputtype], [editContent], [editLabel], [editAttachment], [siteid], [createdat], [createdby], [updatedat], [updatedby], [deletedat], [deletedby]) VALUES (N'home_feature_2', N'Cat', NULL, NULL, N'Link URL', N'text', 1, 1, 1, NULL, NULL, NULL, CAST(0x0000A2B200F0CA11 AS DateTime), 31, NULL, NULL)
INSERT [dbo].[options] ([id], [label], [content], [attachment], [inputlabel], [inputtype], [editContent], [editLabel], [editAttachment], [siteid], [createdat], [createdby], [updatedat], [updatedby], [deletedat], [deletedby]) VALUES (N'home_feature_3', N'Waves', NULL, NULL, N'Link URL', N'text', 1, 1, 1, NULL, NULL, NULL, CAST(0x0000A2B200F0C9FE AS DateTime), 31, NULL, NULL)
INSERT [dbo].[options] ([id], [label], [content], [attachment], [inputlabel], [inputtype], [editContent], [editLabel], [editAttachment], [siteid], [createdat], [createdby], [updatedat], [updatedby], [deletedat], [deletedby]) VALUES (N'home_id', NULL, N'1', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, CAST(0x0000A2B200F0CA81 AS DateTime), 31, NULL, NULL)
INSERT [dbo].[options] ([id], [label], [content], [attachment], [inputlabel], [inputtype], [editContent], [editLabel], [editAttachment], [siteid], [createdat], [createdby], [updatedat], [updatedby], [deletedat], [deletedby]) VALUES (N'home_info_left', NULL, NULL, NULL, N'Content', N'textarea', 1, 1, 0, NULL, NULL, NULL, CAST(0x0000A2B200F0CA4E AS DateTime), 31, NULL, NULL)
INSERT [dbo].[options] ([id], [label], [content], [attachment], [inputlabel], [inputtype], [editContent], [editLabel], [editAttachment], [siteid], [createdat], [createdby], [updatedat], [updatedby], [deletedat], [deletedby]) VALUES (N'home_info_right', NULL, NULL, NULL, N'Content', N'textarea', 1, 1, 0, NULL, NULL, NULL, CAST(0x0000A2B200F0CA3B AS DateTime), 31, NULL, NULL)
INSERT [dbo].[options] ([id], [label], [content], [attachment], [inputlabel], [inputtype], [editContent], [editLabel], [editAttachment], [siteid], [createdat], [createdby], [updatedat], [updatedby], [deletedat], [deletedby]) VALUES (N'home_slide_1', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, CAST(0x0000A2B200F0C9E2 AS DateTime), 31, NULL, NULL)
INSERT [dbo].[options] ([id], [label], [content], [attachment], [inputlabel], [inputtype], [editContent], [editLabel], [editAttachment], [siteid], [createdat], [createdby], [updatedat], [updatedby], [deletedat], [deletedby]) VALUES (N'home_spotlight_button', NULL, NULL, NULL, N'Link URL', N'text', 1, 1, 0, NULL, NULL, NULL, CAST(0x0000A2B200F0C9AA AS DateTime), 31, NULL, NULL)
INSERT [dbo].[options] ([id], [label], [content], [attachment], [inputlabel], [inputtype], [editContent], [editLabel], [editAttachment], [siteid], [createdat], [createdby], [updatedat], [updatedby], [deletedat], [deletedby]) VALUES (N'home_spotlight_title', NULL, NULL, NULL, N'Sub Label', N'text', 1, 1, 0, NULL, NULL, NULL, CAST(0x0000A2B200F0C9C1 AS DateTime), 31, NULL, NULL)
INSERT [dbo].[options] ([id], [label], [content], [attachment], [inputlabel], [inputtype], [editContent], [editLabel], [editAttachment], [siteid], [createdat], [createdby], [updatedat], [updatedby], [deletedat], [deletedby]) VALUES (N'home_welcome_title', NULL, NULL, NULL, N'Welcome title', N'text', 0, 1, 0, NULL, NULL, NULL, CAST(0x0000A2B200F0C9CF AS DateTime), 31, NULL, NULL)
INSERT [dbo].[options] ([id], [label], [content], [attachment], [inputlabel], [inputtype], [editContent], [editLabel], [editAttachment], [siteid], [createdat], [createdby], [updatedat], [updatedby], [deletedat], [deletedby]) VALUES (N'menu_ids', NULL, NULL, NULL, N'Menu Ids (comma seperated)', N'text', 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[options] ([id], [label], [content], [attachment], [inputlabel], [inputtype], [editContent], [editLabel], [editAttachment], [siteid], [createdat], [createdby], [updatedat], [updatedby], [deletedat], [deletedby]) VALUES (N'secondary_page_background', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[options] ([id], [label], [content], [attachment], [inputlabel], [inputtype], [editContent], [editLabel], [editAttachment], [siteid], [createdat], [createdby], [updatedat], [updatedby], [deletedat], [deletedby]) VALUES (N'seo_description', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[options] ([id], [label], [content], [attachment], [inputlabel], [inputtype], [editContent], [editLabel], [editAttachment], [siteid], [createdat], [createdby], [updatedat], [updatedby], [deletedat], [deletedby]) VALUES (N'seo_keywords', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[options] ([id], [label], [content], [attachment], [inputlabel], [inputtype], [editContent], [editLabel], [editAttachment], [siteid], [createdat], [createdby], [updatedat], [updatedby], [deletedat], [deletedby]) VALUES (N'seo_title', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[options] ([id], [label], [content], [attachment], [inputlabel], [inputtype], [editContent], [editLabel], [editAttachment], [siteid], [createdat], [createdby], [updatedat], [updatedby], [deletedat], [deletedby]) VALUES (N'site_name_and_logo', NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[menuitems]    Script Date: 01/13/2014 15:52:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[menuitems](
	[id] [int] NOT NULL,
	[name] [varchar](500) NULL,
	[urlPath] [varchar](5000) NULL,
	[menuid] [varchar](500) NOT NULL,
	[parentid] [int] NULL,
	[sortOrder] [varchar](50) NULL,
	[siteid] [int] NULL,
	[createdat] [datetime] NULL,
	[createdby] [int] NULL,
	[updatedat] [datetime] NULL,
	[updatedby] [int] NULL,
 CONSTRAINT [PK_menuitems] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[menuid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[menuitems] ([id], [name], [urlPath], [menuid], [parentid], [sortOrder], [siteid], [createdat], [createdby], [updatedat], [updatedby]) VALUES (1, N'dsaf', N'/p/dfsadfsdfsaadfsa', N'Footer', 0, N'1', 0, CAST(0x0000A2A700AB8880 AS DateTime), 0, CAST(0x0000A2A700AB8880 AS DateTime), 0)
INSERT [dbo].[menuitems] ([id], [name], [urlPath], [menuid], [parentid], [sortOrder], [siteid], [createdat], [createdby], [updatedat], [updatedby]) VALUES (1, N'Test', N'/p/home', N'primary', 0, N'1', NULL, CAST(0x0000A2B200F12FA3 AS DateTime), NULL, CAST(0x0000A2B200F12FA3 AS DateTime), NULL)
INSERT [dbo].[menuitems] ([id], [name], [urlPath], [menuid], [parentid], [sortOrder], [siteid], [createdat], [createdby], [updatedat], [updatedby]) VALUES (1, N'Design', N'/p/design', N'secondary', 0, N'1', 0, CAST(0x0000A2AF00A4F22C AS DateTime), 0, CAST(0x0000A2AF00A4F22C AS DateTime), 0)
INSERT [dbo].[menuitems] ([id], [name], [urlPath], [menuid], [parentid], [sortOrder], [siteid], [createdat], [createdby], [updatedat], [updatedby]) VALUES (2, N'Models', N'/video/c/Models', N'Footer', 1, N'2', 0, CAST(0x0000A2A700AB8880 AS DateTime), 0, CAST(0x0000A2A700AB8880 AS DateTime), 0)
INSERT [dbo].[menuitems] ([id], [name], [urlPath], [menuid], [parentid], [sortOrder], [siteid], [createdat], [createdby], [updatedat], [updatedby]) VALUES (2, N'Consulting', N'/p/consulting', N'secondary', 0, N'2', 0, CAST(0x0000A2AF00A4F22C AS DateTime), 0, CAST(0x0000A2AF00A4F22C AS DateTime), 0)
INSERT [dbo].[menuitems] ([id], [name], [urlPath], [menuid], [parentid], [sortOrder], [siteid], [createdat], [createdby], [updatedat], [updatedby]) VALUES (3, N'Training', N'/p/training', N'secondary', 0, N'3', 0, CAST(0x0000A2AF00A4F22C AS DateTime), 0, CAST(0x0000A2AF00A4F22C AS DateTime), 0)
INSERT [dbo].[menuitems] ([id], [name], [urlPath], [menuid], [parentid], [sortOrder], [siteid], [createdat], [createdby], [updatedat], [updatedby]) VALUES (4, N'Contact', N'/p/contact', N'secondary', 0, N'4', 0, CAST(0x0000A2AF00A4F22C AS DateTime), 0, CAST(0x0000A2AF00A4F22C AS DateTime), 0)
/****** Object:  Table [dbo].[logs]    Script Date: 01/13/2014 15:52:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[logs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NULL,
	[modelid] [varchar](500) NULL,
	[savetype] [varchar](250) NULL,
	[model] [varchar](250) NULL,
	[controller] [varchar](250) NULL,
	[action] [varchar](250) NULL,
	[siteid] [int] NULL,
	[createdat] [datetime] NULL,
 CONSTRAINT [PK_logs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[logs] ON
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1672, 1, N'1', N'Update', N'User', N'Users', N'save', 0, CAST(0x0000A2AF00C41094 AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1673, 1, N'', N'Create', N'UserTagJoin', N'Users', N'save', 0, CAST(0x0000A2AF00C41094 AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1674, 1, N'', N'Create', N'UserTagJoin', N'Users', N'save', 0, CAST(0x0000A2AF00C41094 AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1675, NULL, N'29', N'Create', N'User', N'Users', N'registerPost', NULL, CAST(0x0000A2B200DFE468 AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1676, NULL, N'30', N'Create', N'User', N'Users', N'registerPost', NULL, CAST(0x0000A2B200E02E3C AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1677, NULL, N'31', N'Create', N'User', N'Users', N'registerPost', NULL, CAST(0x0000A2B200E0E05C AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1678, 31, N'48', N'Create', N'UserTag', N'Categories', N'save', NULL, CAST(0x0000A2B200E9DDEC AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1679, 31, N'48', N'Update', N'UserTag', N'Categories', N'save', NULL, CAST(0x0000A2B200E9E4F4 AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1680, 31, N'49', N'Create', N'UserTag', N'Categories', N'save', NULL, CAST(0x0000A2B200E9EE54 AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1681, 31, N'49', N'Update', N'UserTag', N'Categories', N'saveRearrange', NULL, CAST(0x0000A2B200E9F688 AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1682, 31, N'48', N'Update', N'UserTag', N'Categories', N'saveRearrange', NULL, CAST(0x0000A2B200E9F688 AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1683, 31, N'50', N'Create', N'UserTag', N'Categories', N'save', NULL, CAST(0x0000A2B200F05370 AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1684, 31, N'31', N'Update', N'User', N'Users', N'save', NULL, CAST(0x0000A2B200F05820 AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1685, 31, NULL, N'Create', N'UserTagJoin', N'Users', N'save', NULL, CAST(0x0000A2B200F05820 AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1686, 31, NULL, N'Create', N'UserTagJoin', N'Users', N'save', NULL, CAST(0x0000A2B200F05820 AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1687, 31, NULL, N'Create', N'UserTagJoin', N'Users', N'save', NULL, CAST(0x0000A2B200F05820 AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1688, 31, N'home_spotlight_button', N'Update', N'Option', N'Pages', N'save', NULL, CAST(0x0000A2B200F0C8A0 AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1689, 31, N'home_spotlight_title', N'Update', N'Option', N'Pages', N'save', NULL, CAST(0x0000A2B200F0C8A0 AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1690, 31, N'home_welcome_title', N'Update', N'Option', N'Pages', N'save', NULL, CAST(0x0000A2B200F0C8A0 AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1691, 31, N'home_slide_1', N'Update', N'Option', N'Pages', N'save', NULL, CAST(0x0000A2B200F0C8A0 AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1692, 31, N'home_feature_3', N'Update', N'Option', N'Pages', N'save', NULL, CAST(0x0000A2B200F0C8A0 AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1693, 31, N'home_feature_2', N'Update', N'Option', N'Pages', N'save', NULL, CAST(0x0000A2B200F0C8A0 AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1694, 31, N'home_feature_1', N'Update', N'Option', N'Pages', N'save', NULL, CAST(0x0000A2B200F0C8A0 AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1695, 31, N'home_info_right', N'Update', N'Option', N'Pages', N'save', NULL, CAST(0x0000A2B200F0C8A0 AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1696, 31, N'home_info_left', N'Update', N'Option', N'Pages', N'save', NULL, CAST(0x0000A2B200F0C8A0 AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1697, 31, N'1', N'Create', N'Page', N'Pages', N'save', NULL, CAST(0x0000A2B200F0C8A0 AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1698, 31, N'home_id', N'Update', N'Option', N'Pages', N'save', NULL, CAST(0x0000A2B200F0C8A0 AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1699, 31, N'1', N'Create', N'File', N'Files', N'save', NULL, CAST(0x0000A2B200F24A2C AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1700, 31, N'51', N'Create', N'VideoCategory', N'Categories', N'save', NULL, CAST(0x0000A2B200F28398 AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1701, 31, N'1', N'Create', N'Video', N'Videos', N'save', NULL, CAST(0x0000A2B200F28F50 AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1702, 31, NULL, N'Create', N'VideoCategoryJoin', N'Videos', N'save', NULL, CAST(0x0000A2B200F28F50 AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1703, 31, N'52', N'Create', N'VideoCategory', N'Categories', N'save', NULL, CAST(0x0000A2B200F3762C AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1704, 31, N'51', N'Update', N'VideoCategory', N'Categories', N'saveRearrange', NULL, CAST(0x0000A2B200F379B0 AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1705, 31, N'52', N'Update', N'VideoCategory', N'Categories', N'saveRearrange', NULL, CAST(0x0000A2B200F379B0 AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1706, 31, N'52', N'Update', N'VideoCategory', N'Categories', N'saveRearrange', NULL, CAST(0x0000A2B200F381E4 AS DateTime))
INSERT [dbo].[logs] ([id], [userid], [modelid], [savetype], [model], [controller], [action], [siteid], [createdat]) VALUES (1707, 31, N'51', N'Update', N'VideoCategory', N'Categories', N'saveRearrange', NULL, CAST(0x0000A2B200F381E4 AS DateTime))
SET IDENTITY_INSERT [dbo].[logs] OFF
/****** Object:  Table [dbo].[files]    Script Date: 01/13/2014 15:52:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[files](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[youtubeid] [varchar](50) NULL,
	[filename] [varchar](2000) NULL,
	[filepath] [varchar](2000) NULL,
	[bytesize] [int] NULL,
	[status] [varchar](50) NULL,
	[filetype] [varchar](50) NULL,
	[siteid] [int] NULL,
	[createdAt] [datetime] NULL,
	[createdBy] [int] NULL,
	[updatedAt] [datetime] NULL,
	[updatedBy] [int] NULL,
	[deletedAt] [datetime] NULL,
	[deletedBy] [int] NULL,
 CONSTRAINT [PK_files] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[files] ON
INSERT [dbo].[files] ([id], [youtubeid], [filename], [filepath], [bytesize], [status], [filetype], [siteid], [createdAt], [createdBy], [updatedAt], [updatedBy], [deletedAt], [deletedBy]) VALUES (1, N'_OBlgSz8sSM', N'_OBlgSz8sSM', NULL, NULL, NULL, N'video', NULL, CAST(0x0000A2B200F24C4F AS DateTime), 31, CAST(0x0000A2B200F24C4F AS DateTime), 31, NULL, NULL)
SET IDENTITY_INSERT [dbo].[files] OFF
/****** Object:  Table [dbo].[categories]    Script Date: 01/13/2014 15:52:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](500) NOT NULL,
	[categoryType] [varchar](500) NULL,
	[urlid] [varchar](500) NULL,
	[parentid] [int] NULL,
	[description] [varchar](7000) NULL,
	[sortorder] [int] NOT NULL,
	[siteid] [int] NULL,
	[createdAt] [datetime] NULL,
	[createdBy] [int] NULL,
	[updatedAt] [datetime] NULL,
	[updatedBy] [int] NULL,
	[deletedAt] [datetime] NULL,
	[deletedBy] [int] NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[categories] ON
INSERT [dbo].[categories] ([id], [name], [categoryType], [urlid], [parentid], [description], [sortorder], [siteid], [createdAt], [createdBy], [updatedAt], [updatedBy], [deletedAt], [deletedBy]) VALUES (1, N'Videos', N'video', N'Videos', 3, N'Videos', 4, 1, CAST(0x0000000000000000 AS DateTime), 0, CAST(0x0000A2A501002FFC AS DateTime), 1, CAST(0x0000000000000000 AS DateTime), 1)
INSERT [dbo].[categories] ([id], [name], [categoryType], [urlid], [parentid], [description], [sortorder], [siteid], [createdAt], [createdBy], [updatedAt], [updatedBy], [deletedAt], [deletedBy]) VALUES (43, N'Astronaut', N'user', N'astronaut', 0, N'', 3, 1, CAST(0x0000A2AF00A83810 AS DateTime), 1, CAST(0x0000A2AF00AC9BE4 AS DateTime), 1, CAST(0x0000000000000000 AS DateTime), 0)
INSERT [dbo].[categories] ([id], [name], [categoryType], [urlid], [parentid], [description], [sortorder], [siteid], [createdAt], [createdBy], [updatedAt], [updatedBy], [deletedAt], [deletedBy]) VALUES (44, N'Cat wrangler', N'user', N'cat-wrangler', 0, N'', 2, 1, CAST(0x0000A2AF00A84878 AS DateTime), 1, CAST(0x0000A2AF00AC9AB8 AS DateTime), 1, CAST(0x0000000000000000 AS DateTime), 0)
INSERT [dbo].[categories] ([id], [name], [categoryType], [urlid], [parentid], [description], [sortorder], [siteid], [createdAt], [createdBy], [updatedAt], [updatedBy], [deletedAt], [deletedBy]) VALUES (45, N'Jedi', N'user', N'jedi', 0, N'', 5, 1, CAST(0x0000A2AF00A85304 AS DateTime), 1, CAST(0x0000A2AF00AC9BE4 AS DateTime), 1, CAST(0x0000000000000000 AS DateTime), 0)
INSERT [dbo].[categories] ([id], [name], [categoryType], [urlid], [parentid], [description], [sortorder], [siteid], [createdAt], [createdBy], [updatedAt], [updatedBy], [deletedAt], [deletedBy]) VALUES (46, N'Indian leg wrestling champion', N'user', N'indian-leg-wrestling-champion', 0, N'', 4, 1, CAST(0x0000A2AF00A865C4 AS DateTime), 1, CAST(0x0000A2AF00AC9BE4 AS DateTime), 1, CAST(0x0000000000000000 AS DateTime), 0)
INSERT [dbo].[categories] ([id], [name], [categoryType], [urlid], [parentid], [description], [sortorder], [siteid], [createdAt], [createdBy], [updatedAt], [updatedBy], [deletedAt], [deletedBy]) VALUES (47, N'Awesome', N'user', N'awesome', 0, N'', 0, 1, CAST(0x0000A2AF00AC6278 AS DateTime), 1, CAST(0x0000A2AF00AC6278 AS DateTime), 1, CAST(0x0000A2AF00AC9AB8 AS DateTime), 1)
INSERT [dbo].[categories] ([id], [name], [categoryType], [urlid], [parentid], [description], [sortorder], [siteid], [createdAt], [createdBy], [updatedAt], [updatedBy], [deletedAt], [deletedBy]) VALUES (48, N'Test321', N'user', N'test2', 49, NULL, 3, 1, CAST(0x0000A2B200E9DEFF AS DateTime), 31, CAST(0x0000A2B200E9F771 AS DateTime), 31, NULL, NULL)
INSERT [dbo].[categories] ([id], [name], [categoryType], [urlid], [parentid], [description], [sortorder], [siteid], [createdAt], [createdBy], [updatedAt], [updatedBy], [deletedAt], [deletedBy]) VALUES (49, N'sdaffdas', N'user', N'sdaffdas', 0, NULL, 2, 1, CAST(0x0000A2B200E9EF38 AS DateTime), 31, CAST(0x0000A2B200E9F75A AS DateTime), 31, NULL, NULL)
INSERT [dbo].[categories] ([id], [name], [categoryType], [urlid], [parentid], [description], [sortorder], [siteid], [createdAt], [createdBy], [updatedAt], [updatedBy], [deletedAt], [deletedBy]) VALUES (50, N'asdf', N'user', N'fdsa', NULL, NULL, 0, 1, CAST(0x0000A2B200F053A1 AS DateTime), 31, CAST(0x0000A2B200F053A1 AS DateTime), 31, NULL, NULL)
INSERT [dbo].[categories] ([id], [name], [categoryType], [urlid], [parentid], [description], [sortorder], [siteid], [createdAt], [createdBy], [updatedAt], [updatedBy], [deletedAt], [deletedBy]) VALUES (51, N'asdf', N'video', N'fdas', 52, N'asdf', 3, 1, CAST(0x0000A2B200F28448 AS DateTime), 31, CAST(0x0000A2B200F38220 AS DateTime), 31, NULL, NULL)
INSERT [dbo].[categories] ([id], [name], [categoryType], [urlid], [parentid], [description], [sortorder], [siteid], [createdAt], [createdBy], [updatedAt], [updatedBy], [deletedAt], [deletedBy]) VALUES (52, N'Wooot', N'video', N'asdfsdf', 0, NULL, 2, 1, CAST(0x0000A2B200F376A9 AS DateTime), 31, CAST(0x0000A2B200F38204 AS DateTime), 31, NULL, NULL)
SET IDENTITY_INSERT [dbo].[categories] OFF
/****** Object:  View [dbo].[viewvideos]    Script Date: 01/13/2014 15:52:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[viewvideos]
AS
SELECT     dbo.videos.id, dbo.videos.urlid, dbo.videos.name, dbo.videos.teaser, dbo.videos.hideFromB2B, dbo.videos.videoSubHeader, dbo.videos.description, 
                      dbo.videos.videoLink, dbo.videos.deletedby, dbo.videos.deletedat, dbo.videos.updatedby, dbo.videos.updatedat, dbo.videos.createdby, dbo.videos.createdat, 
                      dbo.videos.siteid, dbo.videos.videofileid, dbo.videos.status, dbo.videos.typeId, dbo.videos.sortBy, dbo.videos.isFeatured, dbo.files.id AS fileid, dbo.files.youtubeid, 
                      dbo.files.filepath, dbo.files.filename, dbo.files.bytesize, dbo.files.status AS filestatus, dbo.files.filetype, dbo.users.id AS user_id, dbo.users.firstname, 
                      dbo.users.lastname, dbo.users.email, dbo.categories.id AS category_id, dbo.categories.name AS category_name, dbo.categories.urlid AS category_urlid, 
                      dbo.categories.parentid, dbo.categories.description AS category_description, dbo.categories.sortorder
FROM         dbo.videos LEFT OUTER JOIN
                      dbo.files ON dbo.videos.videofileid = dbo.files.id LEFT OUTER JOIN
                      dbo.users ON dbo.videos.createdby = dbo.users.id LEFT OUTER JOIN
                      dbo.videos_categories ON dbo.videos.id = dbo.videos_categories.videoid LEFT OUTER JOIN
                      dbo.categories ON dbo.videos_categories.videocategoryid = dbo.categories.id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[33] 4[11] 2[35] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "categories"
            Begin Extent = 
               Top = 67
               Left = 733
               Bottom = 317
               Right = 893
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "videos_categories"
            Begin Extent = 
               Top = 23
               Left = 469
               Bottom = 142
               Right = 635
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "videos"
            Begin Extent = 
               Top = 27
               Left = 259
               Bottom = 197
               Right = 427
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "files"
            Begin Extent = 
               Top = 265
               Left = 52
               Bottom = 384
               Right = 212
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "users"
            Begin Extent = 
               Top = 28
               Left = 43
               Bottom = 147
               Right = 217
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 38
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'viewvideos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'   Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'viewvideos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'viewvideos'
GO
/****** Object:  Default [DF_categories_sortorder]    Script Date: 01/13/2014 15:52:44 ******/
ALTER TABLE [dbo].[categories] ADD  CONSTRAINT [DF_categories_sortorder]  DEFAULT ((0)) FOR [sortorder]
GO
/****** Object:  Default [DF_users_role]    Script Date: 01/13/2014 15:52:44 ******/
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_role]  DEFAULT ('guest') FOR [role]
GO
