﻿--Eva
CREATE	FUNCTION	[invt].[Product#Detail](@id bigint)
RETURNS TABLE
AS RETURN
(
	select	ID, Description, DetailInfo, Price, TotalQty, LockedQty
	from	invt._Product
	where	ID=@id
)