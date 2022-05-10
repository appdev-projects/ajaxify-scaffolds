# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# directors = Director.create([{name: 'George Lucas'}, {name: 'Peter Jackson'}])
movies = Movie.create([{ title: 'Star Wars' }, { title: 'Lord of the Rings' }])
# actors = Actor.create([{name: 'Mark Hamill'}, {name: 'Elijah Wood'}])
# characters = Character.create([{name: 'Luke', movie: movies.first, actor: actors.first}, {name: 'Frodo', movie: movies.second, actor: actors.second}])
# (name: 'Luke', movie: movies.first, actor: actors.first)
# Character.create(name: 'Bilbo', movie: movies.second, actor: actors.second)
