USE [FoodDB]
GO

/****** Object:  StoredProcedure [dbo].[Food_Orderdetails]    Script Date: 8/26/2024 10:49:18 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Food_Orderdetails]
	@type varchar(20),
	@UserId int=null,
	@Name varchar(20),
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
	SELECT * from order_details;
	else if(@type='insert')
	insert into order_details values(@UserId,@Name,@Food,@Quantity,@Price);
	else if(@type='delete')
	delete from order_details where OrderID = @Food;
	

END
GO


