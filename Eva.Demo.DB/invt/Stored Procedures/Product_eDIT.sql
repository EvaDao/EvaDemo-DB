--Eva
CREATE PROCEDURE invt.Product#Edit
(
	@id bigint, @description nvarchar(200), @detailInfo nvarchar(200), @price bigint, @qty int
)
AS
BEGIN
	SET NOCOUNT    ON;

	with cte as
	(
		select Description,  DetailInfo,  Price, TotalQty
		from	invt._Product
		where	ID=@id
	)update cte set	Description=@description, DetailInfo=@detailInfo, Price=@price, TotalQty=@qty
END
