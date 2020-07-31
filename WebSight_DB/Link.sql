CREATE TABLE [dbo].[Link]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[URL] varchar(MAX) NOT NULL,
	[Hash] VARCHAR(50) NULL,
	[Nickname] VARCHAR(50) NULL, 
    [Experation] INT NULL, 
    [LastModified] DATETIME NOT NULL,
)
