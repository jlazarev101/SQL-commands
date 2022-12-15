CREATE PROCEDURE uspDeleteValuesGuide(@gid int)
as
delete from Guide where GuideID = @gid