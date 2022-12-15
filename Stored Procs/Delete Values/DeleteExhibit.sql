CREATE PROCEDURE uspDeleteValuesExhibit(@eid int)
as
delete from Exhibit where ExhibitID = @eid