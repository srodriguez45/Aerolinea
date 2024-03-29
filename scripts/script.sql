/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4259)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [saerolinea]
GO
/****** Object:  Table [dbo].[cities]    Script Date: 26/10/2019 11:49:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cities](
	[idCity] [int] IDENTITY(1,1) NOT NULL,
	[cityName] [varchar](100) NOT NULL,
	[citySource] [char](3) NOT NULL,
	[countrySorce] [varchar](3) NOT NULL,
 CONSTRAINT [PK_cities] PRIMARY KEY CLUSTERED 
(
	[citySource] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[flights]    Script Date: 26/10/2019 11:49:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[flights](
	[idFlight] [int] IDENTITY(1,1) NOT NULL,
	[citySource] [char](3) NOT NULL,
	[cityDestination] [char](3) NOT NULL,
	[departureDateTime] [datetime] NOT NULL,
	[planeNumber] [varchar](50) NOT NULL,
	[pilotName] [varchar](100) NOT NULL,
 CONSTRAINT [PK_flights] PRIMARY KEY CLUSTERED 
(
	[idFlight] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[flightsUsers]    Script Date: 26/10/2019 11:49:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[flightsUsers](
	[idFlightUser] [int] IDENTITY(1,1) NOT NULL,
	[idFlight] [int] NOT NULL,
	[documentNumber] [int] NOT NULL,
 CONSTRAINT [PK_flightsUsers] PRIMARY KEY CLUSTERED 
(
	[idFlightUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 26/10/2019 11:49:22 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[idUser] [int] IDENTITY(1,1) NOT NULL,
	[userName] [varchar](100) NOT NULL,
	[documentType] [char](3) NOT NULL,
	[documentNumber] [int] NOT NULL,
	[email] [varchar](100) NOT NULL,
	[phoneNumber] [varchar](20) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[documentNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cities] ON 

INSERT [dbo].[cities] ([idCity], [cityName], [citySource], [countrySorce]) VALUES (6, N'Bucaramanga', N'BGA', N'COL')
INSERT [dbo].[cities] ([idCity], [cityName], [citySource], [countrySorce]) VALUES (1, N'Bogotá', N'BOG', N'COL')
INSERT [dbo].[cities] ([idCity], [cityName], [citySource], [countrySorce]) VALUES (4, N'Cali', N'CTG', N'COL')
INSERT [dbo].[cities] ([idCity], [cityName], [citySource], [countrySorce]) VALUES (7, N'Cúcuta', N'CUC', N'COL')
INSERT [dbo].[cities] ([idCity], [cityName], [citySource], [countrySorce]) VALUES (3, N'Medellín', N'MDE', N'COL')
INSERT [dbo].[cities] ([idCity], [cityName], [citySource], [countrySorce]) VALUES (8, N'Montería', N'MTR', N'COL')
SET IDENTITY_INSERT [dbo].[cities] OFF
SET IDENTITY_INSERT [dbo].[flights] ON 

INSERT [dbo].[flights] ([idFlight], [citySource], [cityDestination], [departureDateTime], [planeNumber], [pilotName]) VALUES (1, N'BOG', N'MTR', CAST(N'2018-10-30T00:00:00.000' AS DateTime), N'001', N'Zarah Rodriguez')
INSERT [dbo].[flights] ([idFlight], [citySource], [cityDestination], [departureDateTime], [planeNumber], [pilotName]) VALUES (2, N'CTG', N'BOG', CAST(N'2018-10-30T10:00:00.000' AS DateTime), N'002', N'Yhon Cruz')
INSERT [dbo].[flights] ([idFlight], [citySource], [cityDestination], [departureDateTime], [planeNumber], [pilotName]) VALUES (3, N'BGA', N'BOG', CAST(N'2018-10-31T00:00:00.000' AS DateTime), N'003', N'Andrés Wilches')
INSERT [dbo].[flights] ([idFlight], [citySource], [cityDestination], [departureDateTime], [planeNumber], [pilotName]) VALUES (4, N'BGA', N'BOG', CAST(N'2018-10-31T00:00:00.000' AS DateTime), N'003', N'Andrés Wilches')
INSERT [dbo].[flights] ([idFlight], [citySource], [cityDestination], [departureDateTime], [planeNumber], [pilotName]) VALUES (5, N'CUC', N'MDE', CAST(N'2018-10-31T12:00:00.000' AS DateTime), N'004', N'Andrés Wilches')
SET IDENTITY_INSERT [dbo].[flights] OFF
SET IDENTITY_INSERT [dbo].[flightsUsers] ON 

INSERT [dbo].[flightsUsers] ([idFlightUser], [idFlight], [documentNumber]) VALUES (23, 1, 1019022241)
INSERT [dbo].[flightsUsers] ([idFlightUser], [idFlight], [documentNumber]) VALUES (24, 2, 1016754745)
INSERT [dbo].[flightsUsers] ([idFlightUser], [idFlight], [documentNumber]) VALUES (25, 2, 1000754748)
SET IDENTITY_INSERT [dbo].[flightsUsers] OFF
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([idUser], [userName], [documentType], [documentNumber], [email], [phoneNumber]) VALUES (5, N'Laura Rodriguez Rico', N'CC ', 1000111457, N'laurh@gmail.com', N'3511145154')
INSERT [dbo].[users] ([idUser], [userName], [documentType], [documentNumber], [email], [phoneNumber]) VALUES (7, N'Julieth Pinto', N'CC ', 1000754748, N'julieth@gmail.com', N'34547444458')
INSERT [dbo].[users] ([idUser], [userName], [documentType], [documentNumber], [email], [phoneNumber]) VALUES (2, N'Jair Rodriguez', N'CC ', 1016034447, N'jair@gmail.com', N'3200044474')
INSERT [dbo].[users] ([idUser], [userName], [documentType], [documentNumber], [email], [phoneNumber]) VALUES (1, N'Steven Rodriguez', N'CC ', 1016034544, N'steven@gmail.com', N'3142816206')
INSERT [dbo].[users] ([idUser], [userName], [documentType], [documentNumber], [email], [phoneNumber]) VALUES (4, N'Maria Sierra', N'CC ', 1016664445, N'luzm@gmail.com', NULL)
INSERT [dbo].[users] ([idUser], [userName], [documentType], [documentNumber], [email], [phoneNumber]) VALUES (3, N'Jaime Rivera', N'CC ', 1016754745, N'jaimer@gmail.com', N'3004555847')
INSERT [dbo].[users] ([idUser], [userName], [documentType], [documentNumber], [email], [phoneNumber]) VALUES (6, N'Katerine Rodriguez', N'CC ', 1019022241, N'kte@gmail.com', N'3054744447')
SET IDENTITY_INSERT [dbo].[users] OFF
ALTER TABLE [dbo].[flights]  WITH CHECK ADD  CONSTRAINT [FK_flights_cities] FOREIGN KEY([citySource])
REFERENCES [dbo].[cities] ([citySource])
GO
ALTER TABLE [dbo].[flights] CHECK CONSTRAINT [FK_flights_cities]
GO
ALTER TABLE [dbo].[flightsUsers]  WITH CHECK ADD  CONSTRAINT [FK_flightsUsers_flights] FOREIGN KEY([idFlight])
REFERENCES [dbo].[flights] ([idFlight])
GO
ALTER TABLE [dbo].[flightsUsers] CHECK CONSTRAINT [FK_flightsUsers_flights]
GO
ALTER TABLE [dbo].[flightsUsers]  WITH CHECK ADD  CONSTRAINT [FK_flightsUsers_users1] FOREIGN KEY([documentNumber])
REFERENCES [dbo].[users] ([documentNumber])
GO
ALTER TABLE [dbo].[flightsUsers] CHECK CONSTRAINT [FK_flightsUsers_users1]
GO
