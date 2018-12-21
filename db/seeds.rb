# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

User.delete_all
u1 = User.create(email: 'email1@email.com', name: "Dust London", password: "password")
u2 = User.create(email: 'email2@email.com', name: "Awaken Realms", password: "password")
u3 = User.create(email: 'email3@email.com', name: "Emily Mode", password: "password")
u4 = User.create(email: 'email4@email.com', name: "MALKYRS STUDIO", password: "password")
user = User.create(email: 'ben@email.com', name: "Ben", password: "password")




Project.delete_all
Project.create!(user_id: 1, title: "Transforming Tea Waste Into Beautiful Homeware", description: "Changing how we recycle. Bringing the organic into design. This collection transforms tea into beautiful homeware.", funding_goal: 3788, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 29 Dec 2018 01:00:00 UTC +00:00')
Project.create(user_id: 2, title: "Tainted Grail: The Fall of Avalon", description: "Adventure, survival co-op Board Game set in unique grim world inspired by Arthurian Legends. Unforgettable experience for 1-4 players", funding_goal: 50517, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 29 Dec 2018 01:00:00 UTC +00:00')
Project.create(user_id: 3, title: "RADIFY", description: "RADIFY the Graphic Novel", funding_goal: 7600, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 29 Dec 2018 01:00:00 UTC +00:00')
Project.create(user_id: 4, title: "Malkyrs - The interactive card game", description: "Malkyrs is an interactive trading card game. Fight your friends online with real cards & upgrade them on PC, MAC and NINTENDO SWITCH!", funding_goal: 56929, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 29 Dec 2018 01:00:00 UTC +00:00')
Project.create(user_id: 1, title: "Project5", description: "P5 Description", funding_goal: 50000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 29 Dec 2018 01:00:00 UTC +00:00')
Project.create(user_id: 1, title: "Project6", description: "P6 Description", funding_goal: 60000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 29 Dec 2018 01:00:00 UTC +00:00')
Project.create(user_id: 2, title: "Project7", description: "P7 Description", funding_goal: 70000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 29 Dec 2018 01:00:00 UTC +00:00')
Project.create(user_id: 3, title: "Project8", description: "P8 Description", funding_goal: 80000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 29 Dec 2018 01:00:00 UTC +00:00')
Project.create(user_id: 3, title: "Project9", description: "P9 Description", funding_goal: 90000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 29 Dec 2018 01:00:00 UTC +00:00')
Project.create(user_id: 1, title: "Project10", description: "P10 Description", funding_goal: 100000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 29 Dec 2018 01:00:00 UTC +00:00')


  Project.all.each do |el|
    file = open('https://s3-us-west-1.amazonaws.com/seedassets/seed1.png')
    el.image.attach(io: file, filename: "seed1.png")
  end

  file1 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed1.png')
  Project.first.image.attach(io: file1, filename: "seed1.png")

  file2 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed2.png')
  Project.second.image.attach(io: file2, filename: "seed2.png")

  file3 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed3.png')
  Project.third.image.attach(io: file3, filename: "seed3.png")

  file4 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed4.png')
  Project.fourth.image.attach(io: file4, filename: "seed4.png")



  # file = File.open('/Users/bencowden/Desktop/temp.png')
  # Project.first.image.attach(io: file, filename: "temp.png")
  # post = Post.first
# file = File.open('/Users/bencowden/Desktop/temp2.png')
# post.photo.attach(io: file, filename: 'sennacy.jpg')
# post.photo.attached? # => true
# a = Project.first
# file = open('https://s3-us-west-1.amazonaws.com/seedassets/temp2.png')
# a.image.attach(io: file, filename: 'temp2.png'

  # file = open('https://s3-us-west-1.amazonaws.com/seedassets/temp2.png')