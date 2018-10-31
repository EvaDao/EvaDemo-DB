--Eva
CREATE	FUNCTION core.User#Type()
RETURNS TABLE
AS RETURN
(
	select	1  as Customer
	,		2  as Employee
	,		3  as Partner
	,		99 as Others
)