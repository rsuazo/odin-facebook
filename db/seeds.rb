# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(email: "rsuazo@gmail.com", password: "testing", password_confirmation: "testing", first_name: "Robert", last_name: "Suazo", user_name: "rsuazo")

User.create(email: "tsuazo@gmail.com", password: "testing", password_confirmation: "testing", first_name: "Tiffany", last_name: "Suazo", user_name: "tsuazo")

User.create(email: "jsimpson@gmail.com", password: "testing", password_confirmation: "testing", first_name: "Jasmin", last_name: "Simpson", user_name: "jsimpson")

User.create(email: "nsimpson@gmail.com", password: "testing", password_confirmation: "testing", first_name: "Nate", last_name: "Simpson", user_name: "nsimpson")

User.create(email: "msuazo@gmail.com", password: "testing", password_confirmation: "testing", first_name: "Martin", last_name: "Suazo", user_name: "msuazo")

User.create(email: "ruksuazo@gmail.com", password: "testing", password_confirmation: "testing", first_name: "Rukshana", last_name: "Suazo", user_name: "ruksuazo")