CREATE TABLE [shop].[_Order] (
    [ID]          BIGINT         NOT NULL IDENTITY(1000, 1),
    [UserID]      INT            NOT NULL,
    [ProductInfo] NVARCHAR (MAX) NOT NULL,
    [TalliedOn]   DATETIME2 (2)  NOT NULL,
    CONSTRAINT [PK__Order] PRIMARY KEY CLUSTERED ([ID] ASC)
);

