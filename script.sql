USE [Assignment]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 12/11/2022 2:51:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [varchar](150) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[displayname] [varchar](150) NOT NULL,
	[lecid] [varchar](150) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 12/11/2022 2:51:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[sesid] [int] NOT NULL,
	[stdid] [varchar](150) NOT NULL,
	[present] [bit] NULL,
	[description] [varchar](150) NULL,
	[record_time] [datetime] NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[sesid] ASC,
	[stdid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 12/11/2022 2:51:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[gid] [int] NOT NULL,
	[gname] [varchar](50) NOT NULL,
	[subcode] [varchar](50) NOT NULL,
	[lecid] [varchar](150) NOT NULL,
	[sem] [varchar](150) NOT NULL,
	[year] [int] NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturer]    Script Date: 12/11/2022 2:51:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer](
	[lecid] [varchar](150) NOT NULL,
	[name] [varchar](150) NOT NULL,
	[email] [varchar](150) NULL,
	[image] [varchar](150) NULL,
 CONSTRAINT [PK_Lecture] PRIMARY KEY CLUSTERED 
(
	[lecid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 12/11/2022 2:51:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[rid] [int] NOT NULL,
	[rname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 12/11/2022 2:51:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[sesid] [int] NOT NULL,
	[gid] [int] NOT NULL,
	[rid] [int] NOT NULL,
	[date] [date] NOT NULL,
	[tid] [int] NOT NULL,
	[index] [int] NOT NULL,
	[lecid] [varchar](150) NOT NULL,
	[attended] [bit] NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[sesid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 12/11/2022 2:51:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[stdid] [varchar](150) NOT NULL,
	[name] [varchar](150) NOT NULL,
	[gender] [bit] NOT NULL,
	[dob] [date] NOT NULL,
	[email] [varchar](150) NULL,
	[image] [varchar](150) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[stdid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Group]    Script Date: 12/11/2022 2:51:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Group](
	[gid] [int] NOT NULL,
	[stdid] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Student_Group] PRIMARY KEY CLUSTERED 
(
	[gid] ASC,
	[stdid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 12/11/2022 2:51:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[subcode] [varchar](50) NOT NULL,
	[subname] [varchar](150) NOT NULL,
	[numberOfSlots] [int] NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[subcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSlot]    Script Date: 12/11/2022 2:51:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSlot](
	[tid] [int] NOT NULL,
	[slottime] [varchar](150) NOT NULL,
 CONSTRAINT [PK_TimeSlot] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([username], [password], [displayname], [lecid]) VALUES (N'anhnn', N'123', N'Nguyen Ngoc Anh', N'AnhNN')
INSERT [dbo].[Account] ([username], [password], [displayname], [lecid]) VALUES (N'hailt', N'123', N'Le Thanh Hai', NULL)
INSERT [dbo].[Account] ([username], [password], [displayname], [lecid]) VALUES (N'hapn', N'123', N'Pham Ngoc Ha', N'HaPN')
INSERT [dbo].[Account] ([username], [password], [displayname], [lecid]) VALUES (N'sonnt', N'123', N'Ngo Tung Son', N'sonnt')
INSERT [dbo].[Account] ([username], [password], [displayname], [lecid]) VALUES (N'tientd', N'123', N'Ta Dinh Tien', N'TienTD')
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, N'HE130303', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, N'HE150335', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, N'HE150561', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, N'HE150566', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, N'HE160001', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, N'HE160004', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, N'HE160023', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, N'HF140025', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, N'HF143325', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, N'HF143333', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (7, N'HE130303', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (7, N'HE150335', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (7, N'HE150561', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (7, N'HE150566', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (7, N'HE160001', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (7, N'HE160004', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (7, N'HE160023', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (7, N'HF140025', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (7, N'HF143325', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (7, N'HF143333', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, N'HE130303', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, N'HE150335', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, N'HE150561', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, N'HE150566', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, N'HE160001', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, N'HE160004', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, N'HE160023', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, N'HF140025', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, N'HF143325', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, N'HF143333', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (12, N'HE130303', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (12, N'HE150335', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (12, N'HE150561', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (12, N'HE150566', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (12, N'HE160001', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (12, N'HE160004', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (12, N'HE160023', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (12, N'HF140025', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (12, N'HF143325', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (12, N'HF143333', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (13, N'HE130303', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (13, N'HE150335', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (13, N'HE150561', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (13, N'HE150566', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (13, N'HE160001', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (13, N'HE160004', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (13, N'HE160023', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (13, N'HF140025', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (13, N'HF143325', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (13, N'HF143333', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (14, N'HE130303', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (14, N'HE150335', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (14, N'HE150561', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (14, N'HE150566', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (14, N'HE160001', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (14, N'HE160004', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (14, N'HE160023', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (14, N'HF140025', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (14, N'HF143325', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (14, N'HF143333', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (15, N'HE130303', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (15, N'HE150335', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (15, N'HE150561', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (15, N'HE150566', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (15, N'HE160001', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (15, N'HE160004', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (15, N'HE160023', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (15, N'HF140025', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (15, N'HF143325', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (15, N'HF143333', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (16, N'HE130303', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (16, N'HE150335', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (16, N'HE150561', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (16, N'HE150566', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (16, N'HE160001', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (16, N'HE160004', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (16, N'HE160023', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (16, N'HF140025', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (16, N'HF143325', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (16, N'HF143333', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (17, N'HE130303', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (17, N'HE150335', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (17, N'HE150561', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (17, N'HE150566', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (17, N'HE160001', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (17, N'HE160004', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (17, N'HE160023', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (17, N'HF140025', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (17, N'HF143325', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (17, N'HF143333', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (18, N'HE130303', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (18, N'HE150335', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (18, N'HE150561', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (18, N'HE150566', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (18, N'HE160001', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (18, N'HE160004', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (18, N'HE160023', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (18, N'HF140025', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (18, N'HF143325', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (18, N'HF143333', NULL, NULL, NULL)
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (19, N'HE130303', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (19, N'HE150335', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (19, N'HE150561', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (19, N'HE150566', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (19, N'HE160001', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (19, N'HE160004', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (19, N'HE160023', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (19, N'HF140025', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (19, N'HF143325', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (19, N'HF143333', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (20, N'HE130303', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (20, N'HE150335', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (20, N'HE150561', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (20, N'HE150566', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (20, N'HE160001', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (20, N'HE160004', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (20, N'HE160023', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (20, N'HF140025', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (20, N'HF143325', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (20, N'HF143333', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (22, N'HE130303', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (22, N'HE150335', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (22, N'HE150561', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (22, N'HE150566', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (22, N'HE160001', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (22, N'HE160004', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (22, N'HE160023', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (22, N'HF140025', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (22, N'HF143325', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (22, N'HF143333', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (32, N'HE130025', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (32, N'HE150335', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (32, N'HE150555', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (32, N'HE160001', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (32, N'HE160003', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (32, N'HE160004', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (32, N'HE160023', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (32, N'HE162223', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (32, N'HF143333', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (33, N'HE130025', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (33, N'HE150335', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (33, N'HE150555', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (33, N'HE160001', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (33, N'HE160003', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (33, N'HE160004', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (33, N'HE160023', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (33, N'HE162223', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (33, N'HF140025', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (33, N'HF143333', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (34, N'HE130025', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (34, N'HE150335', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (34, N'HE150555', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (34, N'HE160001', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (34, N'HE160003', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (34, N'HE160004', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (34, N'HE160023', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (34, N'HE162223', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (34, N'HF140025', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (34, N'HF143333', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (35, N'HE130025', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (35, N'HE150335', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (35, N'HE150555', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (35, N'HE160001', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (35, N'HE160003', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (35, N'HE160004', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (35, N'HE160023', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (35, N'HE162223', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (35, N'HF140025', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (35, N'HF143333', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (37, N'HE130025', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (37, N'HE150335', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (37, N'HE150555', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (37, N'HE160001', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (37, N'HE160003', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (37, N'HE160004', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (37, N'HE160023', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (37, N'HE162223', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (37, N'HF140025', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (37, N'HF143333', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (38, N'HE130025', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (38, N'HE150335', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (38, N'HE150555', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (38, N'HE160001', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (38, N'HE160003', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (38, N'HE160004', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (38, N'HE160023', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (38, N'HE162223', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (38, N'HF140025', NULL, NULL, NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (38, N'HF143333', NULL, NULL, NULL)
GO
INSERT [dbo].[Group] ([gid], [gname], [subcode], [lecid], [sem], [year]) VALUES (1, N'Se1622', N'JPD123', N'AnhNN', N'FALL', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subcode], [lecid], [sem], [year]) VALUES (2, N'Se1623', N'SWE201c', N'HaPN', N'FALL', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subcode], [lecid], [sem], [year]) VALUES (3, N'SE1624', N'CSD201', N'HaPN', N'FALL', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subcode], [lecid], [sem], [year]) VALUES (4, N'SE1625', N'DBI202', N'sonnt', N'FALL', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subcode], [lecid], [sem], [year]) VALUES (5, N'SE1626', N'PRJ301', N'sonnt', N'FALL', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subcode], [lecid], [sem], [year]) VALUES (6, N'SE1627', N'PRJ301', N'TienTD', N'FALL', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subcode], [lecid], [sem], [year]) VALUES (7, N'SE1628', N'PRO192', N'TienTD', N'FALL', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subcode], [lecid], [sem], [year]) VALUES (8, N'SE1629', N'LAB211', N'ThangPD', N'FALL', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subcode], [lecid], [sem], [year]) VALUES (9, N'SE1630', N'IOT102', N'DuongNV', N'FALL', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subcode], [lecid], [sem], [year]) VALUES (10, N'SE1631', N'DBI202', N'DuongNV', N'FALL', 2022)
GO
INSERT [dbo].[Lecturer] ([lecid], [name], [email], [image]) VALUES (N'AnhNN', N'Nguyen Ngoc Anh', N'AnhNN59@fe.edu.vn', NULL)
INSERT [dbo].[Lecturer] ([lecid], [name], [email], [image]) VALUES (N'DuongNV', N'Nguyen Van Duong', N'duongnv44@fe.edu.vn', NULL)
INSERT [dbo].[Lecturer] ([lecid], [name], [email], [image]) VALUES (N'HaPN', N'Pham Ngoc Ha', N'HaPN10@fe.edu.vn', NULL)
INSERT [dbo].[Lecturer] ([lecid], [name], [email], [image]) VALUES (N'HoaPTT', N'Pham Thi Thanh Hoa', N'hoaptt8@fe.edu.vn', NULL)
INSERT [dbo].[Lecturer] ([lecid], [name], [email], [image]) VALUES (N'sonnt', N'Ngo Tung Son', N'sonnt69@fe.edu.vn', NULL)
INSERT [dbo].[Lecturer] ([lecid], [name], [email], [image]) VALUES (N'ThangPD', N'Pham Duc Thang', N'ThangPD10@fe.edu.vn', NULL)
INSERT [dbo].[Lecturer] ([lecid], [name], [email], [image]) VALUES (N'TienTD', N'Ta Dinh Tien', N'TienTD17@fe.edu.vn', NULL)
GO
INSERT [dbo].[Room] ([rid], [rname]) VALUES (1, N'AL-L207')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (2, N'BE-215')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (3, N'BE-316')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (4, N'AL-401')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (5, N'DE-C306')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (6, N'DE-C204')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (7, N'G201')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (8, N'G315')
GO
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (1, 1, 3, CAST(N'2022-12-05' AS Date), 1, 1, N'AnhNN', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (2, 1, 3, CAST(N'2022-12-05' AS Date), 2, 2, N'AnhNN', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (3, 1, 3, CAST(N'2022-12-07' AS Date), 1, 3, N'AnhNN', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (4, 1, 3, CAST(N'2022-12-07' AS Date), 2, 4, N'AnhNN', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (5, 1, 3, CAST(N'2022-12-09' AS Date), 1, 5, N'AnhNN', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (6, 6, 1, CAST(N'2022-11-28' AS Date), 2, 1, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (7, 6, 1, CAST(N'2022-11-28' AS Date), 3, 2, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (8, 6, 1, CAST(N'2022-11-30' AS Date), 2, 3, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (9, 6, 1, CAST(N'2022-11-30' AS Date), 3, 4, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (10, 6, 1, CAST(N'2022-12-02' AS Date), 2, 5, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (11, 6, 1, CAST(N'2022-12-02' AS Date), 3, 6, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (12, 6, 1, CAST(N'2022-12-05' AS Date), 2, 7, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (13, 6, 1, CAST(N'2022-12-05' AS Date), 3, 8, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (14, 6, 1, CAST(N'2022-12-07' AS Date), 2, 9, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (15, 6, 1, CAST(N'2022-12-07' AS Date), 3, 10, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (16, 6, 1, CAST(N'2022-12-09' AS Date), 2, 11, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (17, 6, 1, CAST(N'2022-12-09' AS Date), 3, 12, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (18, 6, 1, CAST(N'2022-12-12' AS Date), 2, 13, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (19, 6, 1, CAST(N'2022-12-12' AS Date), 3, 14, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (20, 6, 1, CAST(N'2022-12-14' AS Date), 2, 15, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (21, 6, 1, CAST(N'2022-12-14' AS Date), 3, 16, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (22, 6, 1, CAST(N'2022-12-16' AS Date), 2, 17, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (23, 6, 1, CAST(N'2022-12-16' AS Date), 3, 18, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (25, 7, 2, CAST(N'2022-11-29' AS Date), 5, 19, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (26, 7, 2, CAST(N'2022-11-29' AS Date), 6, 20, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (27, 7, 2, CAST(N'2022-12-01' AS Date), 4, 21, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (28, 7, 2, CAST(N'2022-12-01' AS Date), 5, 22, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (29, 7, 2, CAST(N'2022-12-01' AS Date), 6, 23, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (30, 7, 2, CAST(N'2022-12-06' AS Date), 5, 24, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (31, 7, 2, CAST(N'2022-12-06' AS Date), 6, 25, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (32, 7, 2, CAST(N'2022-12-08' AS Date), 4, 26, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (33, 7, 2, CAST(N'2022-12-08' AS Date), 5, 27, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (34, 7, 2, CAST(N'2022-12-08' AS Date), 6, 28, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (35, 7, 2, CAST(N'2022-12-13' AS Date), 5, 29, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (36, 7, 2, CAST(N'2022-12-13' AS Date), 6, 30, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (37, 7, 2, CAST(N'2022-12-15' AS Date), 4, 31, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (38, 7, 2, CAST(N'2022-12-15' AS Date), 5, 32, N'TienTD', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (40, 2, 3, CAST(N'2022-12-02' AS Date), 1, 1, N'HaPN', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (41, 2, 3, CAST(N'2022-12-09' AS Date), 1, 2, N'HaPN', NULL)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lecid], [attended]) VALUES (42, 2, 3, CAST(N'2022-12-16' AS Date), 1, 2, N'HaPN', NULL)
GO
INSERT [dbo].[Student] ([stdid], [name], [gender], [dob], [email], [image]) VALUES (N'HE130025', N'Vu Tuan Huy', 1, CAST(N'1999-02-23' AS Date), N'huyvtHe130025@fpt.edu.vn', NULL)
INSERT [dbo].[Student] ([stdid], [name], [gender], [dob], [email], [image]) VALUES (N'HE130303', N'Nguyen Huy Tung', 1, CAST(N'1999-05-06' AS Date), N'tungnhhe130303@fpt.edu.vn', NULL)
INSERT [dbo].[Student] ([stdid], [name], [gender], [dob], [email], [image]) VALUES (N'HE135525', N'Le Thanh cong', 1, CAST(N'1998-02-05' AS Date), N'conglthe135525@fpt.edu.vn', NULL)
INSERT [dbo].[Student] ([stdid], [name], [gender], [dob], [email], [image]) VALUES (N'HE150335', N'Nguyen Thi Thu Trang', 0, CAST(N'2001-02-12' AS Date), N'trangnthe150335@fpt.edu.vn', NULL)
INSERT [dbo].[Student] ([stdid], [name], [gender], [dob], [email], [image]) VALUES (N'HE150525', N'A8', 1, CAST(N'2000-02-03' AS Date), N'a8@fpt.edu.vn', NULL)
INSERT [dbo].[Student] ([stdid], [name], [gender], [dob], [email], [image]) VALUES (N'HE150555', N'A7', 1, CAST(N'2000-02-02' AS Date), N'a7@fpt.edu.vn', NULL)
INSERT [dbo].[Student] ([stdid], [name], [gender], [dob], [email], [image]) VALUES (N'HE150561', N'Nguyen Duc Hai', 1, CAST(N'2001-01-25' AS Date), N'haindhe150561@fpt.edu.vn', NULL)
INSERT [dbo].[Student] ([stdid], [name], [gender], [dob], [email], [image]) VALUES (N'HE150566', N'A6', 1, CAST(N'2000-02-02' AS Date), N'a6@fpt.edu.vn', NULL)
INSERT [dbo].[Student] ([stdid], [name], [gender], [dob], [email], [image]) VALUES (N'HE155556', N'A9', 0, CAST(N'2000-02-03' AS Date), N'a9@fpt.edu.vn', NULL)
INSERT [dbo].[Student] ([stdid], [name], [gender], [dob], [email], [image]) VALUES (N'HE160001', N'A1', 1, CAST(N'2002-02-01' AS Date), N'a1@fpt.edu.vn', NULL)
INSERT [dbo].[Student] ([stdid], [name], [gender], [dob], [email], [image]) VALUES (N'HE160002', N'A2', 0, CAST(N'2002-02-02' AS Date), N'a2@fpt.edu.vn', NULL)
INSERT [dbo].[Student] ([stdid], [name], [gender], [dob], [email], [image]) VALUES (N'HE160003', N'A3', 1, CAST(N'2002-02-03' AS Date), N'a3@fpt.edu.vn', NULL)
INSERT [dbo].[Student] ([stdid], [name], [gender], [dob], [email], [image]) VALUES (N'HE160004', N'A4', 0, CAST(N'2002-02-02' AS Date), N'a4@fpt.edu.vn', NULL)
INSERT [dbo].[Student] ([stdid], [name], [gender], [dob], [email], [image]) VALUES (N'HE160023', N'A5', 1, CAST(N'2002-02-02' AS Date), N'a5@fpt.edu.vn', NULL)
INSERT [dbo].[Student] ([stdid], [name], [gender], [dob], [email], [image]) VALUES (N'HE162222', N'B1', 0, CAST(N'2000-02-02' AS Date), N'b1@fpt.edu.vn', NULL)
INSERT [dbo].[Student] ([stdid], [name], [gender], [dob], [email], [image]) VALUES (N'HE162223', N'B2', 0, CAST(N'2000-03-05' AS Date), N'b2@fpt.edu.vn', NULL)
INSERT [dbo].[Student] ([stdid], [name], [gender], [dob], [email], [image]) VALUES (N'HE163333', N'B3', 0, CAST(N'2000-05-06' AS Date), N'b3@fpt.edu.vn', NULL)
INSERT [dbo].[Student] ([stdid], [name], [gender], [dob], [email], [image]) VALUES (N'HF140025', N'B6', 0, CAST(N'2000-08-09' AS Date), N'b6@fpt.edu.vn', NULL)
INSERT [dbo].[Student] ([stdid], [name], [gender], [dob], [email], [image]) VALUES (N'HF142223', N'B7', 0, CAST(N'2000-08-06' AS Date), N'b7@fpt.edu.vn', NULL)
INSERT [dbo].[Student] ([stdid], [name], [gender], [dob], [email], [image]) VALUES (N'HF143325', N'Vu Thu Thuy', 0, CAST(N'2000-02-26' AS Date), N'thuyvthf143325@fpt.edu.vn', NULL)
INSERT [dbo].[Student] ([stdid], [name], [gender], [dob], [email], [image]) VALUES (N'HF143333', N'B5', 1, CAST(N'2000-03-08' AS Date), N'b5@fpt.edu.vn', NULL)
INSERT [dbo].[Student] ([stdid], [name], [gender], [dob], [email], [image]) VALUES (N'HF143352', N'B8', 0, CAST(N'2000-02-06' AS Date), N'b8@fpt.edu.vn', NULL)
INSERT [dbo].[Student] ([stdid], [name], [gender], [dob], [email], [image]) VALUES (N'HF144444', N'B4', 1, CAST(N'2000-06-08' AS Date), N'b4@fpt.edu.vn', NULL)
INSERT [dbo].[Student] ([stdid], [name], [gender], [dob], [email], [image]) VALUES (N'HF145526', N'C3', 1, CAST(N'2000-06-09' AS Date), N'c3@fpt.edu.vn', NULL)
INSERT [dbo].[Student] ([stdid], [name], [gender], [dob], [email], [image]) VALUES (N'HF145562', N'C1', 1, CAST(N'2000-03-08' AS Date), N'c1@fpt.edu.vn', NULL)
INSERT [dbo].[Student] ([stdid], [name], [gender], [dob], [email], [image]) VALUES (N'HF146698', N'B9', 1, CAST(N'2000-09-07' AS Date), N'b9@fpt.edu.vn', NULL)
INSERT [dbo].[Student] ([stdid], [name], [gender], [dob], [email], [image]) VALUES (N'HF147228', N'C2', 1, CAST(N'2000-05-06' AS Date), N'c2@fpt.edu.vn', NULL)
INSERT [dbo].[Student] ([stdid], [name], [gender], [dob], [email], [image]) VALUES (N'IA143332', N'C4', 1, CAST(N'2000-06-05' AS Date), N'c4@fpt.edu.vn', NULL)
GO
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (1, N'HE130025')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (1, N'HE130303')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (1, N'HE135525')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (1, N'HE150335')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (1, N'HE150525')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (1, N'HE150555')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (1, N'HE150561')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (1, N'HE150566')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (1, N'HE155556')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (1, N'HE160001')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (2, N'HE155556')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (2, N'HE160004')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (2, N'HE160023')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (2, N'HE162222')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (2, N'HE163333')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (2, N'HF143325')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (2, N'HF143333')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (2, N'HF143352')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (2, N'HF145562')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (2, N'HF146698')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (3, N'HE150566')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (3, N'HE160001')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (3, N'HF143325')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (3, N'HF144444')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (3, N'HF145562')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (3, N'HF147228')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (4, N'HE155556')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (4, N'HE160001')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (4, N'HE160023')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (4, N'HF143333')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (4, N'HF147228')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (6, N'HE130303')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (6, N'HE150335')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (6, N'HE150561')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (6, N'HE150566')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (6, N'HE160001')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (6, N'HE160004')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (6, N'HE160023')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (6, N'HF140025')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (6, N'HF143325')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (6, N'HF143333')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (7, N'HE130025')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (7, N'HE150335')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (7, N'HE150555')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (7, N'HE160001')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (7, N'HE160003')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (7, N'HE160004')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (7, N'HE160023')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (7, N'HE162223')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (7, N'HF140025')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (7, N'HF143333')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (9, N'HE160023')
INSERT [dbo].[Student_Group] ([gid], [stdid]) VALUES (9, N'HF145562')
GO
INSERT [dbo].[Subject] ([subcode], [subname], [numberOfSlots]) VALUES (N'CSD201', N'Data Structures and Algorithms', 31)
INSERT [dbo].[Subject] ([subcode], [subname], [numberOfSlots]) VALUES (N'DBI202', N'Introduction to Databases', 33)
INSERT [dbo].[Subject] ([subcode], [subname], [numberOfSlots]) VALUES (N'IOT102', N'Internet of Things', 30)
INSERT [dbo].[Subject] ([subcode], [subname], [numberOfSlots]) VALUES (N'JPD123', N'Elementary Japanese 1-A1.2', 30)
INSERT [dbo].[Subject] ([subcode], [subname], [numberOfSlots]) VALUES (N'LAB211', N'OOP with Java Lab', 32)
INSERT [dbo].[Subject] ([subcode], [subname], [numberOfSlots]) VALUES (N'PRJ301', N'Java Web Application Development', 30)
INSERT [dbo].[Subject] ([subcode], [subname], [numberOfSlots]) VALUES (N'PRO192', N'Object-Oriented Programming', 30)
INSERT [dbo].[Subject] ([subcode], [subname], [numberOfSlots]) VALUES (N'SWE201c', N'Introduction to Software Engineering', 30)
GO
INSERT [dbo].[TimeSlot] ([tid], [slottime]) VALUES (1, N'7h30 - 9h')
INSERT [dbo].[TimeSlot] ([tid], [slottime]) VALUES (2, N'9h10 - 10h40')
INSERT [dbo].[TimeSlot] ([tid], [slottime]) VALUES (3, N'10h50 - 12h20')
INSERT [dbo].[TimeSlot] ([tid], [slottime]) VALUES (4, N'12h50 - 14h20')
INSERT [dbo].[TimeSlot] ([tid], [slottime]) VALUES (5, N'14h30 - 16h')
INSERT [dbo].[TimeSlot] ([tid], [slottime]) VALUES (6, N'16h10 - 17h40')
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Lecturer] FOREIGN KEY([lecid])
REFERENCES [dbo].[Lecturer] ([lecid])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Lecturer]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Session] FOREIGN KEY([sesid])
REFERENCES [dbo].[Session] ([sesid])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Session]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Student] FOREIGN KEY([stdid])
REFERENCES [dbo].[Student] ([stdid])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Student]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Lecturer] FOREIGN KEY([lecid])
REFERENCES [dbo].[Lecturer] ([lecid])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Lecturer]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Subject] FOREIGN KEY([subcode])
REFERENCES [dbo].[Subject] ([subcode])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Subject]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Group]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Lecturer] FOREIGN KEY([lecid])
REFERENCES [dbo].[Lecturer] ([lecid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Lecturer]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Room] FOREIGN KEY([tid])
REFERENCES [dbo].[Room] ([rid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Room]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_TimeSlot] FOREIGN KEY([tid])
REFERENCES [dbo].[TimeSlot] ([tid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_TimeSlot]
GO
ALTER TABLE [dbo].[Student_Group]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Student_Group] CHECK CONSTRAINT [FK_Student_Group_Group]
GO
ALTER TABLE [dbo].[Student_Group]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group_Student] FOREIGN KEY([stdid])
REFERENCES [dbo].[Student] ([stdid])
GO
ALTER TABLE [dbo].[Student_Group] CHECK CONSTRAINT [FK_Student_Group_Student]
GO
