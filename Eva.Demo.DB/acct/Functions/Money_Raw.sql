--Eva
CREATE	FUNCTION [acct].[Money#Raw](@amt float, @currencyID tinyint)
RETURNS TABLE
AS RETURN
(
	select	RawAmt=iif(@amt>=0, 1, -1)*(abs(@amt*10000)+@currencyID)
)