CREATE TABLE [core].[_User] (
    [ID]       BIGINT         NOT NULL IDENTITY(1000, 1),
    [Type]     TINYINT        NOT NULL,
    [Name]     NVARCHAR (20)  NOT NULL,
    [Surname]  NVARCHAR (20)  NOT NULL,
    [Phone]    VARCHAR (20)   NOT NULL,
    [Email]    NVARCHAR (40)  NOT NULL,
    [Country]  CHAR (2)       NOT NULL,
    [State]    NVARCHAR (20)  NOT NULL,
    [City]     NVARCHAR (20)  NOT NULL,
    [Address1] NVARCHAR (100) NOT NULL,
    [Address2] NVARCHAR (100) NOT NULL,
    CONSTRAINT [PK__User] PRIMARY KEY CLUSTERED ([ID] ASC)
);

