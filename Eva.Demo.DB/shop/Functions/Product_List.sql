--Eva
CREATE	FUNCTION	[shop].[Product$List]()
RETURNS TABLE
AS RETURN
(
	select	ID, Description, Price, TotalQty, LockedQty, CreatedOn
	from	invt.Product#List()
)
