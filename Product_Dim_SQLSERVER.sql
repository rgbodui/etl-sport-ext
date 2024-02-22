USE [DWH_Orion]
GO


/****** Object:  Table [dbo].[Customer_Dim]    Script Date: 10/11/2018 17:48:08 ******/
SET ANSI_NULLS ON
GO

DROP TABLE [dbo].[Product_Dim]
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Product_Dim](
	[Product_ID] [bigint] NOT NULL,
	[Product_Line] [nvarchar](20) NULL,
	[Product_Category] [nvarchar](25) NULL,
	[Product_Group] [nvarchar](25) NULL,
	[Product_Name] [nvarchar](45) NULL,
	[Supplier_Country] [nvarchar](2) NULL,
	[Supplier_Name] [nvarchar] (30) NULL,
	[Supplier_ID] int NULL
) ON [PRIMARY]
GO


