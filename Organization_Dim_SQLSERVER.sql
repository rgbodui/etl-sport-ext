USE [DWH_Orion]
GO

/****** Object:  Table [dbo].[Organization_Dim]    Script Date: 10/11/2018 17:37:56 ******/
DROP TABLE [dbo].[Organization_Dim]
GO

/****** Object:  Table [dbo].[Organization_Dim]    Script Date: 10/11/2018 17:37:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Organization_Dim](
	[Employee_ID] int IDENTITY (1,1) NOT NULL,
	CONSTRAINT PK_Organization_Dim_Employee_ID PRIMARY KEY CLUSTERED (Employee_ID),
	[Employee_Country] [nchar](2) NULL,
	[Company] [nchar](30) NULL,
	[Department] [nchar](40) NULL,
	[Section] [nchar](40) NULL,
	[Org_Group] [nchar](40) NULL,
	[Job_title] [nchar](25) NULL,
	[Employee_Name] [nchar](40) NULL,
	[Employee_Gender] [nchar](1) NULL,
	[Salary] [decimal](13,0) NULL,
	[Employee_Birth_Date] [date] NULL,
	[Employee_Hire_Date] [date] NULL,
	[Employee_Term_Date] [date] NULL
) ON [PRIMARY]
GO


