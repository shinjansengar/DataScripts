USE [book-store]
GO

INSERT INTO [dbo].[Category]
           ([CategoryName]
           ,[AddedBy]
           ,[AddedOn]
           ,[LastModifiedBy]
           ,[LastModifiedOn])
     VALUES
           ('Fiction'
           ,'Niyathi'
           ,'2021-08-05 18:45:58'
           , 'Niyathi'
           ,'2021-08-05 18:45:58'),

		   ('Fantasy'
           ,'Rishabh'
           ,'2020-03-23 12:23:28'
           , 'Rishabh'
           ,'2020-03-23 12:23:28'),

		   ('Non-Fiction'
           ,'Shinjan'
           ,'2021-01-14 14:23:45'
           ,'Shinjan'
           ,'2021-01-14 14:23:45'),

		   ('Mystery'
           ,'Navaneeth'
           ,'2020-06-29 12:29:36'
           ,'Navaneeth'
           ,'2020-06-29 12:29:36'),

		   ('Autobiography'
           ,'Ushasri'
           ,'2021-02-23 16:03:37'
           ,'Ushasri'
           ,'2021-02-23 16:03:37')
GO


