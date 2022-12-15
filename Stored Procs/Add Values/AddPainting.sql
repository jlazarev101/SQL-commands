CREATE PROC [uspInsertNewValuesPainting]
(
	@nm VARCHAR(50),
	@dp date,
	@eid int,
	@aid int,
	@cid int
)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM [Painting]
	WHERE Name = @nm
	)
	BEGIN
		UPDATE [Painting] SET
			Name = @nm,
			DatePainted = @dp,
			ExhibitID = @eid,
			ArtistID = @aid,
			ConserverID = @cid
		PRINT 'Painting Data Updated'
	END
ELSE
	BEGIN
		INSERT INTO [Painting] VALUES (@nm, @dp, @eid, @aid, @cid)
		PRINT 'New Painting Data Inserted'
	END
END