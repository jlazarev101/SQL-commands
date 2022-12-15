CREATE PROCEDURE uspDeleteValuesDirector(@did int)
as
delete from Director where DirectorID = @did