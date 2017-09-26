USE ONLINE_SHOP
GO
IF OBJECT_ID('uspHangChuaGiao','P') IS NOT NULL
	DROP PROC uspHangChuaGiao
GO
CREATE PROC uspHangChuaGiao @soLuong int
AS
SELECT KHACHHANG.* FROM KHACHHANG WHERE MaKhachHang IN
(
	SELECT MaKhachHang FROM PHIEUDATHANG WHERE TinhTrang = 'Đang chờ giao'AND MaDatHang =
	(SELECT MaDatHang FROM CHITIETPHIEUDAT WHERE SoLuong > @soLuong )
)
GO
DECLARE @SoLuong int
SET @SoLuong = 1
EXEC uspHangChuaGiao @soLuong
