USE [FoodDB]
GO

/****** Object:  Table [dbo].[order_details]    Script Date: 8/26/2024 10:46:22 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[order_details](
	[OrderID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[Name] [varchar](50) NULL,
	[Food] [int] NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


