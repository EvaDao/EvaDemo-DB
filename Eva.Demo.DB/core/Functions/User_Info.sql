--Eva
CREATE	FUNCTION	[core].[User#Info](@id bigint)
RETURNS TABLE
AS RETURN
(
	select	ID, Name, Surname, Phone, Email, Country, State, City, Address1, Address2
	from	core._User
	where	ID=@id
)
