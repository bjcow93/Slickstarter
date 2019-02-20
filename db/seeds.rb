# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

Category.delete_all 
c1 = Category.create(name: "Art", description: "Discover the artists and organizations using Kickstarter to realize ambitious projects in visual art and performance.")
c2 = Category.create(name: "Comics & Illustration", description: "Explore fantastical worlds and original characters from Kickstarter’s community of comics creators and illustrators.")
c3 = Category.create(name: "Design & Tech", description: "From fine design to innovative tech, discover projects from creators working to build a more beautiful future.")
c4 = Category.create(name: "Film", description: "Join forces with the intrepid filmmakers and festival creators changing the way stories get told on screen.")
c5 = Category.create(name: "Food & Craft", description: "See how artisans and entrepreneurs are using Kickstarter to break new ground in food, fashion, and crafts.")
c6 = Category.create(name: "Games", description: "From tabletop adventures to beloved revivals, discover the projects forging the future of gameplay.")
c7 = Category.create(name: "Music", description: "Discover new albums, performances, and independent venues from creators using Kickstarter to shape the future of sound.")
c8 = Category.create(name: "Publishing", description: "Explore how writers and publishers are using Kickstarter to bring new literature, periodicals, podcasts, and more to life.")


User.delete_all
u1 = User.create(email: 'email1@email.com', name: "Dust London", password: "password")
u2 = User.create(email: 'email2@email.com', name: "Awaken Realms", password: "password")
u3 = User.create(email: 'email3@email.com', name: "Emily Mode", password: "password")
u4 = User.create(email: 'email4@email.com', name: "MALKYRS STUDIO", password: "password")
u5 = User.create(email: 'email5@email.com', name: "PrintDreams", password: "password")
u6 = User.create(email: 'email6@email.com', name: "UNCPROP Modular", password: "password")
u7 = User.create(email: 'email7@email.com', name: "STORIES far from home", password: "password")
u8 = User.create(email: 'email8@email.com', name: "Writing Berlin Lab", password: "password")
u9 = User.create(email: 'email9@email.com', name: "The Current Museum", password: "password")
u10 = User.create(email: 'email10@email.com', name: "Stuart Semple", password: "password")
u11 = User.create(email: 'email11@email.com', name: "Hannah Fofana", password: "password")
u12 = User.create(email: 'email12@email.com', name: "Naima Green", password: "password")
u13 = User.create(email: 'email13@email.com', name: "Dan Brereton", password: "password")
u14 = User.create(email: 'email14@email.com', name: "Karl Kesel", password: "password")
u15 = User.create(email: 'email15@email.com', name: "Beehive Books", password: "password")
u16 = User.create(email: 'email16@email.com', name: "John Coats", password: "password")
u17 = User.create(email: 'email17@email.com', name: "Mova", password: "password")
u18 = User.create(email: 'email18@email.com', name: "Riku Toivonen", password: "password")
u19 = User.create(email: 'email19@email.com', name: "Chifen & Ewan", password: "password")
u20 = User.create(email: 'email20@email.com', name: "Creoqode", password: "password")
u21 = User.create(email: 'email21@email.com', name: "REEFA", password: "password")
u22 = User.create(email: 'email22@email.com', name: "Aaron Biebert", password: "password")
u23 = User.create(email: 'email23@email.com', name: "Sam Romero", password: "password")
u24 = User.create(email: 'email24@email.com', name: "Tim Mahoney", password: "password")
user = User.create(email: 'demouser@email.com', name: "Demo User", password: "password")



