# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Profile.create(name: "Visuel").save!
Profile.create(name: "Auditif").save!
Profile.create(name: "Kinesthetic").save!

User.create(first_name: "David", last_name: "Lune", email: "david.lune@gmail.com",password: "123456", profile: "Visuel").save!
User.create(first_name: "Cedric", last_name: "Mars", email: "ced.lune@proton.com",password: "123456", profile: "Auditif").save!
User.create(first_name: "Roxanne", last_name: "Venus", email: "roxy_proxy@hotmail.fr",password: "123456", profile: "Auditif").save!
User.create(first_name: "Joe", last_name: "Saturn", email: "mr.joe.saturne@gmail.com",password: "123456", profile: "").save!
