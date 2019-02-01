USE [Excepcion]
GO

/****** Object:  Table [Excepcion].[Origen]    Script Date: 31/01/2019 06:30:43 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Excepcion].[Origen](
	[idOrigen] [int] IDENTITY(1,1) NOT NULL,
	[nombreOrigen] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Origen] PRIMARY KEY CLUSTERED 
(
	[idOrigen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


