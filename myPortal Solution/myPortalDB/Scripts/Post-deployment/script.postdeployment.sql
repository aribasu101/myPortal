/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
-- **************************************************
-- Use this script to reset all the tables to  
-- the defined seed data.
-- **************************************************


delete from [BankStatementDetail]
delete from [BankStatement]
delete from [BorrowerAddr]
delete from [Borrower]
delete from [PropertyInfo]
delete from [Loan]
delete from [AspNetRoles]
delete from [AspNetUsers]
GO

insert into [AspNetUsers] ([Id],[Email],[EmailConfirmed],[PasswordHash],[SecurityStamp],[PhoneNumber],[PhoneNumberConfirmed],[TwoFactorEnabled],[LockoutEndDateUtc],[LockoutEnabled],[AccessFailedCount],[UserName])
     VALUES ('0010338b-d8a8-4bfd-b2af-307567845663', 'john.doe.com', '0', 'ALLRFZNF2l98jiQj3bVU5XFUb6H8sam9BvVMdP12VP9jIFx3yCWIIjQskPHpmxL6qg==', 'c5e36634-c57d-4c4f-9d70-dae25ca5e600', NULL,	'0', '0', NULL,	'1', '0', 'john.doe.com')
GO

insert into [Loan] (
    [LoanId],
	[SiteId],
    [LoanNumber],
    [ApplicationTypeId],
    [LoanName],
    [LoanAmount],
    [InterestRate],
    [AmortizationTerm],
    [PurposeTypeId],
    [LTV],
    [CLTV],
    [CreateDt],
    [EditDt],
    [CreatedByUserId]) values (
		'A4399705-84D4-4365-98B5-00443F88B8A0',
		'0',
		'1000000001',
		'1',
		'Test LoanName1',
		'680000',
		'3.375',
		'360',
		'5',
		'55.00',
		'55.00',
		'10-14-2016',
		'10-14-2016',
		'0010338b-d8a8-4bfd-b2af-307567845663'
	)
GO
insert into [Loan] (
    [LoanId],
	[SiteId],
    [LoanNumber],
    [ApplicationTypeId],
    [LoanName],
    [LoanAmount],
    [InterestRate],
    [AmortizationTerm],
    [PurposeTypeId],
    [LTV],
    [CLTV],
    [CreateDt],
    [EditDt],
    [CreatedByUserId]) values (
		'84371B0F-7582-4881-B87E-01800FF380B9',
		'0',
		'1000000002',
		'1',
		'Test LoanName2',
		'540000',
		'5.375',
		'360',
		'3',
		'65.00',
		'65.00',
		'10-14-2016',
		'10-14-2016',
		'0010338b-d8a8-4bfd-b2af-307567845663'
	)
GO

insert into [Borrower] (
    [BorrowerId],
    [LoanId],
    [FirstName],
    [MiddleName],
    [LastName],
    [SSN],
    [CreateDt],
    [EditDt]
) values (
	'17fe7513-bffb-4634-8cc9-dd4c8ef5d271',
	'A4399705-84D4-4365-98B5-00443F88B8A0',
	'Hikaru',
	'',
	'Sulu',
	'1114569999',
	'10-14-2016',
	'10-14-2016'
)
GO
insert into [Borrower] (
    [BorrowerId],
    [LoanId],
    [FirstName],
    [MiddleName],
    [LastName],
    [SSN],
    [CreateDt],
    [EditDt]
) values (
	'10573760-4fa1-4adc-8cd4-743fcb90882e',
	'A4399705-84D4-4365-98B5-00443F88B8A0',
	'Geordi',
	'',
	'Forge',
	'5554569999',
	'10-14-2016',
	'10-14-2016'
)
GO
insert into [Borrower] (
    [BorrowerId],
    [LoanId],
    [FirstName],
    [MiddleName],
    [LastName],
    [SSN],
    [CreateDt],
    [EditDt]
) values (
	'190bc84a-7c86-445d-877e-b4a71c2c1f7d',
	'84371B0F-7582-4881-B87E-01800FF380B9',
	'Jean-Luc',
	'',
	'Picard',
	'6664569999',
	'10-14-2016',
	'10-14-2016'
)
GO
insert into [Borrower] (
    [BorrowerId],
    [LoanId],
    [FirstName],
    [MiddleName],
    [LastName],
    [SSN],
    [CreateDt],
    [EditDt]
) values (
	'1ad85cd7-b99a-4eb4-9fee-164b9003c567',
	'84371B0F-7582-4881-B87E-01800FF380B9',
	'Tasha',
	'',
	'Yar',
	'2224569999',
	'10-14-2016',
	'10-14-2016'
)
GO

