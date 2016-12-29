CREATE PROCEDURE [dbo].[GetFullLoanDetailsByLoanId]
	@LoanId uniqueidentifier
AS
BEGIN
------------------- Loan ------------------
  SELECT [LoanId]
      ,[SiteId]
      ,[LoanNumber]
      ,[ApplicationTypeId]
      ,[LoanName]
      ,[LoanAmount]
      ,[InterestRate]
      ,[AmortizationTerm]
      ,[PurposeTypeId]
      ,[LTV]
      ,[CLTV]
      ,[CreateDt]
      ,[EditDt]
      ,[CreatedByUserId]
  FROM [dbo].[Loan]
  WHERE LoanId = @LoanId

------------------- AspNetUsers ------------------
  SELECT [Id]
      ,[Email]
      ,[EmailConfirmed]
      ,[PasswordHash]
      ,[SecurityStamp]
      ,[PhoneNumber]
      ,[PhoneNumberConfirmed]
      ,[TwoFactorEnabled]
      ,[LockoutEndDateUtc]
      ,[LockoutEnabled]
      ,[AccessFailedCount]
      ,[UserName]
  FROM [dbo].[AspNetUsers]
  INNER JOIN dbo.[Loan] on Loan.CreatedByUserId = AspNetUsers.Id
  WHERE Loan.LoanId = @LoanId

------------------- Borrower ------------------
  SELECT [BorrowerId]
      ,b.[LoanId]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[SSN]
      ,b.[CreateDt]
      ,b.[EditDt]
  FROM [dbo].[Borrower] b
  INNER JOIN dbo.[Loan] on Loan.LoanId = b.LoanId
  WHERE Loan.LoanId = @LoanId

------------------- BorrowerAddr ------------------
  SELECT 
       [BorrowerAddr].[BorrowerAddrId]
      ,[BorrowerAddr].[BorrowerId]
      ,[BorrowerAddr].[AddressTypeId]
      ,[BorrowerAddr].[Street]
      ,[BorrowerAddr].[City]
      ,[BorrowerAddr].[State]
      ,[BorrowerAddr].[Zip]
      ,[BorrowerAddr].[ZipPlusFour]
      ,[BorrowerAddr].[RentOrOwnTypeId]
      ,[BorrowerAddr].[NumOfYears]
      ,[BorrowerAddr].[NumOfMonths]
      ,[BorrowerAddr].[Country]
      ,[BorrowerAddr].[CreateDt]
      ,[BorrowerAddr].[EditDt]
  FROM [dbo].[BorrowerAddr] 
  INNER JOIN dbo.Borrower on Borrower.BorrowerId = BorrowerAddr.BorrowerId
  INNER JOIN dbo.Loan on Loan.LoanId = Borrower.LoanId
  WHERE Loan.LoanId = @LoanId


END
