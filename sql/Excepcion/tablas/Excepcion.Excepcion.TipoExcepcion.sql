USE [Excepcion]
GO

/****** Object:  Table [Excepcion].[TipoExcepcion]    Script Date: 31/01/2019 06:32:06 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Excepcion].[TipoExcepcion](
	[idTipoExcepcion] [int] IDENTITY(1,1) NOT NULL,
	[idOrigen] [int] NOT NULL,
	[nombreTipoExcepcion] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_TipoExcepcion] PRIMARY KEY CLUSTERED 
(
	[idTipoExcepcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Excepcion].[TipoExcepcion]  WITH CHECK ADD  CONSTRAINT [FK_TipoExcepcion_Origen] FOREIGN KEY([idOrigen])
REFERENCES [Excepcion].[Origen] ([idOrigen])
GO

ALTER TABLE [Excepcion].[TipoExcepcion] CHECK CONSTRAINT [FK_TipoExcepcion_Origen]
GO


