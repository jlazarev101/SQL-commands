CREATE PROCEDURE uspDeleteValuesConserver(@cid int)
as
delete from Conserver where ConserverID = @cid