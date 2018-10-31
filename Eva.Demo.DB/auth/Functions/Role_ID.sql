--Eva
CREATE	FUNCTION	[auth].[Role#ID]()
RETURNS TABLE
AS RETURN
(
	select	101 as Buyer
	,		102 as ProductEditor
)