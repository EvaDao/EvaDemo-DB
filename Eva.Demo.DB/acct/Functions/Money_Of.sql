--Eva
CREATE	FUNCTION [acct].[Money#Of](@amt bigint)
RETURNS TABLE
AS RETURN
(
	select	CurrencyID=isnull(cast(abs(@amt)%100 as tinyint), 0)
	,		DecAmt    =isnull(cast((@amt/100) as float)/100.0, 0.0)
	,		RawAmt    =isnull((@amt/100)*100, 0)
)