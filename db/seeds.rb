# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


contacts = Contact.create([
    {
        name: "Mickey English",
        email: "mickeyeng92@gmail.com",
        phone: "07766045660"
    },
    {
        name: "Laura Silva",
        email: "lasburg18@gmail.com",
        phone: "07766044460"
    },
    {
        name: "Brad Pit",
        email: "bradpitgmail.com",
        phone: "07766033460"
    }
])
