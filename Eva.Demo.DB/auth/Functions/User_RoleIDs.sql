--Eva
CREATE	FUNCTION	[auth].[User#RoleIDs](@userID bigint)
RETURNS	TABLE
AS RETURN
(
	with	cte(text) as
	(
		select	[text()]=concat(',', RoleID)
		from	auth._UserRole
		where	UserID=@userID
		for xml path (N'')
	)
	select	RoleIDs=stuff(text, 1, 1, N'') from cte
)
