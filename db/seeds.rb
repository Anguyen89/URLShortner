# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#create takes a hash
u1 = User.create(email: "anguyen89@gmail.com")
u2 = User.create(email: "ang@gmial.com")
short1 = ShortenedUrl.create_for_user_and_long_url!(u2, "yahoo.com")
short2 = ShortenedUrl.create_for_user_and_long_url!(u1, "google.com")
