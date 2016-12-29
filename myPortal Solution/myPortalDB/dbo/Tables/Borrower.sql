CREATE TABLE [dbo].[Borrower] (
    [BorrowerId] UNIQUEIDENTIFIER NOT NULL,
    [LoanId]     UNIQUEIDENTIFIER NOT NULL,
    [FirstName]  VARCHAR (50)     NULL,
    [MiddleName] VARCHAR (50)     NULL,
    [LastName]   VARCHAR (50)     NULL,
    [SSN]        VARCHAR (10)     NULL,
    [CreateDt]   DATETIME         NULL,
    [EditDt]     DATETIME         NULL,
    CONSTRAINT [PK_Borrower] PRIMARY KEY CLUSTERED ([BorrowerId] ASC),
    CONSTRAINT [FK_Borrower_Loan] FOREIGN KEY ([LoanId]) REFERENCES [dbo].[Loan] ([LoanId])
);

