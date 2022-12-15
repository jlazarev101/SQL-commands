CREATE PROCEDURE uspDeleteValuesArtist(@aid int)
as
delete from Artist where ArtistID = @aid

