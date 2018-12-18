# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
User.create(email: 'ben@email.com', name: "Ben", password: "password")

Project.delete_all
Project.create(user_id: 1, title: "Project1", description: "P1 Description", funding_goal: 10000, start_date: 'Fri, 14 Dec 2018 00:43:19 UTC +00:00', end_date: 'Fri, 14 Mar 2018 00:43:19 UTC +00:00')
Project.create(user_id: 1, title: "Project2", description: "P2 Description", funding_goal: 20000, start_date: 'Fri, 14 Dec 2018 00:43:19 UTC +00:00', end_date: 'Fri, 14 Mar 2018 00:43:19 UTC +00:00')
Project.create(user_id: 1, title: "Project3", description: "P3 Description", funding_goal: 30000, start_date: 'Fri, 14 Dec 2018 00:43:19 UTC +00:00', end_date: 'Fri, 14 Mar 2018 00:43:19 UTC +00:00')
Project.create(user_id: 1, title: "Project4", description: "P4 Description", funding_goal: 40000, start_date: 'Fri, 14 Dec 2018 00:43:19 UTC +00:00', end_date: 'Fri, 14 Mar 2018 00:43:19 UTC +00:00')
Project.create(user_id: 1, title: "Project5", description: "P5 Description", funding_goal: 50000, start_date: 'Fri, 14 Dec 2018 00:43:19 UTC +00:00', end_date: 'Fri, 14 Mar 2018 00:43:19 UTC +00:00')
Project.create(user_id: 1, title: "Project6", description: "P6 Description", funding_goal: 60000, start_date: 'Fri, 14 Dec 2018 00:43:19 UTC +00:00', end_date: 'Fri, 14 Mar 2018 00:43:19 UTC +00:00')
Project.create(user_id: 1, title: "Project7", description: "P7 Description", funding_goal: 70000, start_date: 'Fri, 14 Dec 2018 00:43:19 UTC +00:00', end_date: 'Fri, 14 Mar 2018 00:43:19 UTC +00:00')
Project.create(user_id: 1, title: "Project8", description: "P8 Description", funding_goal: 80000, start_date: 'Fri, 14 Dec 2018 00:43:19 UTC +00:00', end_date: 'Fri, 14 Mar 2018 00:43:19 UTC +00:00')
Project.create(user_id: 1, title: "Project9", description: "P9 Description", funding_goal: 90000, start_date: 'Fri, 14 Dec 2018 00:43:19 UTC +00:00', end_date: 'Fri, 14 Mar 2018 00:43:19 UTC +00:00')
Project.create(user_id: 1, title: "Project10", description: "P10 Description", funding_goal: 100000, start_date: 'Fri, 14 Dec 2018 00:43:19 UTC +00:00', end_date: 'Fri, 14 Mar 2018 00:43:19 UTC +00:00')