USE [eServe]
GO
/****** Object:  StoredProcedure [dbo].[spGetOpportunityType]    Script Date: 3/24/2015 11:11:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetOpportunityType]	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
		TypeID as OpportunityTypeID,
		Name		
	FROM
		OpportunityType
END
GO
