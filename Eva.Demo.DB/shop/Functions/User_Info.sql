--Eva
CREATE	FUNCTION	[shop].[User$Info](@id bigint)
RETURNS TABLE
AS RETURN
(
	select	ID, Name, Surname, Phone, Email, Country, State, City, Address1, Address2
	from	core.User#Info(@id)
)
