insert	invt._Product
(		Description
,		DetailInfo
,		TotalQty, LockedQty, Price)
select	concat(format(getutcdate(), 'HH-mm-ss yyyy-MM-dd '),N'Train service')
,		N'More info please contact us.'
,		2000,     686,       x.RawAmt
from	acct.Currency#ID() k
cross	apply acct.Money#Raw(1200, k.HKD) x
