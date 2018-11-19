declare
@type    tinyint=2, @name  Alias=N'admin', @surname Alias=N'admin', @phone Phone=N'1561***1234', @email Email=N'evacheck@163.com',
@country Country=N'CN', @state Alias=N'Shanghai', @city Alias=N'Shanghai', @address1 Address=N'Changzhong road', @address2 Address=N'',
@roleIDs nvarchar(max)=N'102';

exec	core.User#Add
@type=@type, @name=@name, @surname=@surname, @phone=@phone, @email=@email,
@country=@country, @state=@state, @city=@city, @address1=@address1,@address2=@address2,
@roleIDs=@roleIDs;