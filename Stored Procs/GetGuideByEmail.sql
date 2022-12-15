CREATE PROCEDURE uspGetGuideByEmail
@em varchar(100)

AS

IF @em is null
RETURN -1 -- this stops the proc

IF @em is not null
BEGIN
		SELECT *
		FROM Guide
		WHERE Email = @em 
END
