USE [DoctorAppointmentSystem]
GO
/****** Object:  Table [dbo].[RegistrationTbl]    Script Date: 06/04/2019 20:12:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RegistrationTbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Age] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[Password] [varchar](50) NULL,
	[SpecialMedicalCondition] [varchar](500) NULL,
	[OTP] [varchar](50) NULL,
	[OTPStatus] [bit] NULL,
	[Date] [varchar](50) NULL,
	[Time] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[RegistrationTbl] ON
INSERT [dbo].[RegistrationTbl] ([Id], [Name], [Age], [Mobile], [Gender], [Email], [Password], [SpecialMedicalCondition], [OTP], [OTPStatus], [Date], [Time]) VALUES (9, N'Himanshu', N'23', N'9140967670', N'Male', N'hk@gmail.com', N'6b6acc4aed6bc112661496490721d660', N'Fever', N'325938', 1, N'04/15/2019', N'18:50:22')
INSERT [dbo].[RegistrationTbl] ([Id], [Name], [Age], [Mobile], [Gender], [Email], [Password], [SpecialMedicalCondition], [OTP], [OTPStatus], [Date], [Time]) VALUES (10, N'Ishwar', N'24', N'8009273646', N'Male', N'ishwar@gmail.com', N'cfef4f1f7e3740993778b9909d6d5cc0', N'ishwar123', N'979738', 1, N'04-17-2019', N'16:21:42')
INSERT [dbo].[RegistrationTbl] ([Id], [Name], [Age], [Mobile], [Gender], [Email], [Password], [SpecialMedicalCondition], [OTP], [OTPStatus], [Date], [Time]) VALUES (11, N'Himanshu', N'32', N'9670155659', N'Male', N'himanshu@gmail.com', N'202cb962ac59075b964b07152d234b70', N'123', N'414302', 1, N'05-24-2019', N'17:49:05')
INSERT [dbo].[RegistrationTbl] ([Id], [Name], [Age], [Mobile], [Gender], [Email], [Password], [SpecialMedicalCondition], [OTP], [OTPStatus], [Date], [Time]) VALUES (12, N'Vishal', N'21', N'7388517719', N'Male', N'vishal@gmail.com', N'202cb962ac59075b964b07152d234b70', N'123', N'875060', 0, N'05-28-2019', N'19:03:37')
INSERT [dbo].[RegistrationTbl] ([Id], [Name], [Age], [Mobile], [Gender], [Email], [Password], [SpecialMedicalCondition], [OTP], [OTPStatus], [Date], [Time]) VALUES (13, N'Ayush', N'22', N'8542017890', N'Male', N'ayush@gmail.com', N'691c720c3152c8686e0ff812a767c552', N'ayush123', N'873753', 1, N'06-04-2019', N'20:04:00')
SET IDENTITY_INSERT [dbo].[RegistrationTbl] OFF
/****** Object:  Table [dbo].[NewsLetter]    Script Date: 06/04/2019 20:12:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NewsLetter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[NewsLetter] ON
INSERT [dbo].[NewsLetter] ([Id], [Email]) VALUES (2, N'Hello@gmail.com')
SET IDENTITY_INSERT [dbo].[NewsLetter] OFF
/****** Object:  Table [dbo].[Doctors]    Script Date: 06/04/2019 20:12:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Doctors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Experience] [varchar](50) NULL,
	[Fee] [varchar](50) NULL,
	[Specialization] [varchar](100) NULL,
	[Photo] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Doctors] ON
INSERT [dbo].[Doctors] ([Id], [Name], [Experience], [Fee], [Specialization], [Photo]) VALUES (1, N'Dr. Amit', N'3 Year', N'300', N'Fever', N'A1Xlve3ebLL._SX425_.jpg')
INSERT [dbo].[Doctors] ([Id], [Name], [Experience], [Fee], [Specialization], [Photo]) VALUES (2, N'Dr. Himanshu', N'3', N'500', N'IT', N'fdfdf.jpg')
SET IDENTITY_INSERT [dbo].[Doctors] OFF
/****** Object:  Table [dbo].[Contact]    Script Date: 06/04/2019 20:12:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Subject] [varchar](50) NULL,
	[Message] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON
INSERT [dbo].[Contact] ([Id], [Name], [Email], [Subject], [Message]) VALUES (1, N'Aman', N'aman@gmail.com', N'abcd', N'hello')
SET IDENTITY_INSERT [dbo].[Contact] OFF
/****** Object:  Table [dbo].[Appointment]    Script Date: 06/04/2019 20:12:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Appointment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Age] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Doctor] [varchar](50) NULL,
	[Date] [varchar](50) NULL,
	[Description] [varchar](500) NULL,
	[Time] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[UserEmail] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Appointment] ON
INSERT [dbo].[Appointment] ([Id], [Name], [Age], [Gender], [Doctor], [Date], [Description], [Time], [Status], [Mobile], [UserEmail]) VALUES (1, N'Abcd', N'23', N'Male', N'Dr. Amit (Fever)', N'11/4/2019', N'Fever', N'07:10 AM', N'Confirmed', N'7318245215', N'hk@gmail.com')
INSERT [dbo].[Appointment] ([Id], [Name], [Age], [Gender], [Doctor], [Date], [Description], [Time], [Status], [Mobile], [UserEmail]) VALUES (2, N'Ayush', N'22', N'Male', N'Dr. Amit (Fever)', N'26/4/2019', N'Fever', N'10:30 AM', N'Confirmed', N'8542017890', N'ishwar@gmail.com')
SET IDENTITY_INSERT [dbo].[Appointment] OFF
/****** Object:  Table [dbo].[Admin]    Script Date: 06/04/2019 20:12:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Admin] ON
INSERT [dbo].[Admin] ([Id], [Name], [Email], [Password]) VALUES (1, N'Ayush Sinha', N'admin@gmail.com', N'691c720c3152c8686e0ff812a767c552')
SET IDENTITY_INSERT [dbo].[Admin] OFF
