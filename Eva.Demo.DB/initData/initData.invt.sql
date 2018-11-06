insert	invt._Product
(		Description
,		DetailInfo
,		TotalQty, LockedQty, Price)
select	N'HongKong local truck service'
,		N'You can use our truck service for trans.'
,		2000,     310,       x.RawAmt
from	acct.Currency#ID() k
cross	apply acct.Money#Raw(1200, k.HKD) x
