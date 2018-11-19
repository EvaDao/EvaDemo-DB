--Eva
CREATE PROCEDURE shop.User$Register
(
	@name  Alias, @pwd Pwd, @userID bigint out
)
AS
BEGIN
	SET NOCOUNT    ON;
	
	exec	core.User#Register @name=@name, @pwd=@pwd, @userID=@userID out;
END
