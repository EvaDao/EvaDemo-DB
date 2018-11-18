CREATE TABLE [invt].[_Product] (
    [ID]          BIGINT         NOT NULL IDENTITY(1000, 1),
    [Description] NVARCHAR (200) NOT NULL,
    [DetailInfo]  NVARCHAR (200) NOT NULL,
    [Price]       BIGINT         NOT NULL,
    [LockedQty]   INT            NOT NULL DEFAULT(0),
    [TotalQty]    INT            NOT NULL,
    [CreatedOn]   Datetime2(2)   NOT NULL DEFAULT(getutcdate()),
    CONSTRAINT [PK__Product] PRIMARY KEY CLUSTERED ([ID] ASC)
);

