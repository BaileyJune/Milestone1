USE [eServe]
GO
/****** Object:  StoredProcedure [dbo].[spRegisterStudentOpportunity]    Script Date: 3/24/2015 11:11:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE Procedure [dbo].[spRegisterStudentOpportunity]
	@StudentId int, @OpportunityId int
AS
Begin
  SET NOCOUNT ON;

    -- Insert statements for procedure here
DECLARE @CPPID int
SELECT @CPPID = (SELECT CPPID FROM [dbo].[Opportunity] WHERE OpportunityId=@OpportunityId)

BEGIN
	IF NOT EXISTS (SELECT [StudentID]
						  ,[CPPID]
						  ,[OpportunityID]
					  FROM [dbo].[SignUpFor]
					  WHERE [StudentID]=@StudentId
						AND [CPPID]=@CPPID
						AND [OpportunityID]=@OpportunityId
					)
	BEGIN
	INSERT INTO [dbo].[SignUpFor] ([StudentID]
								  ,[CPPID]
								  ,[OpportunityID]
								  ,[SignUpStatus]
								  )
	VALUES (@StudentId, @CPPID, @OpportunityId, 'Pending')
	END
END
		

End




GO
