USE [eServe]
GO
/****** Object:  Table [dbo].[SignUpFor]    Script Date: 3/24/2015 11:11:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SignUpFor](
	[StudentID] [int] NOT NULL,
	[CPPID] [int] NULL,
	[OpportunityID] [int] NOT NULL,
	[SignUpStatus] [nvarchar](10) NOT NULL,
	[StudentReflection] [nvarchar](max) NULL,
	[PartnerEvaluation] [nvarchar](max) NULL,
	[StudentEvaluation] [nvarchar](max) NULL,
 CONSTRAINT [PK_SignUpID] PRIMARY KEY CLUSTERED 
(
	[OpportunityID] ASC,
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
ALTER TABLE [dbo].[SignUpFor] ADD  CONSTRAINT [DF_SignUpStatus]  DEFAULT ('Pending') FOR [SignUpStatus]
GO
ALTER TABLE [dbo].[SignUpFor]  WITH CHECK ADD  CONSTRAINT [FK_CommunityPerson] FOREIGN KEY([CPPID])
REFERENCES [dbo].[CommunityPartnersPeople] ([CPPID])
GO
ALTER TABLE [dbo].[SignUpFor] CHECK CONSTRAINT [FK_CommunityPerson]
GO
