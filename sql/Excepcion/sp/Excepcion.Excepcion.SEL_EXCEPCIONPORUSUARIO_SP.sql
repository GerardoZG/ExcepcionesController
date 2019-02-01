USE [Excepcion]
GO

/****** Object:  StoredProcedure [Excepcion].[SEL_EXCEPCIONPORUSUARIO_SP]    Script Date: 31/01/2019 06:39:21 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Gerardo Zamudio>
-- Create date: <30/01/2019>
-- Description:	<Obtener Excepcion por Usuario>
-- =============================================
/*
	Fecha:31/01/2019		Autor	Descripción 
	--2019

	*- Testing...
	DECLARE @salida varchar(max) ;
	EXEC [Excepcion].[GetExcepUsuario]
		@idUsuario = 1,
		@err = @salida OUTPUT;
	SELECT @salida AS salida;
*/
-- =============================================
CREATE PROCEDURE [Excepcion].[SEL_EXCEPCIONPORUSUARIO_SP]

	@idUsuario			int,
	@err				varchar(max) OUTPUT

AS
BEGIN
	SET @err = ''

	SELECT * FROM [Excepcion].[Excepcion] 
	WHERE idUsuario = @idUsuario;
END
GO


