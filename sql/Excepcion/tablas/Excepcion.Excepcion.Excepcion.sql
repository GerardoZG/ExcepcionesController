USE [Excepcion]
GO

/****** Object:  Table [Excepcion].[Excepcion]    Script Date: 31/01/2019 06:06:53 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Excepcion].[Excepcion](
	[idExcepcion] [int] IDENTITY(1,1) NOT NULL,
	[idTipoExcepcion] [int] NOT NULL,
	[idUsuario] [int] NULL,
	[idOperacion] [int] NULL,
	[idEstatus] [int] NOT NULL,
	[fechaExcepcion] [datetime] NOT NULL,
	[moduloExcepcion] [nvarchar](max) NULL,
	[mensajeExcepcion] [nvarchar](max) NOT NULL,
	[stacktraceExcepcion] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Excepcion] PRIMARY KEY CLUSTERED 
(
	[idExcepcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [Excepcion].[Excepcion]  WITH CHECK ADD  CONSTRAINT [FK_Excepcion_Estatus] FOREIGN KEY([idEstatus])
REFERENCES [Excepcion].[Estatus] ([idEstatus])
GO

ALTER TABLE [Excepcion].[Excepcion] CHECK CONSTRAINT [FK_Excepcion_Estatus]
GO

ALTER TABLE [Excepcion].[Excepcion]  WITH CHECK ADD  CONSTRAINT [FK_Excepcion_Operacion] FOREIGN KEY([idOperacion])
REFERENCES [Excepcion].[Operacion] ([idOperacion])
GO

ALTER TABLE [Excepcion].[Excepcion] CHECK CONSTRAINT [FK_Excepcion_Operacion]
GO

ALTER TABLE [Excepcion].[Excepcion]  WITH CHECK ADD  CONSTRAINT [FK_Excepcion_TipoExcepcion] FOREIGN KEY([idTipoExcepcion])
REFERENCES [Excepcion].[TipoExcepcion] ([idTipoExcepcion])
GO

ALTER TABLE [Excepcion].[Excepcion] CHECK CONSTRAINT [FK_Excepcion_TipoExcepcion]
GO

ALTER TABLE [Excepcion].[Excepcion]  WITH CHECK ADD  CONSTRAINT [FK_Excepcion_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [Excepcion].[Usuario] ([idUsuario])
GO

ALTER TABLE [Excepcion].[Excepcion] CHECK CONSTRAINT [FK_Excepcion_Usuario]
GO


