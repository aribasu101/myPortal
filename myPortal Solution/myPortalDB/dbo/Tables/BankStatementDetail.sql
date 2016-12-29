CREATE TABLE [dbo].[BankStatementDetail] (
    [BankStatementDetailId] UNIQUEIDENTIFIER NOT NULL,
    [BankStatementId]       UNIQUEIDENTIFIER NOT NULL,
    [BankStatementSequence] INT              NOT NULL,
    [StatementYear]         INT              NULL,
    [StatementMonth]        INT              NULL,
    [BeginningBalance]      DECIMAL (18, 2)  NULL,
    [DepositAmount]         DECIMAL (18, 2)  NULL,
    [EndingBalance]         DECIMAL (18, 2)  NULL,
    CONSTRAINT [PK_BankStatement] PRIMARY KEY CLUSTERED ([BankStatementDetailId] ASC),
    CONSTRAINT [FK_BankStatementDetail_BankStatement] FOREIGN KEY ([BankStatementId]) REFERENCES [dbo].[BankStatement] ([BankStatementId])
);

