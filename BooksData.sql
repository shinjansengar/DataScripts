USE [book-store]
GO

INSERT INTO [dbo].[Book]
           ([BookName]
           ,[Author]
           ,[Publisher]
           ,[CategoryId]
           ,[SubCategoryId]
           ,[Pages]
           ,[Price]
           ,[IsActive]
           ,[AddedBy]
           ,[AddedOn]
           ,[LastModifiedBy]
           ,[LastModifiedOn])
     VALUES
           ('The Kite Runner'
           ,'Khaled Housseini'
           ,'Harper Publications'
           ,1
           ,4
           ,270
           ,350
           ,1
           ,'Niyathi' 
           ,'2021-08-05 18:45:58'
           ,'Niyathi'
           ,'2021-08-05 18:45:58'),

		   ('The story of my experiments with truth'
           ,'M.K Gandhi'
           ,'Rupa Publication'
           ,5
           ,4
           ,448
           ,300
           ,1
           ,'Rishabh' 
           ,'2020-03-23 12:23:28'
           ,'Rishabh'
           ,'2020-03-23 12:23:28'),

		   ('The 5 AM Club'
           ,'Robin Sharma'
           ,'Penguin Publication'
           ,3
           ,1
           ,180
           ,220
           ,0
           ,'Shinjan' 
           ,'2021-01-14 14:23:45'
           ,'Shinjan'
           ,'2021-01-14 14:23:45'),

		   ('The Harry potter'
           ,'J.K. Rowling'
           ,'Rowling Publication'
           ,2
           ,3
           ,560
           ,400
           ,1
           ,'Navaneeth' 
           ,'2020-06-29 12:29:36'
           ,'Navaneeth'
           ,'2020-06-29 12:29:36'),

		   ('Murder on Orient Express'
           ,'Agatha Christie'
           ,'Simon Publications'
           ,4
           ,2
           ,220
           ,300
           ,1
           ,'Renuka' 
           ,'2021-02-23 16:03:37'
           ,'Renuka'
           ,'2021-02-23 16:03:37'),

		   ('Da Vinci Code'
           ,'Dan Brown'
           ,'Westland Publications'
           ,1
           ,3
           ,450
           ,400
           ,1
           ,'Niyathi' 
           ,'2021-08-05 18:45:58'
           ,'Niyathi'
           ,'2021-08-05 18:45:58'),

		   ('Becoming'
           ,'Michelle Obama'
           ,'Hachette Publications'
           ,5
           ,1
           ,280
           ,350
           ,0
           ,'Rishabh' 
           ,'2020-03-23 12:23:28'
           ,'Rishabh'
           ,'2020-03-23 12:23:28'),

		   ('Sapiens'
           ,'Yuval Noah Harari'
           ,'Harper Publications'
           ,3
           ,4
           ,300
           ,350
           ,1
           ,'Shinjan' 
           ,'2021-01-14 14:23:45'
           ,'Shinjan'
           ,'2021-01-14 14:23:45'),

		   ('Game Of Thrones'
           ,'George R.R.Martin'
           ,'Jaico Publications'
           ,2
           ,3
           ,600
           ,545
           ,1
           ,'Navaneeth' 
           ,'2020-06-29 12:29:36'
           ,'Navaneeth'
           ,'2020-06-29 12:29:36'),

		   ('Gone Girl'
           ,'Gillian Flynn'
           ,'Big Tree Publications'
           ,3
           ,4
           ,320
           ,300
           ,0
           ,'Usha Sri' 
           ,'2021-02-23 16:03:37'
           ,'Usha Sri'
           ,'2021-02-23 16:03:37'),

GO


