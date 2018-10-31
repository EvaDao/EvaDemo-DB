--Eva
CREATE	FUNCTION	[auth].[User#Login](@userName LoginName, @pwd Pwd)
RETURNS TABLE
AS RETURN
(
	select	u.ID, u.Name, u.Surname, u.Type
	from	auth.Authentication#Verify(@userName, @pwd) a
	join	core._User     u on a.UserID=u.ID
	join	auth._UserRole r on r.UserID=u.ID
)
