CREATE PROC [uspInsertNewValuesArtist]
(
	@fn VARCHAR(50),
	@sn VARCHAR(50),
	@am VARCHAR(50),
	@cy int
)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM [Artist]
	WHERE Surname=@sn
	)
	BEGIN
		UPDATE [Artist] SET
			Firstname = @fn,
			Surname = @sn,
			ArtisticMovement = @am,
			Century = @cy
		PRINT 'Artist Data Updated'
	END
ELSE
	BEGIN
		INSERT INTO [Artist] VALUES (@fn, @sn, @am, @cy)
		PRINT 'New Artist Data Inserted'
	END
END