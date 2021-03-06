
USE [Quest]
GO
/****** Object:  Table [dbo].[caroffer]    Script Date: 12/27/2021 12:14:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caroffer](
	[carofferID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[companyName] [nvarchar](350) NULL,
	[CarModel] [nvarchar](150) NULL,
	[CarMark] [nvarchar](150) NULL,
	[priceperday] [float] NULL,
	[contactCompany] [nvarchar](max) NULL,
 CONSTRAINT [PK_caroffer] PRIMARY KEY CLUSTERED 
(
	[carofferID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[entertainmentPlace]    Script Date: 12/27/2021 12:14:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[entertainmentPlace](
	[entertainmentPlaceID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[entName] [nvarchar](350) NULL,
	[entAddress] [nvarchar](350) NULL,
	[entDescr] [nvarchar](max) NULL,
	[entTypeID] [numeric](18, 0) NULL,
	[GovermentID] [numeric](18, 0) NULL,
 CONSTRAINT [PK_entertainmentPlace] PRIMARY KEY CLUSTERED 
(
	[entertainmentPlaceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[entertainType]    Script Date: 12/27/2021 12:14:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[entertainType](
	[entertainmentTypeID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[typeDescr] [nvarchar](150) NULL,
 CONSTRAINT [PK_entertainType] PRIMARY KEY CLUSTERED 
(
	[entertainmentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Governments]    Script Date: 12/27/2021 12:14:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Governments](
	[GovermentID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[GovName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Governments] PRIMARY KEY CLUSTERED 
(
	[GovermentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemUser]    Script Date: 12/27/2021 12:14:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemUser](
	[UserID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[UserTypeID] [numeric](18, 0) NULL,
	[UserEmail] [nvarchar](150) NULL,
 CONSTRAINT [PK_SystemUser] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TourCompany]    Script Date: 12/27/2021 12:14:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TourCompany](
	[tourCompID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CompName] [nvarchar](350) NULL,
	[ContactInfo] [nvarchar](max) NULL,
 CONSTRAINT [PK_TourCompany] PRIMARY KEY CLUSTERED 
(
	[tourCompID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tourOffer]    Script Date: 12/27/2021 12:14:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tourOffer](
	[OfferID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[PlaceDescr] [nvarchar](350) NULL,
	[offerDescr] [nvarchar](max) NULL,
	[CompanyID] [numeric](18, 0) NULL,
	[GovernID] [numeric](18, 0) NULL,
 CONSTRAINT [PK_offer] PRIMARY KEY CLUSTERED 
(
	[OfferID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userCarReservation]    Script Date: 12/27/2021 12:14:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userCarReservation](
	[userCarReservationID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[carofferID] [numeric](18, 0) NULL,
	[datefrom] [datetime] NULL,
	[dateto] [datetime] NULL,
	[isConfirmed] [numeric](18, 0) NULL,
	[userID] [numeric](18, 0) NULL,
 CONSTRAINT [PK_userCarReservation] PRIMARY KEY CLUSTERED 
(
	[userCarReservationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userTourReservation]    Script Date: 12/27/2021 12:14:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userTourReservation](
	[userTourReservationID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[userID] [numeric](18, 0) NULL,
	[TourID] [numeric](18, 0) NULL,
	[dateFrom] [datetime] NULL,
	[dateTo] [datetime] NULL,
	[numberOfPersons] [numeric](18, 0) NULL,
	[isConfirmend] [numeric](18, 0) NULL,
 CONSTRAINT [PK_userTourReservation] PRIMARY KEY CLUSTERED 
(
	[userTourReservationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 12/27/2021 12:14:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[UserTypeID] [numeric](18, 0) NOT NULL,
	[TypeDescr] [nvarchar](350) NULL,
 CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
(
	[UserTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[entertainmentPlace]  WITH CHECK ADD  CONSTRAINT [FK_entertainmentPlace_entertainType] FOREIGN KEY([entTypeID])
REFERENCES [dbo].[entertainType] ([entertainmentTypeID])
GO
ALTER TABLE [dbo].[entertainmentPlace] CHECK CONSTRAINT [FK_entertainmentPlace_entertainType]
GO
ALTER TABLE [dbo].[entertainmentPlace]  WITH CHECK ADD  CONSTRAINT [FK_entertainmentPlace_Governments] FOREIGN KEY([GovermentID])
REFERENCES [dbo].[Governments] ([GovermentID])
GO
ALTER TABLE [dbo].[entertainmentPlace] CHECK CONSTRAINT [FK_entertainmentPlace_Governments]
GO
ALTER TABLE [dbo].[SystemUser]  WITH CHECK ADD  CONSTRAINT [FK_SystemUser_UserType] FOREIGN KEY([UserTypeID])
REFERENCES [dbo].[UserType] ([UserTypeID])
GO
ALTER TABLE [dbo].[SystemUser] CHECK CONSTRAINT [FK_SystemUser_UserType]
GO
ALTER TABLE [dbo].[tourOffer]  WITH CHECK ADD  CONSTRAINT [FK_tourOffer_Governments] FOREIGN KEY([GovernID])
REFERENCES [dbo].[Governments] ([GovermentID])
GO
ALTER TABLE [dbo].[tourOffer] CHECK CONSTRAINT [FK_tourOffer_Governments]
GO
ALTER TABLE [dbo].[tourOffer]  WITH CHECK ADD  CONSTRAINT [FK_tourOffer_TourCompany] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[TourCompany] ([tourCompID])
GO
ALTER TABLE [dbo].[tourOffer] CHECK CONSTRAINT [FK_tourOffer_TourCompany]
GO
ALTER TABLE [dbo].[userCarReservation]  WITH CHECK ADD  CONSTRAINT [FK_userCarReservation_caroffer] FOREIGN KEY([carofferID])
REFERENCES [dbo].[caroffer] ([carofferID])
GO
ALTER TABLE [dbo].[userCarReservation] CHECK CONSTRAINT [FK_userCarReservation_caroffer]
GO
ALTER TABLE [dbo].[userCarReservation]  WITH CHECK ADD  CONSTRAINT [FK_userCarReservation_SystemUser] FOREIGN KEY([userID])
REFERENCES [dbo].[SystemUser] ([UserID])
GO
ALTER TABLE [dbo].[userCarReservation] CHECK CONSTRAINT [FK_userCarReservation_SystemUser]
GO
ALTER TABLE [dbo].[userTourReservation]  WITH CHECK ADD  CONSTRAINT [FK_userTourReservation_SystemUser] FOREIGN KEY([userID])
REFERENCES [dbo].[SystemUser] ([UserID])
GO
ALTER TABLE [dbo].[userTourReservation] CHECK CONSTRAINT [FK_userTourReservation_SystemUser]
GO
ALTER TABLE [dbo].[userTourReservation]  WITH CHECK ADD  CONSTRAINT [FK_userTourReservation_tourOffer] FOREIGN KEY([TourID])
REFERENCES [dbo].[tourOffer] ([OfferID])
GO
ALTER TABLE [dbo].[userTourReservation] CHECK CONSTRAINT [FK_userTourReservation_tourOffer]
GO
USE [master]
GO
ALTER DATABASE [Quest] SET  READ_WRITE 
GO
