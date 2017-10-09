# create a test account
u = User.new
u.email = "test@test.com"
u.password = "testtest"
u.password_confirmation = "testtest"
u.save

# create an admin acccount
u = User.new
u.email = "admin@admin.com"
u.password = "adminadmin"
u.password_confirmation = "adminadmin"
u.is_admin = true
u.save
