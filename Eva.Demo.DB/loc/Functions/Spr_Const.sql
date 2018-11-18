--Eva
CREATE	FUNCTION loc.Spr#Const()
RETURNS TABLE
AS RETURN
(
	select	N'^^^ ^^^'  as [Space]
	,		N'^^^,^^^'  as [Comma]
)