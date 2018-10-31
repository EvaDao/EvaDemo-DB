--Eva
CREATE	FUNCTION loc.Spr#Split(@info nvarchar(max), @separator nvarchar(10))
RETURNS @sprSplit TABLE
(
	Seq   int IDENTITY(1, 1),
	Value nvarchar(max)
)
AS
BEGIN
	declare	@currentIndex int
	,		@nextIndex int
	,		@returnText nvarchar(max);

	select	@currentIndex=1;
	while	(@currentIndex<=len(@info))
		begin
			select @nextIndex=charindex(@separator, @info, @currentIndex);
			if(@nextIndex=0 or @nextIndex is null)
				select @nextIndex=len(@info)+1;
			select @returnText=substring(@info,@currentIndex,@nextIndex-@currentIndex);
			insert into @sprSplit(Value) values(@returnText);
			select @currentIndex=@nextIndex+1;
		end
	RETURN;
END
GO