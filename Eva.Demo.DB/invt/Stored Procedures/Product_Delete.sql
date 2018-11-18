--Eva
CREATE PROCEDURE invt.Product#Delete(@id bigint)
AS
BEGIN
	SET NOCOUNT    ON;
	SET XACT_ABORT ON;

	BEGIN TRY
		BEGIN	TRAN;

		with cte as
		(
			select	ID, Info=concat(Description, k.Comma, DetailInfo, k.Comma, Price, k.Comma, x.TotalQty, k.Comma, x.LockedQty, k.Comma, x.CreatedOn)
			from	invt._Product x
			cross	apply loc.Spr#Const() k
			where	ID=@id
		)
		insert	invt._XProduct(ID, Info) select	ID, Info from cte;

		with	cte as
		(
			select	*
			from	invt._Product
			where	ID=@id
		)delete cte;
	
		COMMIT	TRAN;
	END TRY
	BEGIN CATCH
		if (xact_state() = -1) ROLLBACK TRAN; throw;
	END CATCH
END
