CREATE PROCEDURE uspDeleteValuesPainting(@pid int)
as
delete from Painting where PaintingID = @pid