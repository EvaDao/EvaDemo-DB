--Eva
CREATE	FUNCTION loc.Comma#Slice(@info nvarchar(max))
RETURNS TABLE
AS RETURN
(
	select	Seq, Value
	from	loc.Spr#Split(@info, N',')
)