CREATE TABLE [dbo].[Table]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Firstname] VARCHAR(50) NOT NULL, 
    [Lastname] VARCHAR(50) NOT NULL, 
    [password] VARCHAR(50) NOT NULL, 
    [status] VARCHAR(50) NOT NULL, 
    [bank] NCHAR(10) NOT NULL, 
    [creditcard] INT NOT NULL, 
    [IBAN] VARCHAR(50) NULL, 
    [donatedto] VARCHAR(255) NULL DEFAULT '' , 
    [moneydonated] MONEY NULL DEFAULT 0, 
    [email] VARCHAR(50) NOT NULL
)
