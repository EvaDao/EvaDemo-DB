CREATE TABLE [invt].[_Product] (
    [ID]          BIGINT         NOT NULL IDENTITY(1000, 1),
    [Description] NVARCHAR (200) NOT NULL,
    [Detail]      NVARCHAR (200) NOT NULL,
    [Price]       BIGINT         NOT NULL,
    [LockedQty]   INT            NOT NULL,
    [TotalQty]    INT            NOT NULL,
    CONSTRAINT [PK__Product] PRIMARY KEY CLUSTERED ([ID] ASC)
);

