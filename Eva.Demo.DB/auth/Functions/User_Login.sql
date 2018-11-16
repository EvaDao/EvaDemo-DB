--Eva
CREATE	FUNCTION	[auth].[User#Login](@userName LoginName, @pwd Pwd)
RETURNS TABLE
AS RETURN
(
	select	u.ID, u.Name, u.Surname, u.Type, r.RoleIDs
	from	auth.Authentication#Verify(@userName, @pwd) a
	join	core._User     u on a.UserID=u.ID
	cross	apply auth.User#RoleIDs(u.ID) r
)
