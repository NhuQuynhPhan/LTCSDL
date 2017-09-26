USE ONLINE_SHOP
GO
--12.A
IF OBJECT_ID('tongChan','P') IS NOT NULL
	DROP PROC tongChan
GO
CREATE PROC tongChan @m int, @n int, @tong int OUT
AS
IF @m < @n
	WHILE @m <= @n  
	BEGIN
		IF @m % 2 = 0
		BEGIN
		Set @tong +=  @m
		END
		Set @m = @m + 1
	END

GO
DECLARE @m int, @n int, @Tong int
Set @m = 1
Set @n = 5
Set @Tong = 0
EXEC tongChan @m,@n ,@Tong out
PRINT 'Tong so chan tu ' + Convert(varchar,@m) + ' toi ' + Convert(varchar,@n) + ' la ' +  Convert(varchar,@Tong)
--------------------------------------------------------------------
--12.b
IF OBJECT_ID ('uspDemSoChan','P') IS NOT NULL
	DROP PROC uspDemSoChan
GO
CREATE PROC uspDemSoChan @m int, @n int
AS
BEGIN
DECLARE @Count int
SET @Count = 0 
IF @m < @n
	WHILE @m <=  @n
	BEGIN
		IF @m % 2 = 0
			SET @Count += 1
		SET @m += 1
	END
Return @Count
END
GO
DECLARE @m int , @n int, @Count int
SET @m = 4
SET @n = 6
EXEC @Count =  uspDemSoChan @m,@n
PRINT 'Tong so phan tu chan tu ' + Convert(varchar,@m) + ' toi ' + Convert(varchar,@n) + ' la ' +  Convert(varchar,@Count)


