USE [book-store]
GO

INSERT INTO [dbo].[SubCategory]
           ([SubCategoryName]
           ,[AddedBy]
           ,[AddedOn]
           ,[LastModifiedBy]
           ,[LastModifiedOn])
     VALUES
           ('Self Help books'
           ,'Niyathi'
           ,'2021-08-05 18:45:58'
           ,'Niyathi'
           ,'2021-08-05 18:45:58'),

		   ('Murder'
           ,'Rishabh'
           ,'2020-03-23 12:23:28'
           ,'Rishabh'
           ,'2020-03-23 12:23:28'),

		   ('Suspense'
           ,'Shinjan'
           ,'2021-01-14 14:23:45'
           ,'Shinjan'
           ,'2021-01-14 14:23:45'),

		   ('History'
           ,'Renuka'
           ,'2021-02-23 16:03:37'
           ,'Renuka'
           ,'2021-02-23 16:03:37')

GO


