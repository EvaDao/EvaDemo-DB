insert	auth._Role
(		ID, Alias)
select	Buyer, 'Buyer'
from	auth.Role#ID()
union	all
select	ProductEditor, 'ProductEditor'
from	auth.Role#ID()
;