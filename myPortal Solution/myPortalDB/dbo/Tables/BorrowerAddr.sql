CREATE TABLE [dbo].[BorrowerAddr] (
    [BorrowerAddrId]  UNIQUEIDENTIFIER NOT NULL,
    [BorrowerId]      UNIQUEIDENTIFIER NOT NULL,
    [AddressTypeId]   INT              NULL,
    [Street]          VARCHAR (50)     NULL,
    [City]            VARCHAR (50)     NULL,
    [State]           VARCHAR (2)      NULL,
    [Zip]             VARCHAR (5)      NULL,
    [ZipPlusFour]     VARCHAR (4)      NULL,
    [RentOrOwnTypeId] INT              NULL,
    [NumOfYears]      INT              NULL,
    [NumOfMonths]     INT              NULL,
    [Country]         VARCHAR (50)     NULL,
    [CreateDt]        DATETIME         NULL,
    [EditDt]          DATETIME         NULL,
    CONSTRAINT [PK_BorrowerAddr] PRIMARY KEY CLUSTERED ([BorrowerAddrId] ASC),
    CONSTRAINT [FK_BorrowerAddr_ToTable] FOREIGN KEY ([BorrowerId]) REFERENCES [dbo].[Borrower] ([BorrowerId])
);

