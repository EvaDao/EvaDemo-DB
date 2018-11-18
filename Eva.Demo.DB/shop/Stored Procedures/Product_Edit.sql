--Eva
CREATE PROCEDURE shop.Product$Edit
(
	@id bigint, @description nvarchar(200), @detailInfo nvarchar(200), @price bigint, @qty int
)
AS
BEGIN
	SET NOCOUNT    ON;
	
	exec	invt.Product#Edit @id=@id, @description=@description, @detailInfo=@detailInfo, @price=@price, @qty=@qty
END
