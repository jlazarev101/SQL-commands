CREATE PROCEDURE uspCheckBetween2Dates
@d1 date,
@d2 date
AS
select * from Painting
where DatePainted between @d1 and @d2
