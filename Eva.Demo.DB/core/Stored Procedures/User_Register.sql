--Eva
CREATE PROCEDURE core.User#Register
(
	@name  Alias, @pwd Pwd
)
AS
BEGIN
	SET NOCOUNT    ON;
	SET XACT_ABORT ON;

	BEGIN TRY
		BEGIN	TRAN;

		declare	@userID bigint
		,		@type   tinyint=(select Customer from core.User#Type());
		select	@userID=next value for UserSeq;
		insert	core._User
		(		     ID,  Type,  Name)
		select	@userID, @type, @name;

		insert	auth._Authentication
		(		UserName, Password, UserID)
		select	   @name,     @pwd, @userID;

		declare	@roleID int=(select Buyer from auth.Role#ID());
		insert	auth._UserRole
		(		 UserID, RoleID)
		select	@userID, @roleID;
		--
		COMMIT	TRAN;
	END TRY
	BEGIN CATCH
		if (xact_state() = -1) ROLLBACK TRAN; throw;
	END CATCH
END
