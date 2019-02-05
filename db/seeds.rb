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
u5 = User.create(email: 'email5@email.com', name: "PrintDreams", password: "password")
u6 = User.create(email: 'email6@email.com', name: "UNCPROP Modular", password: "password")
u7 = User.create(email: 'email7@email.com', name: "STORIES far from home", password: "password")
u8 = User.create(email: 'email8@email.com', name: "Writing Berlin Lab", password: "password")
user = User.create(email: 'demouser@email.com', name: "Demo User", password: "password")



Project.delete_all
Project.create!(user_id: 1, title: "Transforming Tea Waste Into Beautiful Homeware", description: "Changing how we recycle. Bringing the organic into design. This collection transforms tea into beautiful homeware.", funding_goal: 3788, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 29 Dec 2018 01:00:00 UTC +00:00')
Project.create(user_id: 2, title: "Tainted Grail: The Fall of Avalon", description: "Adventure, survival co-op Board Game set in unique grim world inspired by Arthurian Legends. Unforgettable experience for 1-4 players", funding_goal: 50517, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 29 Jan 2019 01:00:00 UTC +00:00')
Project.create(user_id: 3, title: "RADIFY", description: "RADIFY the Graphic Novel", funding_goal: 7600, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 31 Dec 2018 01:00:00 UTC +00:00')
Project.create(user_id: 4, title: "Malkyrs - The interactive card game", description: "Malkyrs is an interactive trading card game. Fight your friends online with real cards & upgrade them on PC, MAC and NINTENDO SWITCH!", funding_goal: 56929, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 15 Feb 2019 01:00:00 UTC +00:00')
Project.create(user_id: 5, title: "PrintBrush™ XDR -Colors. Everywhere.", description: "First color inkjet printer for smartphones. Go paperless. Go truly mobile. Save the planet.", funding_goal: 501128, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 29 Dec 2018 01:00:00 UTC +00:00')
Project.create(user_id: 6, title: "FamilyTool – a versatile modular synthesizer extension", description: "A unique MULT-OR-SWITCH in a 20hp eurorack case designed to make DFAM, Mother-32 or any other semi-modular synthesizer even greater.", funding_goal: 28610, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 29 Jan 2018 01:00:00 UTC +00:00')
Project.create(user_id: 7, title: "STORIES far from home (A bi-annual magazine)", description: "STORIES is a collection of personal narratives capturing the identities of a place as told by those most familiar with its complexities", funding_goal: 5000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 31 Dec 2018 01:00:00 UTC +00:00')
Project.create(user_id: 8, title: "1€ Campaign: Support the WWBL Magazine! <3", description: "WWBL is about to launch its first printed magazine! The project is now in the production phase and we need your support!", funding_goal: 1144, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 15 Feb 2018 01:00:00 UTC +00:00')
Project.create(user_id: 3, title: "Project9", description: "P9 Description", funding_goal: 90000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 29 Dec 2018 01:00:00 UTC +00:00')
Project.create(user_id: 1, title: "Project10", description: "P10 Description", funding_goal: 100000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 16 Mar 2018 01:00:00 UTC +00:00')


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

  file5 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed5.png')
  Project.all[4].image.attach(io: file5, filename: "seed5.png")

  file6 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed6.png')
  Project.all[5].image.attach(io: file6, filename: "seed6.png")

  file7 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed7.png')
  Project.all[6].image.attach(io: file7, filename: "seed7.png")

  file8 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed8.png')
  Project.all[7].image.attach(io: file8, filename: "seed8.png")



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