USE [Excepcion]
GO

/****** Object:  StoredProcedure [Excepcion].[SEL_EXCEPCIONPORID_SP]    Script Date: 31/01/2019 06:38:47 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Gerardo Zamudio>
-- Create date: <30/01/2019>
-- Description:	<Obtener Excepcion por Id Excepcion>
-- =============================================
/*
	Fecha:31/01/2019		Autor	Descripción 
	--2019

	*- Testing...
	DECLARE @salida varchar(max) ;
	EXEC [Excepcion].[GetExcepId]
		@idExcepcion = 2,
		@err = @salida OUTPUT;
	SELECT @salida AS salida;
*/
-- =============================================
CREATE PROCEDURE [Excepcion].[SEL_EXCEPCIONPORID_SP]
	@idExcepcion			int,
	@err					varchar(max) OUTPUT
AS

BEGIN
	 SET @err = '';

	SELECT * FROM [Excepcion].[Excepcion] 
	WHERE idExcepcion = @idExcepcion;
END
GO


