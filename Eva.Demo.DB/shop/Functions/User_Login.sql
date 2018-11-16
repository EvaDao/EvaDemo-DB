--Eva
CREATE	FUNCTION	[shop].[User$Login](@userName LoginName, @pwd Pwd)
RETURNS TABLE
AS RETURN
(
	select	ID, Name, Surname, Type, RoleIDs
	from	auth.User#Login(@userName, @pwd)
)
