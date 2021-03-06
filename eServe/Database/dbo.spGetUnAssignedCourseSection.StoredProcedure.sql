USE [eServe]
GO
/****** Object:  StoredProcedure [dbo].[spGetUnAssignedCourseSection]    Script Date: 3/24/2015 11:11:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[spGetUnAssignedCourseSection]	
	@OpportunityID int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT		
		s.SectionID,
		c.CourseID,
		c.CourseName,
		c.ShortName	AS CourseShortName,
		s.RoomNumber,
		s.ClassHours,
		s.NumberOfSlots,
		q.QuarterName,
		q.ShortName AS QuarterShortName,
		s.SectionName
	FROM		
		Section s	
	INNER JOIN
		Class c
	ON
		s.CourseID = c.CourseID	
	INNER JOIN
		Quarter q
	ON
		s.QuarterID = q.QuarterID
	WHERE
		s.SectionID NOT IN 
		(SELECT SectionID FROM Opportunity_Section WHERE OpportunityID = @OpportunityID)
END




GO
