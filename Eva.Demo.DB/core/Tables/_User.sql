CREATE TABLE [core].[_User] (
    [ID]       BIGINT         NOT NULL,
    [Type]     TINYINT        NOT NULL,
    [Name]     NVARCHAR (20)  NOT NULL,
    [Surname]  NVARCHAR (20)  NOT NULL default(N''),
    [Phone]    VARCHAR (20)   NOT NULL default(N''),
    [Email]    NVARCHAR (40)  NOT NULL default(N''),
    [Country]  CHAR (2)       NOT NULL default(N''),
    [State]    NVARCHAR (20)  NOT NULL default(N''),
    [City]     NVARCHAR (20)  NOT NULL default(N''),
    [Address1] NVARCHAR (100) NOT NULL default(N''),
    [Address2] NVARCHAR (100) NOT NULL default(N''),
    CONSTRAINT [PK__User] PRIMARY KEY CLUSTERED ([ID] ASC)
);

