﻿--Eva
CREATE	FUNCTION	[invt].[Product#List]()
RETURNS TABLE
AS RETURN
(
	select	ID, Description, Price, TotalQty, LockedQty, CreatedOn
	from	invt._Product
)
