CREATE TABLE [auth].[_Authentication] (
    [UserName] [dbo].[LoginName] NOT NULL,
    [Password] [dbo].[Pwd]       NOT NULL,
    [UserID]   BIGINT            NOT NULL,
    CONSTRAINT [PK__Authentication] PRIMARY KEY CLUSTERED ([UserName] ASC),
    CONSTRAINT [FK_Authentication_User] FOREIGN KEY ([UserID]) REFERENCES [core].[_User] ([ID])
);

