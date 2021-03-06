# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#

districts = ["Central", "Wan Chai", "Kowloon"]

User.delete_all

20.times do
  User.create(name: Faker::Name.name,
  mobile: Faker::PhoneNumber.cell_phone,
  email: Faker::Internet.email,
  district: districts.sample,
  address: Faker::Address.street_address,
  is_doctor: true,
  password: "123123")
end