--Eva
CREATE	FUNCTION	[shop].[Product$Detail](@id bigint)
RETURNS TABLE
AS RETURN
(
	select	ID, Description, DetailInfo, Price, TotalQty, LockedQty, CreatedOn
	from	invt.Product#Detail(@id)
)
