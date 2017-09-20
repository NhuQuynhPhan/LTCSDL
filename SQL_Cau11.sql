USE ONLINE_SHOP
GO
IF OBJECT_ID('uspCau11', 'P') IS NOT NULL
	DROP PROC uspCau11
GO

CREATE PROC uspCau11
@a int,
@b int
AS
return (@a + @b)
GO
DECLARE @tong int
DECLARE @a int
DECLARE @b int
SET @a = 2
SET @b =3

EXEC @tong = uspCau11 @a, @b
PRINT 'Tng 2 so ' + CONVERT(varchar,@a)+ ' va ' + CONVERT(varchar,@b) + ' la ' + CONVERT(varchar,@tong)