CREATE TABLE [auth].[_UserRole] (
    [UserID] BIGINT NOT NULL,
    [RoleID] INT    NOT NULL,
    CONSTRAINT [PK__UserRole] PRIMARY KEY CLUSTERED ([UserID] ASC, [RoleID] ASC),
    CONSTRAINT [FK_UserRole_Role] FOREIGN KEY ([RoleID]) REFERENCES [auth].[_Role] ([ID]),
    CONSTRAINT [FK_UserRole_User] FOREIGN KEY ([UserID]) REFERENCES [core].[_User] ([ID])
);

