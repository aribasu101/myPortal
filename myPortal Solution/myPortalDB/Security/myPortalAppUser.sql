CREATE USER [myPortalAppUser] FOR LOGIN [myPortalAppUser];
GO

CREATE LOGIN [myPortalAppUser]
    WITH PASSWORD = N'19500Jam', DEFAULT_DATABASE = [myPortalDb], DEFAULT_LANGUAGE = [us_english];

