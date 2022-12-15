CREATE PROC [uspInsertNewValuesGuide]
(
	@fn VARCHAR(50),
	@sn VARCHAR(50),
	@em VARCHAR(100),
	@dh datetime,
	@eid int
)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM [Guide]
	WHERE Email=@em
	)
	BEGIN
		UPDATE [Guide] SET
			Firstname = @fn,
			Surname = @sn,
			Email = @em,
			DateHired = @dh,
			ExhibitID = @eid
		PRINT 'Guide Data Updated'
	END
ELSE
	BEGIN
		INSERT INTO [Guide] VALUES (@fn, @sn, @em, @dh, @eid)
		PRINT 'New Guide Data Inserted'
	END
END