Project.delete_all
p1 = Project.create!(user_id: 1, title: "Transforming Tea Waste Into Beautiful Homeware", description: "Changing how we recycle. Bringing the organic into design. This collection transforms tea into beautiful homeware.", funding_goal: 3788, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 29 Dec 2018 01:00:00 UTC +00:00')
p2 = Project.create(user_id: 2, title: "Tainted Grail: The Fall of Avalon", description: "Adventure, survival co-op Board Game set in unique grim world inspired by Arthurian Legends. Unforgettable experience for 1-4 players", funding_goal: 50517, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 29 Jan 2019 01:00:00 UTC +00:00')
p3 = Project.create(user_id: 3, title: "RADIFY", description: "RADIFY the Graphic Novel", funding_goal: 7600, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 31 Dec 2018 01:00:00 UTC +00:00')
p4 = Project.create(user_id: 4, title: "Malkyrs - The interactive card game", description: "Malkyrs is an interactive trading card game. Fight your friends online with real cards & upgrade them on PC, MAC and NINTENDO SWITCH!", funding_goal: 56929, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 15 Feb 2019 01:00:00 UTC +00:00')
p5 = Project.create(user_id: 5, title: "PrintBrush™ XDR -Colors. Everywhere.", description: "First color inkjet printer for smartphones. Go paperless. Go truly mobile. Save the planet.", funding_goal: 501128, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 29 Dec 2018 01:00:00 UTC +00:00')
p6 = Project.create(user_id: 6, title: "FamilyTool – a versatile modular synthesizer extension", description: "A unique MULT-OR-SWITCH in a 20hp eurorack case designed to make DFAM, Mother-32 or any other semi-modular synthesizer even greater.", funding_goal: 28610, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 29 Jan 2018 01:00:00 UTC +00:00')
p7 = Project.create(user_id: 7, title: "STORIES far from home (A bi-annual magazine)", description: "STORIES is a collection of personal narratives capturing the identities of a place as told by those most familiar with its complexities", funding_goal: 5000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 31 Dec 2018 01:00:00 UTC +00:00')
p8 = Project.create(user_id: 8, title: "1€ Campaign: Support the WWBL Magazine! <3", description: "WWBL is about to launch its first printed magazine! The project is now in the production phase and we need your support!", funding_goal: 1144, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 15 Feb 2018 01:00:00 UTC +00:00')
p9 = Project.create(user_id: 9, title: "The Current Museum: Salon on Artificial Intelligence", description: "Collect contemporary art with artists, curators, and technologists. Shape our collection by voting on artworks, and get in-home access.", funding_goal: 15000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Thu, 21 Mar 2019 01:00:00 UTC +00:00')
p10 = Project.create(user_id: 10, title: "The blackest black paint in the world! Black 3.0", description: "We've created a paint that absorbs 98-99% of visible light, we want to share this black hole in a bottle with all artists and creators.", funding_goal: 32155, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Fri, 22 Mar 2019 01:00:00 UTC +00:00')
p11 = Project.create(user_id: 11, title: "The Field Tarot Deck", description: "A 78-Card Artist Tarot Deck & Pocket Guidebook", funding_goal: 7000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sun, 03 Mar 2019 01:00:00 UTC +00:00')
p12 = Project.create(user_id: 12, title: "Pur·suit", description: "A deck of playing cards featuring queer womxn, trans, non-binary, and gender nonconforming people.", funding_goal: 32000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Fri, 22 Feb 2019 01:00:00 UTC +00:00')
p13 = Project.create(user_id: 13, title: "Dan Brereton’s GIANTKILLER Monster Edition Hardcover", description: "An over-size, expanded hardcover collection of the classic American Kaiju Epic", funding_goal: 16000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 29 Dec 2018 01:00:00 UTC +00:00')
p14 = Project.create(user_id: 14, title: "SECTION ZERO 1959!", description: "ATOMIC MUTATIONS! FLYING SAUCERS! COMMIES! Karl Kesel & Tom Grummett's SECTION ZERO returns— in an ALL NEW graphic novel set in 1959!", funding_goal: 60000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 16 Mar 2018 01:00:00 UTC +00:00')
p15 = Project.create(user_id: 15, title: "Classic Books, Reimagined Through Illustration", description: "PETER PAN, CRIME & PUNISHMENT and THE BLAZING WORLD, presented in oversized, lavishly illustrated heirloom edition slipcase hardcovers.", funding_goal: 150000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 16 Mar 2018 01:00:00 UTC +00:00')
p16 = Project.create(user_id: 16, title: "Dino Beasts: The Hunt", description: "Totally rad 82 page Dinosaur-Barbarian fantasy comic.", funding_goal: 4000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Sat, 16 Mar 2018 01:00:00 UTC +00:00')
p17 = Project.create(user_id: 17, title: "MOVA 3.0 Cycling Jacket", description: "More than a Cycling Jacket: 22.000mm Waterproof, Reversible, Day and Night Visible, Packable, 8 Pockets, Hood fits your Helmet.", funding_goal: 5000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Fri, 22 Feb 2019 01:00:00 UTC +00:00')
p18 = Project.create(user_id: 18, title: "Quickstarter: I BELIEVE I CAN PLY", description: "The plywood frame works as a clip - to attach pictures, papers and notes. It can be used as a drawing board as well.", funding_goal: 1029, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Fri, 22 Feb 2019 01:00:00 UTC +00:00')
p19 = Project.create(user_id: 19, title: "Quickstarter: Matilda ~ the rocking note & photo stand", description: "The flat-packed, fold-it-yourself, mirror-finish stand that waves your favourite photos, notes or postcards at you!", funding_goal: 469, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Fri, 22 Feb 2019 01:00:00 UTC +00:00')
p20 = Project.create(user_id: 20, title: "PYXA | DIY Game Console", description: "Build your game console and create your own video games.", funding_goal: 12864, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Fri, 22 Feb 2019 01:00:00 UTC +00:00')
p21 = Project.create(user_id: 21, title: "REEFA / Justice for Israel", description: "A movie based on the true story of 18 year-old Latin artist Israel Reefa Hernandez whose death by police sparked a national movement.", funding_goal: 150000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Fri, 22 Feb 2019 01:00:00 UTC +00:00')
p22 = Project.create(user_id: 22, title: "You Don't Know Nicotine - Documentary Film", description: "Join us on a wild journey around the world to discover the eye-opening truth about nicotine.", funding_goal: 50000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Fri, 22 Feb 2019 01:00:00 UTC +00:00')
p23 = Project.create(user_id: 23, title: "The Black Eagle Documentary", description: "This documentary will focus on how a symbol for farm workers rights' became a cultural icon.", funding_goal: 15000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Fri, 22 Feb 2019 01:00:00 UTC +00:00')
p24 = Project.create(user_id: 24, title: "Finding Plantasia", description: "A treasure-hunt documentary about two best friends looking for an incredibly rare record made for plants.", funding_goal: 9000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Fri, 22 Feb 2019 01:00:00 UTC +00:00')




ProjectCategory.delete_all 
pc1 = ProjectCategory.create(project_id: 9, category_id: 1)
pc2 = ProjectCategory.create(project_id: 10, category_id: 1)
pc3 = ProjectCategory.create(project_id: 11, category_id: 1)
pc4 = ProjectCategory.create(project_id: 12, category_id: 1)

pc5 = ProjectCategory.create(project_id: 13, category_id: 2)
pc6 = ProjectCategory.create(project_id: 14, category_id: 2)
pc7 = ProjectCategory.create(project_id: 15, category_id: 2)
pc8 = ProjectCategory.create(project_id: 16, category_id: 2)

pc9 = ProjectCategory.create(project_id: 17, category_id: 3)
pc10 = ProjectCategory.create(project_id: 18, category_id: 3)
pc11 = ProjectCategory.create(project_id: 19, category_id: 3)
pc12 = ProjectCategory.create(project_id: 20, category_id: 3)

pc13 = ProjectCategory.create(project_id: 21, category_id: 4)
pc14 = ProjectCategory.create(project_id: 22, category_id: 4)
pc15 = ProjectCategory.create(project_id: 23, category_id: 4)
pc16 = ProjectCategory.create(project_id: 24, category_id: 4)


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
  
  file9 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed9.png')
  Project.all[8].image.attach(io: file9, filename: "seed9.png")

  file10 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed10.png')
  Project.all[9].image.attach(io: file10, filename: "seed10.png")

  file11 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed11.png')
  Project.all[10].image.attach(io: file11, filename: "seed11.png")

  file12 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed12.png')
  Project.all[11].image.attach(io: file12, filename: "seed12.png")

  file13 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed13.png')
  Project.all[12].image.attach(io: file13, filename: "seed13.png")

  file14 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed14.png')
  Project.all[13].image.attach(io: file14, filename: "seed14.png")

  file15 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed15.png')
  Project.all[14].image.attach(io: file15, filename: "seed15.png")

  file16 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed16.png')
  Project.all[15].image.attach(io: file16, filename: "seed16.png")

  file17 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed17.png')
  Project.all[16].image.attach(io: file17, filename: "seed17.png")

  file18 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed18.png')
  Project.all[17].image.attach(io: file18, filename: "seed18.png")

  file19 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed19.png')
  Project.all[18].image.attach(io: file19, filename: "seed19.png")

  file20 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed20.png')
  Project.all[19].image.attach(io: file20, filename: "seed20.png")

  file21 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed21.png')
  Project.all[20].image.attach(io: file21, filename: "seed21.png")

  file22 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed22.png')
  Project.all[21].image.attach(io: file22, filename: "seed22.png")

  file23 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed23.png')
  Project.all[22].image.attach(io: file23, filename: "seed23.png")

  file24 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed24.png')
  Project.all[23].image.attach(io: file24, filename: "seed24.png")



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