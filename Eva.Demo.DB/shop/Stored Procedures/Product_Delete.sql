--Eva
CREATE PROCEDURE shop.Product$Delete(@id bigint)
AS
BEGIN
	SET NOCOUNT    ON;

	exec	invt.Product#Delete @id=@id;
END
