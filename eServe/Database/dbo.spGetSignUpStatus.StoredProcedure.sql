USE [eServe]
GO
/****** Object:  StoredProcedure [dbo].[spGetSignUpStatus]    Script Date: 3/24/2015 11:11:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spGetSignUpStatus]
@StudentID int,
@OpportunityID int
as
Begin
Select OpportunityID,StudentID, SignUpStatus
from SignUpFor
End

GO
