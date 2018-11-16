--Eva
CREATE PROCEDURE core.User#Add
(
	@type    tinyint, @name  Alias, @surname Alias, @phone      Phone, @email    Email,
	@country Country, @state Alias, @city    Alias, @address1 Address, @address2 Address,
	@roleIDs nvarchar(max)
)
AS
BEGIN
	SET NOCOUNT    ON;
	SET XACT_ABORT ON;

	BEGIN TRY
		BEGIN	TRAN;

		declare	@userID bigint;
		select	@userID=next value for UserSeq;
		insert	core._User
		(		     ID,  Type,  Name, Surname,   Phone,  Email,  Country,  State,  City,  Address1, Address2)
		select	@userID, @type, @name, @surname, @phone, @email, @country, @state, @city, @address1, @address2;

		insert	auth._UserRole
		(		 UserID, RoleID)
		select	@userID, Value
		from	loc.Comma#Slice(@roleIDs)
		--
		COMMIT	TRAN;
	END TRY
	BEGIN CATCH
		if (xact_state() = -1) ROLLBACK TRAN; throw;
	END CATCH
END
