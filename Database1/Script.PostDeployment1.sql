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
SET IDENTITY_INSERT [dbo].[HoldingInventories] ON
INSERT INTO [dbo].[HoldingInventories] ([Id], [StrRqsNum], [FieldB], [CreatedBy], [Created], [ModifiedBy], [Modified]) VALUES (1, N'1', N'aa', N'TestUser', N'1/26/2016 5:00:40 PM +00:00', N'TestUser', N'1/26/2016 6:28:46 PM +00:00')
INSERT INTO [dbo].[HoldingInventories] ([Id], [StrRqsNum], [FieldB], [CreatedBy], [Created], [ModifiedBy], [Modified]) VALUES (2, N'2', N'bb', N'TestUser', N'1/26/2016 5:00:50 PM +00:00', N'TestUser', N'1/26/2016 6:28:25 PM +00:00')
INSERT INTO [dbo].[HoldingInventories] ([Id], [StrRqsNum], [FieldB], [CreatedBy], [Created], [ModifiedBy], [Modified]) VALUES (3, N'3', N'cc', N'TestUser', N'1/26/2016 5:00:57 PM +00:00', N'TestUser', N'1/26/2016 6:28:28 PM +00:00')
INSERT INTO [dbo].[HoldingInventories] ([Id], [StrRqsNum], [FieldB], [CreatedBy], [Created], [ModifiedBy], [Modified]) VALUES (4, N'4', N'dd', N'TestUser', N'1/26/2016 5:01:03 PM +00:00', N'TestUser', N'1/26/2016 6:28:33 PM +00:00')
INSERT INTO [dbo].[HoldingInventories] ([Id], [StrRqsNum], [FieldB], [CreatedBy], [Created], [ModifiedBy], [Modified]) VALUES (5, N'5', N'eef', N'TestUser', N'1/26/2016 5:01:10 PM +00:00', N'TestUser', N'1/26/2016 6:28:39 PM +00:00')
INSERT INTO [dbo].[HoldingInventories] ([Id], [StrRqsNum], [FieldB], [CreatedBy], [Created], [ModifiedBy], [Modified]) VALUES (6, N'6', N'fff', N'TestUser', N'1/26/2016 5:01:16 PM +00:00', N'TestUser', N'1/26/2016 6:14:10 PM +00:00')
INSERT INTO [dbo].[HoldingInventories] ([Id], [StrRqsNum], [FieldB], [CreatedBy], [Created], [ModifiedBy], [Modified]) VALUES (7, N'7', N'ggg', N'TestUser', N'1/26/2016 5:01:24 PM +00:00', N'TestUser', N'1/26/2016 6:14:13 PM +00:00')
INSERT INTO [dbo].[HoldingInventories] ([Id], [StrRqsNum], [FieldB], [CreatedBy], [Created], [ModifiedBy], [Modified]) VALUES (8, N'8', N'hhh', N'TestUser', N'1/26/2016 5:01:31 PM +00:00', N'TestUser', N'1/26/2016 6:14:17 PM +00:00')
SET IDENTITY_INSERT [dbo].[HoldingInventories] OFF
