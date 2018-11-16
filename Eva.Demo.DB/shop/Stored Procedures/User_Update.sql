CREATE PROCEDURE shop.User#Update
(
	@userID bigint, @surname Alias, @phone Phone, @email Email, @country Country,
	@state   Alias, @city    Alias, @address1 Address, @address2 Address
)
AS
BEGIN
	SET NOCOUNT    ON;

	exec	core.User#Update @userID=@userID, @surname=@surname, @phone=@phone, @email=@email, @country=@country,
							 @state =@state,  @city=@city, @address1=@address1, @address2=@address2

END