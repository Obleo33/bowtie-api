# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all

User.create( name: "User One", email: "user@one.com", password: "one")
User.create( name: "User Two", email: "user@two.com", password: "two")
User.create( name: "User Three", email: "user@three.com", password: "three")

Project.delete_all

Project.create( name: "project for user 1", user_id: 12)
Project.create( name: "project for user 2", user_id: 13)
Project.create( name: "project for user 3", user_id: 14)


Todo.delete_all

Todo.create( name: "do this", project_id: 7)
Todo.create( name: "do another", project_id: 7)
Todo.create( name: "do this", project_id: 8)
Todo.create( name: "do another", project_id: 8)
Todo.create( name: "do this", project_id: 9)
Todo.create( name: "do another", project_id: 9)



puts "Success: Data loaded"