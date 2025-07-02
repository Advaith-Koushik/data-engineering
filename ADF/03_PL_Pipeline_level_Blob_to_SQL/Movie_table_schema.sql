USE [Advaithsqldb]
GO

/****** Object:  Table [dbo].[movies]******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[movies](
	[movieId] [varchar](50) NULL,
	[title] [varchar](max) NULL,
	[genres] [varchar](max) NULL
)

GO

SET ANSI_PADDING OFF
GO

