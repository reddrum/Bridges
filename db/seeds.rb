# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Account.create( [
    { first_name: "Anna", last_name: "Armas", username: "anna", email: "anna@mail.com", password: "password1" },
    { first_name: "Elena", last_name: "Blans", username: "elenab", email: "elena@mail.com", password: "password2" },
    { first_name: "Uma", last_name: "Jones", username: "umaj", email: "uma@mail.com", password: "password3" },
    { first_name: "Lexie", last_name: "Leeds", username: "lexie", email: "lexie@mail.com", password: "password4" },
    { first_name: "Li", last_name: "Min", username: "limin", email: "limin@mail.com", password: "password5" },
])