CREATE PROC [uspInsertNewValuesConserver]
(
	@fn VARCHAR(50),
	@sn VARCHAR(50),
	@em VARCHAR(100),
	@dh datetime
)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM [Conserver]
	WHERE Email=@em
	)
	BEGIN
		UPDATE [Conserver] SET
			Firstname = @fn,
			Surname = @sn,
			Email = @em,
			DateHired = @dh
		PRINT 'Conserver Data Updated'
	END
ELSE
	BEGIN
		INSERT INTO [Conserver] VALUES (@fn, @sn, @em, @dh)
		PRINT 'New Conserver Data Inserted'
	END
END