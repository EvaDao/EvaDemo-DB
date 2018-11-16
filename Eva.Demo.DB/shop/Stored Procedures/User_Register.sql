--Eva
CREATE PROCEDURE shop.User#Register
(
	@name  Alias, @pwd Pwd
)
AS
BEGIN
	SET NOCOUNT    ON;
	
	exec	core.User#Register @name=@name, @pwd=@pwd;
END
