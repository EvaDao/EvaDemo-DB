--Eva
CREATE PROCEDURE invt.Product#Add
(
	@description nvarchar(200), @detailInfo nvarchar(200), @price bigint, @qty int
)
AS
BEGIN
	SET NOCOUNT    ON;

	insert	invt._Product
	(		 Description,  DetailInfo,  Price, TotalQty)
	select	@description, @detailInfo, @price, @qty;
END
