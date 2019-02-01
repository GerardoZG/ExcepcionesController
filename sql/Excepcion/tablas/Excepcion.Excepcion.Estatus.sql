USE [Excepcion]
GO

/****** Object:  Table [Excepcion].[Estatus]    Script Date: 31/1/2019 13:04:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Excepcion].[Estatus](
	[idEstatus] [int] IDENTITY(1,1) NOT NULL,
	[nombreEstatus] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Estatus] PRIMARY KEY CLUSTERED 
(
	[idEstatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


