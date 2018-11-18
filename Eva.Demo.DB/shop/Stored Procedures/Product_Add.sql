--Eva
CREATE PROCEDURE shop.Product$Add
(
	@description nvarchar(200), @detailInfo nvarchar(200), @price bigint, @qty int
)
AS
BEGIN
	SET NOCOUNT    ON;

	exec	invt.Product#Add @description=@description, @detailInfo=@detailInfo, @price=@price, @qty=@qty
END
