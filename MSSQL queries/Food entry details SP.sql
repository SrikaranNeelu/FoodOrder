USE [FoodDB]
GO

/****** Object:  StoredProcedure [dbo].[Food_Entrydetails1]    Script Date: 8/26/2024 10:48:13 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[Food_Entrydetails1]
	@type varchar(20),
	@Restaurant varchar(20),
	@Food varchar(20),
	@Quantity int=null,
	@Price decimal=null
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	if(@type='select')
	SELECT * from [dbo].[Food_details];
	else if(@type='insert')
	insert into [dbo].[Food_details] values(@Restaurant,@Food,@Quantity,@Price);
END
GO


