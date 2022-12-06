# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Profile.destroy_all

profile_visuel = Profile.create(name: :visuel)
profile_visuel.save!
profile_auditif = Profile.create(name: :auditif)
profile_auditif.save!
profile_kinesthetic = Profile.create(name: :kinesthetic)
profile_kinesthetic.save!

User.create(first_name: "David", last_name: "Lune", email: "david.lune@gmail.com",password: "123456", profile: profile_visuel).save!
User.create(first_name: "Cedric", last_name: "Mars", email: "ced.lune@proton.com",password: "123456", profile: profile_auditif).save!
User.create(first_name: "Roxanne", last_name: "Venus", email: "roxy_proxy@hotmail.fr",password: "123456", profile: profile_kinesthetic).save!
User.create(first_name: "Joe", last_name: "Saturn", email: "mr.joe.saturne@gmail.com",password: "123456", profile: nil).save!
