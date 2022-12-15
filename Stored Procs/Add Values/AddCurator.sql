CREATE PROC [uspInsertNewValuesCurator]
(
	@fn VARCHAR(50),
	@sn VARCHAR(50),
	@em VARCHAR(100),
	@dh datetime,
	@did int
)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM [Curator]
	WHERE Email=@em
	)
	BEGIN
		UPDATE [Curator] SET
			Firstname = @fn,
			Surname = @sn,
			Email = @em,
			DateHired = @dh,
			DirectorID = @did
		PRINT 'Curator Data Updated'
	END
ELSE
	BEGIN
		INSERT INTO [Curator] VALUES (@fn, @sn, @em, @dh, @did)
		PRINT 'New Curator Data Inserted'
	END
END