insert into [PropertyInfo] (
    [LoanId],
    [PropertyTypeId],
    [StreetAddress],
    [City],
    [State],
    [ZipCode]
) values (
	'84371B0F-7582-4881-B87E-01800FF380B9',
	'11',
	'123 Codo St.',
	'Irvine',
	'CA',
	'92612'
)
GO
insert into [PropertyInfo] (
    [LoanId],
    [PropertyTypeId],
    [StreetAddress],
    [City],
    [State],
    [ZipCode]
) values (
	'A4399705-84D4-4365-98B5-00443F88B8A0',
	'22',
	'555 SFR St.',
	'Irvine',
	'CA',
	'92612'
)
GO

insert into [BorrowerAddr] (
    [BorrowerAddrId],
    [BorrowerId],
    [AddressTypeId],
    [Street],
    [City],
    [State],
    [Zip]
) values (
	'A644FC98-C13C-4883-9E93-3AFACD44B2E4',
	'17fe7513-bffb-4634-8cc9-dd4c8ef5d271',
	'2',
	'123 Anystreet',
	'Irvine',
	'CA',
	'92612'
)
GO

insert into [BankStatement] (
    [BankStatementId],
    [BorrowerId],
    [BankName],
    [AccountNumber],
    [CurrentBalance]
) values (
	'67B1F72F-78B4-4B63-B4BC-9F45922C8927',
	'17fe7513-bffb-4634-8cc9-dd4c8ef5d271',
	'Bank Of America',
	'78-0001254579',
	'28756.00'
)
GO

insert into [BankStatementDetail] (
    [BankStatementDetailId], [BankStatementId], [BankStatementSequence], [StatementYear], [StatementMonth], [BeginningBalance], [DepositAmount], [EndingBalance]) values 
	('0A7367ED-76C5-4D9C-B725-DE5E0C9E6411', '67B1F72F-78B4-4B63-B4BC-9F45922C8927', '1', '2016', '5', '15000', '4575', '16800')
insert into BankStatementDetail (
    [BankStatementDetailId], [BankStatementId], [BankStatementSequence], [StatementYear], [StatementMonth], [BeginningBalance], [DepositAmount], [EndingBalance]) values 
	('10B95443-5BE4-45C0-A47F-746B95DCDDDD', '67B1F72F-78B4-4B63-B4BC-9F45922C8927', '1', '2016', '5', '16800', '1247', '14500')
insert into BankStatementDetail (
    [BankStatementDetailId], [BankStatementId], [BankStatementSequence], [StatementYear], [StatementMonth], [BeginningBalance], [DepositAmount], [EndingBalance]) values 
	('94A8ADC8-5C2C-4360-9540-826169BA5D24', '67B1F72F-78B4-4B63-B4BC-9F45922C8927', '1', '2016', '5', '14500', '5574', '15200')
insert into BankStatementDetail (
    [BankStatementDetailId], [BankStatementId], [BankStatementSequence], [StatementYear], [StatementMonth], [BeginningBalance], [DepositAmount], [EndingBalance]) values 
	('5A45EA1A-5102-4BC8-AD70-10FAC1BD8370', '67B1F72F-78B4-4B63-B4BC-9F45922C8927', '1', '2016', '5', '15200', '1149', '12800')
insert into BankStatementDetail (
    [BankStatementDetailId], [BankStatementId], [BankStatementSequence], [StatementYear], [StatementMonth], [BeginningBalance], [DepositAmount], [EndingBalance]) values 
	('2D780792-EEF7-4F46-9897-C9F755990042', '67B1F72F-78B4-4B63-B4BC-9F45922C8927', '1', '2016', '5', '12800', '4786', '17800')
GO