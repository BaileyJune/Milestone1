USE [eServe]
GO
/****** Object:  Table [dbo].[13FQ]    Script Date: 3/24/2015 11:11:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[13FQ](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Term] [varchar](50) NULL,
	[Course Section Name] [varchar](50) NULL,
	[''Course Section Title''] [varchar](50) NULL,
	[Course Section ID] [varchar](50) NULL,
	[Course Name] [varchar](50) NULL,
	[Core Section?] [varchar](50) NULL,
	[Minimum Credits] [varchar](50) NULL,
	[Maximum Credits] [varchar](50) NULL,
	[Has Cross Listed Sections?] [varchar](50) NULL,
	[Acad Level Code] [varchar](50) NULL,
	[Acad Level Description] [varchar](50) NULL,
	[Department Code] [varchar](50) NULL,
	[''Department Description''] [varchar](50) NULL,
	[School Code] [varchar](50) NULL,
	[''School Description''] [varchar](50) NULL,
	[First Faculty ID] [varchar](50) NULL,
	[''First Faculty First Name''] [varchar](50) NULL,
	[''First Faculty Last Name''] [varchar](50) NULL,
	[First Faculty Email] [varchar](50) NULL,
	[Instructional Method Code] [varchar](50) NULL,
	[Instructional Method Description] [varchar](50) NULL,
	[''CORE Code''] [varchar](50) NULL,
	[Student Registrations] [varchar](50) NULL,
	[Credit Hours Attempted] [varchar](50) NULL,
	[Credit Hours Earned] [varchar](50) NULL,
	[Column 25] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
SET ANSI_PADDING OFF
GO
