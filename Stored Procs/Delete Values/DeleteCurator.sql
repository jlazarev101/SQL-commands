CREATE PROCEDURE uspDeleteValuesCurator(@cid int)
as
delete from Curator where CuratorID = @cid