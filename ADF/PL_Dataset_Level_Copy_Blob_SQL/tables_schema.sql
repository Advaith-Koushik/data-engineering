USE [Advaithsqldb]
GO

/****** Object:  Table [dbo].[planes] ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[planes](
	[ICAO] [varchar](500) NULL,
	[IATA] [varchar](500) NULL,
	[MAKER] [varchar](500) NULL,
	[DESCRIPTION] [varchar](500) NULL
)

GO

SET ANSI_PADDING OFF
GO

