USE [Excepcion]
GO

/****** Object:  StoredProcedure [Excepcion].[INS_EXCEPCION_SP]    Script Date: 31/01/2019 06:36:18 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Gerardo Zamudio>
-- Create date: <30/01/2019>
-- Description:	<Agregar Excepciones>
-- =============================================
/*
	Fecha		Autor	Descripción 
	--2019

	*- Testing...
	DECLARE @salida varchar(max) ;
	EXEC [Excepcion].[INS_EXCEPCION_SP]
		@idTipoExcepcion= 1,
	    @idUsuario= 1, 
		@mensajeExcepcion = 'mi msj', 
		@stacktraceExcepcion ='stack....', 
		@err = @salida OUTPUT;

	SELECT @salida AS salida;
*/
-- =============================================
CREATE PROCEDURE [Excepcion].[INS_EXCEPCION_SP]
	@idTipoExcepcion		int,
	@idUsuario				int,
	@idOperacion			int = null,
	@moduloExcepcion		nvarchar(max) = '',
	@mensajeExcepcion		nvarchar(max),
	@stacktraceExcepcion	nvarchar(max),
	@err					varchar(max) OUTPUT
AS
BEGIN
	SET @err = '';
	
	INSERT INTO [Excepcion].[Excepcion] 
		(
			idTipoExcepcion,
			idUsuario,
			idOperacion,
			idEstatus,
			fechaExcepcion,
			moduloExcepcion,
			mensajeExcepcion,
			stacktraceExcepcion
		) 
	VALUES 
		(
			@idTipoExcepcion, 
			@idUsuario, 
			@idOperacion, 
			1, 
			getdate(), 
			@moduloExcepcion, 
			@mensajeExcepcion, 
			@stacktraceExcepcion
		)

	SELECT 'Insertado' as result
	 
END
GO


