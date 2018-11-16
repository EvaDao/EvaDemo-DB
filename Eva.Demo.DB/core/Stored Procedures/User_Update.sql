CREATE PROCEDURE core.User#Update
(
	@userID bigint, @surname Alias, @phone Phone, @email Email, @country Country,
	@state   Alias, @city    Alias, @address1 Address, @address2 Address
)
AS
BEGIN
	SET NOCOUNT    ON;

	with	cte as
	(
		select	*
		from	core._User
		where	ID=@userID
	)
	update cte set
	Surname=@surname, Phone=@phone, Email=@email, Country=@country,
	State=@state, City=@city, Address1=@address1, Address2=@address2

END