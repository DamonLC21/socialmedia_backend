# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
FriendRequest.destroy_all
Friendship.destroy_all
User.destroy_all

jordan = User.create(username: "pandasaywhat", email: "panda@gmail.com", password: "pandasaywhat")
kev = User.create(username: "kevbot", email: "therealkevbot@gmail.com", password: "kevbot")
alex = User.create(username: "alexg", email: "nuthinbutagthang@gmail.com", password: "alexg")
damon = User.create(username: "damonc", email: "chiversd@gmail.com", password: "damonc")

FriendRequest.create(requested: jordan, receiver: kev)
FriendRequest.create(requested: alex, receiver: kev)
FriendRequest.create(requested: kev, receiver: damon)
FriendRequest.create(requested: damon, receiver: jordan)
