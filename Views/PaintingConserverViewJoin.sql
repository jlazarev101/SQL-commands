CREATE VIEW PaintingConserverJoinASSELECT c.Firstname,c.Surname,c.Email,p.PaintingID,p.[Name]FROM Conserver cJOIN Painting pON p.PaintingID = p.PaintingID