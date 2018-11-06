--Eva
CREATE	FUNCTION	[svc].[Product$List]()
RETURNS TABLE
AS RETURN
(
	select	ID, Description, Price, TotalQty, LockedQty
	from	invt.Product#List()
)
