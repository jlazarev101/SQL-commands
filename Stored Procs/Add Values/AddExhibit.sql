CREATE PROC [uspInsertNewValuesExhibit]
(
	@nm VARCHAR(50),
	@do date,
	@cid int
)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM [Exhibit]
	WHERE Name = @nm
	)
	BEGIN
		UPDATE [Exhibit] SET
			Name = @nm,
			DateOpened = @do,
			CuratorID = @cid
		PRINT 'Exhibit Data Updated'
	END
ELSE
	BEGIN
		INSERT INTO [Exhibit] VALUES (@nm, @do, @cid)
		PRINT 'New Exhibit Data Inserted'
	END
END