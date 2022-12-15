CREATE PROC [uspInsertNewValuesDirector]
(
	@fn VARCHAR(50),
	@sn VARCHAR(50),
	@em VARCHAR(100),
	@dh datetime
)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM [Director]
	WHERE Email=@em
	)
	BEGIN
		UPDATE [Director] SET
			Firstname = @fn,
			Surname = @sn,
			Email = @em,
			DateHired = @dh
		PRINT 'Director Data Updated'
	END
ELSE
	BEGIN
		INSERT INTO [Director] VALUES (@fn, @sn, @em, @dh)
		PRINT 'New Director Data Inserted'
	END
END