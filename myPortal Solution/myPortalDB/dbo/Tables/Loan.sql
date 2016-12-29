CREATE TABLE [dbo].[Loan] (
    [LoanId]            UNIQUEIDENTIFIER NOT NULL,
    [SiteId]            INT              NOT NULL,
    [LoanNumber]        VARCHAR (50)     NULL,
    [ApplicationTypeId] INT              NULL,
    [LoanName]          VARCHAR (50)     NULL,
    [LoanAmount]        DECIMAL (18, 2)  NULL,
    [InterestRate]      DECIMAL (18, 3)  NULL,
    [AmortizationTerm]  INT              NULL,
    [PurposeTypeId]     INT              NULL,
    [LTV]               DECIMAL (18, 2)  NULL,
    [CLTV]              DECIMAL (18, 2)  NULL,
    [CreateDt]          DATETIME         NULL,
    [EditDt]            DATETIME         NULL,
    [CreatedByUserId]   NVARCHAR (128)   NULL,
    CONSTRAINT [PK_Loan] PRIMARY KEY CLUSTERED ([LoanId] ASC),
    CONSTRAINT [FK_Loan_AspNetUsers] FOREIGN KEY ([CreatedByUserId]) REFERENCES [dbo].[AspNetUsers] ([Id])
);

