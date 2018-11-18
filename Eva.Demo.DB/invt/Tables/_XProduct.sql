CREATE TABLE [invt].[_XProduct] (
    [ID]          BIGINT         NOT NULL,
    [Info]        NVARCHAR (max) NOT NULL,
    [DeletedOn]   Datetime2(2)   NOT NULL DEFAULT(getutcdate()),
    CONSTRAINT [PK__XProduct] PRIMARY KEY CLUSTERED ([ID] ASC)
);

