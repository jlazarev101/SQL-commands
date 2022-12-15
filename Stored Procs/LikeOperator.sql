CREATE PROCEDURE uspLikeOperatorCurator
@param char(1)
AS
	select * from Curator
	where CuratorID like '%' + @param + '%'