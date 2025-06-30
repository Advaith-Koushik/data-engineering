USE [Advaithsqldb]
GO

/****** Object:  Table [dbo].[cars] ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[cars](
	[Make] [varchar](50) NULL,
	[Model] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Origin] [varchar](50) NULL,
	[DriveTrain] [varchar](50) NULL,
	[Length] [int] NULL,
	[Mileage] [int] NULL
)

GO

SET ANSI_PADDING OFF
GO

