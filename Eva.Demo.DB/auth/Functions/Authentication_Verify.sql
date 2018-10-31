--Eva
CREATE	FUNCTION	[auth].[Authentication#Verify](@userName LoginName, @pwd Pwd)
RETURNS TABLE
AS RETURN
(
	select	UserID
	from	auth._Authentication
	where	UserName=@userName and Password=@pwd
)
