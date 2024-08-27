USE [FoodDB]
GO

/****** Object:  Table [dbo].[Cancel_orders]    Script Date: 8/26/2024 10:44:47 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Cancel_orders](
	[CancelID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[Food] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CancelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Cancel_orders]  WITH CHECK ADD  CONSTRAINT [FK_Cancel_orders_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Cancel_orders] CHECK CONSTRAINT [FK_Cancel_orders_Users]
GO


