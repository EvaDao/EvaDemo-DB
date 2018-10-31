--Eva
CREATE	FUNCTION [acct].[Currency#ID]()
RETURNS TABLE
AS RETURN
(
	select	1  as USD
	,		2  as EUR
	,		3  as GBP
	,		4  as RMB
	,		5  as HKD
	,		6  as TWD
	,		7  as JPY
	--AND SO ON, CAN INCLUDE ALL CURRENCIES
)