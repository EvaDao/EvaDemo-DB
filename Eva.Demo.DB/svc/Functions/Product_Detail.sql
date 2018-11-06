--Eva
CREATE	FUNCTION	[svc].[Product$Detail](@id bigint)
RETURNS TABLE
AS RETURN
(
	select	ID, Description, DetailInfo, Price, TotalQty, LockedQty
	from	invt.Product#Detail(@id)
)
