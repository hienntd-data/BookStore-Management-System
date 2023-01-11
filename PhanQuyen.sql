use BOOK_STORE
go
create login [Admin] with password='Admin'
create login [User] with password='User'
go
create user [Admin] for login [Admin]
create user [User] for login [User]
go
grant select,insert on dbo.GioHangTable to [User]
grant exec on dbo.Lichsuadonhang to [User] 
grant exec on dbo.InfoSach to [User]
grant exec on dbo.SelectAllKhachHang to [User]
grant exec on dbo.Editprofile to [User]
grant exec on dbo.Thongtindathang to [User]
grant select on dbo.Search_table to [User]
grant exec on dbo.Sachtheochude to [User]
go
exec sp_addrolemember  'db_owner','Admin'


