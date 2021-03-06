USE [eServe]
GO
/****** Object:  View [dbo].[StudentsByFocusArea]    Script Date: 3/24/2015 11:11:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[StudentsByFocusArea]
as
select Student.StudentID as StudentID,Student.FirstName as FirstName,Student.LastName as LastName, FocusArea.FocusAreaID as FocusAreaID, FocusArea.AreaName as AreaName from Student
join Student_FocusArea
on Student.StudentID = Student_FocusArea.StudentID
join FocusArea
on FocusArea.FocusAreaID =  Student_FocusArea.FocusAreaID
GO
