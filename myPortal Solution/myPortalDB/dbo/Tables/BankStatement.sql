CREATE TABLE [dbo].[BankStatement] (
    [BankStatementId] UNIQUEIDENTIFIER NOT NULL,
    [BorrowerId]      UNIQUEIDENTIFIER NOT NULL,
    [BankName]        VARCHAR (150)    NULL,
    [AccountNumber]   VARCHAR (150)    NULL,
    [CurrentBalance]  DECIMAL (18, 2)  NULL,
    CONSTRAINT [PK_BankStatement_1] PRIMARY KEY CLUSTERED ([BankStatementId] ASC),
    CONSTRAINT [FK_BankStatement_Borrower] FOREIGN KEY ([BorrowerId]) REFERENCES [dbo].[Borrower] ([BorrowerId])
);

