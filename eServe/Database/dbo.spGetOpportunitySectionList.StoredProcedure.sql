USE [eServe]
GO
/****** Object:  StoredProcedure [dbo].[spGetOpportunitySectionList]    Script Date: 3/24/2015 11:11:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spGetOpportunitySectionList]	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
		o.Name as OpportunityName,
		cp.OrganizationName,
		s.SectionName,
		c.CourseName,
		p.FirstName + ' ' + p.LastName as ProfessorName,
		q.QuarterName,
		s.NumberOfSlots
	FROM
		Opportunity_Section os
	INNER JOIN
		Section s
	ON
		os.SectionID = s.SectionID
	INNER JOIN
		Opportunity o
	ON
		os.OpportunityID = o.OpportunityID
	INNER JOIN
		CommunityPartners cp
	ON
		o.CPID = cp.CPID
	INNER JOIN
		Class c
	ON
		s.CourseID = c.CourseID
	INNER JOIN
		Professor p
	ON
		s.ProfessorID = p.ProfessorID
	INNER JOIN
		Quarter q
	ON
		s.QuarterID = q.QuarterID

END


GO
