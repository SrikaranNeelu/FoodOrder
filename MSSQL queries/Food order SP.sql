USE [FoodDB]
GO

/****** Object:  StoredProcedure [dbo].[Food_Order]    Script Date: 8/26/2024 10:48:51 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Food_Order]
	@Type varchar (20),
	@UserId int=null,
	@Name varchar(20)=null,
	@Phone varchar(20)=null,
	@Email varchar(20)=null

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@Type='SELECT')
	SELECT * from Users;
	else if(@Type='INSERT')
	insert into Users (Name,Phone,Email)values(@Name,@Phone,@Email);
END
GO


