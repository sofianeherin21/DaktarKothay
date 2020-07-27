CREATE TABLE [dbo].[hospital] (
    [hosID]       INT          NOT NULL IDENTITY,
    [hosName]     VARCHAR (30) DEFAULT (NULL) NULL,
    [hosLocation] VARCHAR (30) DEFAULT (NULL) NULL,
    [email]       VARCHAR (20) NOT NULL,
    [password]    VARCHAR (20) DEFAULT (NULL) NULL,
    PRIMARY KEY CLUSTERED ([hosID] ASC)
);


