# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	user = User.new(email: "admin@example.com", password: "password", password_confirmation: "password", firstname: "Admin", lastname: "User")
	user.save
	user.causes.new(name: "Test Cause", description: "Test description beep beep", unit_donation: 1).save
	user.causes.new(name: "Test Cause 2", description: "Test description beep beep 2 2 2", unit_donation: 1).save
