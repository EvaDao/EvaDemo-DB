--Eva
CREATE PROCEDURE core.User#Add
(
	@type    tinyint, @name  Alias, @surName Alias, @phone      Phone, @email    Email,
	@country Country, @state Alias, @city    Alias, @address1 Address, @address2 Address
)
AS
BEGIN
	SET NOCOUNT ON;

	insert	core._User
			( Type,  Name, Surname,   Phone,  Email,  Country,  State,  City,  Address1, Address2)
	values	(@type, @name, @surName, @phone, @email, @country, @state, @city, @address1, @address2)
END
