/****** Object:  Table [dbo].[tb_lang]    Script Date: 11/08/2012 19:44:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_lang]') AND type in (N'U'))
DROP TABLE [dbo].[tb_lang]
GO
/****** Object:  Table [dbo].[tb_user]    Script Date: 11/08/2012 19:44:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_user]') AND type in (N'U'))
DROP TABLE [dbo].[tb_user]
GO
/****** Object:  Table [dbo].[tb_code]    Script Date: 11/08/2012 19:44:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_code]') AND type in (N'U'))
DROP TABLE [dbo].[tb_code]
GO
/****** Object:  Table [dbo].[tb_type]    Script Date: 11/08/2012 19:44:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_type]') AND type in (N'U'))
DROP TABLE [dbo].[tb_type]
GO
/****** Object:  Table [dbo].[tb_project]    Script Date: 11/08/2012 19:44:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_project]') AND type in (N'U'))
DROP TABLE [dbo].[tb_project]
GO
/****** Object:  Table [dbo].[tb_note]    Script Date: 11/08/2012 19:44:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_note]') AND type in (N'U'))
DROP TABLE [dbo].[tb_note]
GO
/****** Object:  Table [dbo].[tb_comment]    Script Date: 11/08/2012 19:44:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_comment]') AND type in (N'U'))
DROP TABLE [dbo].[tb_comment]
GO
/****** Object:  Default [DF_tb_code_upTime]    Script Date: 11/08/2012 19:44:20 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_code_upTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_code]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_code_upTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_code] DROP CONSTRAINT [DF_tb_code_upTime]
END


End
GO
/****** Object:  Default [DF_tb_comment_uptime]    Script Date: 11/08/2012 19:44:20 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_comment_uptime]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_comment]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_comment_uptime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_comment] DROP CONSTRAINT [DF_tb_comment_uptime]
END


End
GO
/****** Object:  Default [DF_tb_note_upTime]    Script Date: 11/08/2012 19:44:20 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_note_upTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_note]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_note_upTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_note] DROP CONSTRAINT [DF_tb_note_upTime]
END


End
GO
/****** Object:  Default [DF_tb_project_upTime]    Script Date: 11/08/2012 19:44:20 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_project_upTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_project]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_project_upTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_project] DROP CONSTRAINT [DF_tb_project_upTime]
END


End
GO
/****** Object:  Default [DF_tb_user_sex]    Script Date: 11/08/2012 19:44:20 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_user_sex]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_user]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_user_sex]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_user] DROP CONSTRAINT [DF_tb_user_sex]
END


End
GO
/****** Object:  Default [DF_tb_user_isadmin]    Script Date: 11/08/2012 19:44:20 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_user_isadmin]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_user]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_user_isadmin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_user] DROP CONSTRAINT [DF_tb_user_isadmin]
END


End
GO
/****** Object:  Default [DF_tb_user_regTime]    Script Date: 11/08/2012 19:44:20 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_user_regTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_user]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_user_regTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_user] DROP CONSTRAINT [DF_tb_user_regTime]
END


End
GO
/****** Object:  Table [dbo].[tb_comment]    Script Date: 11/08/2012 19:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_comment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[commentTitle] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[context] [varchar](2000) COLLATE Chinese_PRC_CI_AS NULL,
	[agree] [int] NULL,
	[disagree] [int] NULL,
	[uid] [int] NULL,
	[nid] [int] NULL,
	[uptime] [datetime] NULL,
 CONSTRAINT [PK_tb_comment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[tb_note]    Script Date: 11/08/2012 19:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_note]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_note](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[noteName] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[uid] [int] NULL,
	[upTime] [datetime] NULL,
	[context] [varchar](2000) COLLATE Chinese_PRC_CI_AS NULL,
	[startLine] [int] NULL,
	[endLine] [int] NULL,
	[cid] [int] NULL,
	[agree] [int] NULL,
	[disagree] [int] NULL,
 CONSTRAINT [PK_tb_note] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[tb_project]    Script Date: 11/08/2012 19:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_project]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_project](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projectName] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[uid] [int] NULL,
	[description] [varchar](2000) COLLATE Chinese_PRC_CI_AS NULL,
	[upTime] [datetime] NULL,
	[tid] [int] NULL,
 CONSTRAINT [PK_tb_project] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tb_project] ON
INSERT [dbo].[tb_project] ([id], [projectName], [uid], [description], [upTime], [tid]) VALUES (5, N'乐桌面', 4, N'', CAST(0x0000A0FC01701EAC AS DateTime), 1)
INSERT [dbo].[tb_project] ([id], [projectName], [uid], [description], [upTime], [tid]) VALUES (6, N'ZCoder', 4, N'', CAST(0x0000A0FD00D77378 AS DateTime), 4)
INSERT [dbo].[tb_project] ([id], [projectName], [uid], [description], [upTime], [tid]) VALUES (7, N'腾讯QQ', 4, N'', CAST(0x0000A0FD00D83600 AS DateTime), 1)
INSERT [dbo].[tb_project] ([id], [projectName], [uid], [description], [upTime], [tid]) VALUES (8, N'奋斗的小猪', 4, N'', CAST(0x0000A10300B4C0A8 AS DateTime), 3)
SET IDENTITY_INSERT [dbo].[tb_project] OFF
/****** Object:  Table [dbo].[tb_type]    Script Date: 11/08/2012 19:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_type]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[typeName] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[description] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_tb_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tb_type] ON
INSERT [dbo].[tb_type] ([id], [typeName], [description]) VALUES (1, N'桌面程序', N'图像类')
INSERT [dbo].[tb_type] ([id], [typeName], [description]) VALUES (2, N'手机程序', NULL)
INSERT [dbo].[tb_type] ([id], [typeName], [description]) VALUES (3, N'游戏程序', NULL)
INSERT [dbo].[tb_type] ([id], [typeName], [description]) VALUES (4, N'Web应用', NULL)
SET IDENTITY_INSERT [dbo].[tb_type] OFF
/****** Object:  Table [dbo].[tb_code]    Script Date: 11/08/2012 19:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_code]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_code](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[pid] [int] NULL,
	[upTime] [datetime] NULL,
	[uid] [int] NULL,
	[lid] [int] NULL,
 CONSTRAINT [PK_tb_code] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[tb_user]    Script Date: 11/08/2012 19:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_user]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userName] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[password] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[email] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[qq] [varchar](15) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[sex] [bit] NULL,
	[isadmin] [bit] NULL,
	[regTime] [datetime] NULL,
 CONSTRAINT [PK_tb_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tb_user]') AND name = N'IX_tb_user')
CREATE UNIQUE NONCLUSTERED INDEX [IX_tb_user] ON [dbo].[tb_user] 
(
	[userName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
SET IDENTITY_INSERT [dbo].[tb_user] ON
INSERT [dbo].[tb_user] ([id], [userName], [password], [email], [qq], [sex], [isadmin], [regTime]) VALUES (1, N'cyxx', N'1111222x', N'hdjd@qq.com', N'ads', 1, 1, CAST(0x00009FEC00000000 AS DateTime))
INSERT [dbo].[tb_user] ([id], [userName], [password], [email], [qq], [sex], [isadmin], [regTime]) VALUES (4, N'yhtt2020', N'1111222', N'fggsffeef@qq.com', N'12121212', 1, 1, CAST(0x0000A0E60168521C AS DateTime))
INSERT [dbo].[tb_user] ([id], [userName], [password], [email], [qq], [sex], [isadmin], [regTime]) VALUES (6, N'yhtt2010', N'1111222', N'yhtt@qq.com', N'276905621', 1, 0, CAST(0x0000A0E6016A7976 AS DateTime))
INSERT [dbo].[tb_user] ([id], [userName], [password], [email], [qq], [sex], [isadmin], [regTime]) VALUES (9, N'greatebig', N'1111222', N'adwaw@qq.com', N'23123123', 0, 0, CAST(0x0000A0E6016B369B AS DateTime))
INSERT [dbo].[tb_user] ([id], [userName], [password], [email], [qq], [sex], [isadmin], [regTime]) VALUES (13, N'yhtt20201', N'1111222', N'2321@qq.com', N'123', 0, 0, CAST(0x0000A0E60172D9FE AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_user] OFF
/****** Object:  Table [dbo].[tb_lang]    Script Date: 11/08/2012 19:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_lang]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_lang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[description] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[ext] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_tb_lang] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tb_lang] ON
INSERT [dbo].[tb_lang] ([id], [name], [description], [ext]) VALUES (1, N'C++', N'C++程序语言', N'cpp')
INSERT [dbo].[tb_lang] ([id], [name], [description], [ext]) VALUES (2, N'Java', N'Java', N'java')
INSERT [dbo].[tb_lang] ([id], [name], [description], [ext]) VALUES (3, N'CSharp', N'Csharp', N'cs')
INSERT [dbo].[tb_lang] ([id], [name], [description], [ext]) VALUES (4, N'JavaScript', N'JS', N'js')
INSERT [dbo].[tb_lang] ([id], [name], [description], [ext]) VALUES (5, N'Html', N'html', N'html,htm')
SET IDENTITY_INSERT [dbo].[tb_lang] OFF
/****** Object:  Default [DF_tb_code_upTime]    Script Date: 11/08/2012 19:44:20 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_code_upTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_code]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_code_upTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_code] ADD  CONSTRAINT [DF_tb_code_upTime]  DEFAULT (getdate()) FOR [upTime]
END


End
GO
/****** Object:  Default [DF_tb_comment_uptime]    Script Date: 11/08/2012 19:44:20 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_comment_uptime]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_comment]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_comment_uptime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_comment] ADD  CONSTRAINT [DF_tb_comment_uptime]  DEFAULT (getdate()) FOR [uptime]
END


End
GO
/****** Object:  Default [DF_tb_note_upTime]    Script Date: 11/08/2012 19:44:20 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_note_upTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_note]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_note_upTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_note] ADD  CONSTRAINT [DF_tb_note_upTime]  DEFAULT (getdate()) FOR [upTime]
END


End
GO
/****** Object:  Default [DF_tb_project_upTime]    Script Date: 11/08/2012 19:44:20 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_project_upTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_project]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_project_upTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_project] ADD  CONSTRAINT [DF_tb_project_upTime]  DEFAULT (getdate()) FOR [upTime]
END


End
GO
/****** Object:  Default [DF_tb_user_sex]    Script Date: 11/08/2012 19:44:20 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_user_sex]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_user]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_user_sex]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_user] ADD  CONSTRAINT [DF_tb_user_sex]  DEFAULT ((1)) FOR [sex]
END


End
GO
/****** Object:  Default [DF_tb_user_isadmin]    Script Date: 11/08/2012 19:44:20 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_user_isadmin]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_user]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_user_isadmin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_user] ADD  CONSTRAINT [DF_tb_user_isadmin]  DEFAULT ((0)) FOR [isadmin]
END


End
GO
/****** Object:  Default [DF_tb_user_regTime]    Script Date: 11/08/2012 19:44:20 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_user_regTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_user]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_user_regTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_user] ADD  CONSTRAINT [DF_tb_user_regTime]  DEFAULT (getdate()) FOR [regTime]
END


End
GO
