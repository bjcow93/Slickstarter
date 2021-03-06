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
u25 = User.create(email: 'email25@email.com', name: "Jeremy Pang", password: "password")
u26 = User.create(email: 'email26@email.com', name: "SuperFat Team", password: "password")
u27 = User.create(email: 'email27@email.com', name: "Kettle & Fire", password: "password")
u28 = User.create(email: 'email28@email.com', name: "Atomo Coffee", password: "password")
u29 = User.create(email: 'email29@email.com', name: 'Matthias Linda', password: 'password')
u30 = User.create(email: 'email30@email.com', name: 'Samuel Ashton Roberts', password: 'password')
u31 = User.create(email: 'email31@email.com', name: 'GreaterThanGames', password: 'password')
u32 = User.create(email: 'email32@email.com', name: 'Indigo R McD', password: 'password')
u33 = User.create(email: 'email33@email.com', name: 'Jenny Bruce', password: 'password')
u34 = User.create(email: 'email34@email.com', name: 'Tourniquet', password: 'password')
u35 = User.create(email: 'email35@email.com', name: 'Chase Grozdina', password: 'password')
u36 = User.create(email: 'email36@email.com', name: 'Railway Glass', password: 'password')
u37 = User.create(email: 'email37@email.com', name: 'Porter Fox', password: 'password')
u38 = User.create(email: 'email38@email.com', name: 'Thornwillow', password: 'password')
u39 = User.create(email: 'email39@email.com', name: 'Obvious State', password: 'password')
u40 = User.create(email: 'email40@email.com', name: 'Beehive Books', password: 'password')
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
p25 = Project.create(user_id: 25, title: "SCHOOL OF WOK - IT'S A'BAO TIME TO GO GLOBAL!", description: "Award-winning Asian cookery school, School of Wok, are making the world's first DIY Bao Bun Kit - and want to send it across the globe.", funding_goal: 45711, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Fri, 22 Feb 2019 01:00:00 UTC +00:00')
p26 = Project.create(user_id: 26, title: "SuperFat - Amazing Nut Butters!", description: "SuperFat - Amazing nut butters with functional ingredients. Keto & Vegan certified.", funding_goal: 10000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Fri, 22 Feb 2019 01:00:00 UTC +00:00')
p27 = Project.create(user_id: 27, title: "Kettle & Fire Keto Friendly Soups | Powered by Bone Broth.", description: "The first ever mouthwatering keto friendly soups made with bone broth. Nutritious, delicious, and ready to eat in seconds.", funding_goal: 20000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Fri, 22 Feb 2019 01:00:00 UTC +00:00')
p28 = Project.create(user_id: 28, title: "Atomo: We hacked the coffee bean - invented molecular coffee", description: "Atomo: We hacked the coffee bean - invented molecular coffee", funding_goal: 10000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Fri, 22 Feb 2019 01:00:00 UTC +00:00')
p29 = Project.create(user_id: 29, title: "Chained Echoes - a 16bit fantasy RPG with mechs and airships", description: "A classic JRPG adventure that combines a fantasy world full of magic with mechs and airships.", funding_goal: 68062, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Fri, 22 Feb 2019 01:00:00 UTC +00:00')
p30 = Project.create(user_id: 30, title: "Football Fantasy, a first-and-dungeon zine.", description: "A zine of rules and content for implementing American Football in Fantasy Role Playing Games.", funding_goal: 1800, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Fri, 22 Feb 2019 01:00:00 UTC +00:00')
p31 = Project.create(user_id: 31, title: "Sentinel Comics: The Roleplaying Game", description: "An all-new tabletop roleplaying game system based in the exciting world of Sentinel Comics!", funding_goal: 50000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Fri, 22 Feb 2019 01:00:00 UTC +00:00')
p32 = Project.create(user_id: 32, title: "M.N.S.T.R. [Monsters, Ne'er-do-wells, and Silk Trade Routes]", description: "An easy to pick up and play TTRPG about moving goods along silk road style trade routes through a hazardous and magical world.", funding_goal: 1000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Fri, 22 Feb 2019 01:00:00 UTC +00:00')
p33 = Project.create(user_id: 33, title: "Musical evidence to prove the existence of GHOSTE-Debut EP!", description: "Dreamy-pop brimming with passion, longing, and hope draped in sultry beats and haunting melodies!", funding_goal: 7000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Fri, 22 Feb 2019 01:00:00 UTC +00:00')
p34 = Project.create(user_id: 34, title: "Tourniquet: VANISHING LESSONS - 25th Anniversary VINYL!!", description: "On the 25th Anniversary of its release, help bring our 1994 album - VANISHING LESSONS - to VINYL!", funding_goal: 3900, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Fri, 22 Feb 2019 01:00:00 UTC +00:00')
p35 = Project.create(user_id: 35, title: "Aflockalypse: Rise of the Astral Beast", description: "A fantasy power metal/ballad album wherein four heroic chickens must gather together to save their world from the astral beast.", funding_goal: 8000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Fri, 22 Feb 2019 01:00:00 UTC +00:00')
p36 = Project.create(user_id: 36, title: "Railway Glass First Studio Album", description: "An album based on influences by a new and old generation of rock and metal, forming a new sound", funding_goal: 783, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Fri, 22 Feb 2019 01:00:00 UTC +00:00')
p37 = Project.create(user_id: 37, title: "2019 NOWHERE Print Annual", description: "The best travel writing, anywhere.", funding_goal: 15000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Fri, 22 Feb 2019 01:00:00 UTC +00:00')
p38 = Project.create(user_id: 38, title: "THE GREAT GATSBY", description: "An exquisite letterpress printed and hand bound limited edition of Fitzgerald's masterwork with Art Deco flair.", funding_goal: 10000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Fri, 22 Feb 2019 01:00:00 UTC +00:00')
p39 = Project.create(user_id: 39, title: "SHE: A VISUAL ODE TO VISIONARY WOMEN", description: "100 beautiful ways to share the brilliant words of visionary women writers, from Sappho to Sylvia Plath.", funding_goal: 15000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Fri, 22 Feb 2019 01:00:00 UTC +00:00')
p40 = Project.create(user_id: 40, title: "Classic Books Reimagined Through Illustration", description: "PETER PAN, CRIME & PUNISHMENT and THE BLAZING WORLD, presented in oversized, lavishly illustrated heirloom edition slipcase hardcovers.", funding_goal: 150000, start_date: 'Sun, 02 Dec 2018 01:00:00 UTC +00:00', end_date: 'Fri, 22 Feb 2019 01:00:00 UTC +00:00')




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

pc17 = ProjectCategory.create(project_id: 25, category_id: 5)
pc18 = ProjectCategory.create(project_id: 26, category_id: 5)
pc19 = ProjectCategory.create(project_id: 27, category_id: 5)
pc20 = ProjectCategory.create(project_id: 28, category_id: 5)

pc21 = ProjectCategory.create(project_id: 29, category_id: 6)
pc22 = ProjectCategory.create(project_id: 30, category_id: 6)
pc23 = ProjectCategory.create(project_id: 31, category_id: 6)
pc24 = ProjectCategory.create(project_id: 32, category_id: 6)

pc25 = ProjectCategory.create(project_id: 33, category_id: 7)
pc26 = ProjectCategory.create(project_id: 34, category_id: 7)
pc27 = ProjectCategory.create(project_id: 35, category_id: 7)
pc28 = ProjectCategory.create(project_id: 36, category_id: 7)

pc29 = ProjectCategory.create(project_id: 37, category_id: 8)
pc30 = ProjectCategory.create(project_id: 38, category_id: 8)
pc31 = ProjectCategory.create(project_id: 39, category_id: 8)
pc32 = ProjectCategory.create(project_id: 40, category_id: 8)


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

  file25 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed25.png')
  Project.all[24].image.attach(io: file25, filename: "seed25.png")

  file26 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed26.png')
  Project.all[25].image.attach(io: file26, filename: "seed26.png")

  file27 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed27.png')
  Project.all[26].image.attach(io: file27, filename: "seed27.png")

  file28 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed28.png')
  Project.all[27].image.attach(io: file28, filename: "seed28.png")

  file29 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed29.png')
  Project.all[28].image.attach(io: file29, filename: "seed29.png")

  file30 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed30.png')
  Project.all[29].image.attach(io: file30, filename: "seed30.png")

  file31 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed31.png')
  Project.all[30].image.attach(io: file31, filename: "seed31.png")

  file32 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed32.png')
  Project.all[31].image.attach(io: file32, filename: "seed32.png")

  file33 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed33.png')
  Project.all[32].image.attach(io: file33, filename: "seed33.png")

  file34 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed34.png')
  Project.all[33].image.attach(io: file34, filename: "seed34.png")

  file35 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed35.png')
  Project.all[34].image.attach(io: file35, filename: "seed35.png")

  file36 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed36.png')
  Project.all[35].image.attach(io: file36, filename: "seed36.png")

  file37 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed37.png')
  Project.all[36].image.attach(io: file37, filename: "seed37.png")

  file38 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed38.png')
  Project.all[37].image.attach(io: file38, filename: "seed38.png")

  file39 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed39.png')
  Project.all[38].image.attach(io: file39, filename: "seed39.png")

  file40 = open('https://s3-us-west-1.amazonaws.com/seedassets/seed40.png')
  Project.all[39].image.attach(io: file40, filename: "seed40.png")



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