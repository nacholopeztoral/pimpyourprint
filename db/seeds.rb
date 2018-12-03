UserChallenge.destroy_all
Challenge.destroy_all
User.destroy_all
Transportation.destroy_all

puts "Creating Challenges and Users..."
admin = User.new(username: "AdminUser", email:"admin@test.com", password:"admin@test.com", city: "Berlin", admin: true, score: 188, streak: 4)
admin.remote_avatar_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543416288/PimpYourPrint/bala.jpg'
admin.save!

user = User.new(username: "Testuser", email:"test@test.com", password:"test@test.com", city: "Berlin", score: 55, streak: 3)
user.remote_avatar_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543416493/PimpYourPrint/bunny.jpg'
user.save!

jadwiga = User.new(username: "Jadwiga", email:"jadwiga@coumert.com", password:"jadwiga@coumert.com", city: "Berlin", score: 155, streak: 1)
jadwiga.remote_avatar_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543580300/profil-picture.jpg'
jadwiga.save!

captainplanet = User.new(username: "SuperGreen", email:"green@green.com", password:"green@green.com", city: "Berlin", score: 155, streak: 3)
captainplanet.remote_avatar_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543580300/profil-picture.jpg'
captainplanet.save!

t1 = Transportation.new(user_id: admin.id, carbon: 147)
t1.created_at = (rand*10).days.ago
t1.save
t2 = Transportation.new(user_id: admin.id, carbon: 280)
t2.created_at = (rand*10).days.ago
t2.save
t3 = Transportation.new(user_id: admin.id, carbon: 18)
t3.created_at = (rand*10).days.ago
t3.save
t4 = Transportation.new(user_id: admin.id, carbon: 0)
t4.created_at = (rand*10).days.ago
t4.save
t5 = Transportation.new(user_id: admin.id, carbon: 22)
t5.created_at = (rand*10).days.ago
t5.save
t6 = Transportation.new(user_id: admin.id, carbon: 35)
t6.created_at = (rand*10).days.ago
t6.save
t7 = Transportation.new(user_id: admin.id, carbon: 11)
t7.created_at = (rand*10).days.ago
t7.save
t8 = Transportation.new(user_id: admin.id, carbon: 101)
t8.created_at = (rand*10).days.ago
t8.save
t9 = Transportation.new(user_id: admin.id, carbon: 177)
t9.created_at = (rand*10).days.ago
t9.save
t10 = Transportation.new(user_id: admin.id, carbon: 32)
t10.created_at = (rand*10).days.ago
t10.save

jadwiga_t1 = Transportation.new(user_id: jadwiga.id, carbon: 147)
jadwiga_t1.created_at = 1.day.ago
jadwiga_t1.save
jadwiga_t2 = Transportation.new(user_id: jadwiga.id, carbon: 280)
jadwiga_t2.created_at = 2.days.ago
jadwiga_t2.save
jadwiga_t3 = Transportation.new(user_id: jadwiga.id, carbon: 18)
jadwiga_t3.created_at = 3.days.ago
jadwiga_t3.save
jadwiga_t4 = Transportation.new(user_id: jadwiga.id, carbon: 0)
jadwiga_t4.created_at = 4.days.ago
jadwiga_t4.save
jadwiga_t5 = Transportation.new(user_id: jadwiga.id, carbon: 22)
jadwiga_t5.created_at = 5.days.ago
jadwiga_t5.save
jadwiga_t6 = Transportation.new(user_id: jadwiga.id, carbon: 35)
jadwiga_t6.created_at = 6.days.ago
jadwiga_t6.save

Transportation.new(user_id: user.id, carbon: 53).save!
Transportation.new(user_id: user.id, carbon: 12).save!
Transportation.new(user_id: user.id, carbon: 99).save!
Transportation.new(user_id: user.id, carbon: 163).save!
Transportation.new(user_id: user.id, carbon: 12).save!

meat = Challenge.new(title: "A day without eating meat",
                    category: "nutrition",
                    description:"Discover alternatives to your nutrition.",
                    carbon: 5,
                    active: true
                    )
meat.remote_picture_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543422305/PimpYourPrint/vegetarian-day.jpg'
meat.save!

calendar = Challenge.new(title: "Hang a seasonal fruits and veggies calendar in your kitchen",
                    category: "nutrition",
                    description:"Discover new flavors by eating seasonal and local.",
                    carbon: 15,
                    active: true
                    )
calendar.remote_picture_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543423074/PimpYourPrint/seasonal.jpg'
calendar.save!

soap = Challenge.new(title: "Replace your bottle of body wash with a bar soap",
                    category: "plastic",
                    description:"Bar soap comes in much less packaging and lasts much longer.",
                    carbon: 25,
                    active: true
                    )
soap.remote_picture_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543423070/PimpYourPrint/bar-soap.jpg'
soap.save!

bottle = Challenge.new(title: "Get yourself a reusable bottle of water",
                    category: "plastic",
                    description:"Inox or thick plastic, get yourself a bottle to carry everywhere you go.",
                    carbon: 30,
                    active: true
                    )
bottle.remote_picture_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543423622/PimpYourPrint/bottle.jpg'
bottle.save!

transportation = Challenge.new(title: "Calculate your daily transportation carbon footprint",
                    category: "transportation",
                    description:"Ever wondered about your daily transportation carbon footprint impact?",
                    carbon: 0,
                    active: true
                    )
transportation.remote_picture_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543423072/PimpYourPrint/bike.jpg'
transportation.save!

event_challenge = Challenge.new(title: "Join a Pimp Your Print event in your city",
                    category: "other",
                    description:"To get things in the move, nothing is best than to do it together!",
                    carbon: 0,
                    active: true
                    )
event_challenge.remote_picture_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543423622/PimpYourPrint/event.jpg'
event_challenge.save!

shower = Challenge.new(title: "Limit your shower to 5 minutes",
                    category: "water",
                    description:"Put a 5 minutes long song and save liters of water by limiting your shower time! Believe us, you'll have enough time.",
                    carbon: 9,
                    active: true
                    )
shower.remote_picture_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543420779/PimpYourPrint/shower.jpg'
shower.save!

elevator = Challenge.new(title: "Skip the elevator and take the stairs",
                    category: "energy",
                    description:"An elevator ride costs in average x of electricity. Skip the elevator and take the staris and lose x calories!",
                    carbon: 45,
                    active: true
                    )
elevator.remote_picture_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543423621/PimpYourPrint/stairs.jpg'
elevator.save!

car = Challenge.new(title: "Leave your car home and use alternative transports",
                    category: "transportation",
                    description:"An empty car ride in the city is the most unefficient way of traveling.",
                    carbon: 50,
                    active: true
                    )
car.remote_picture_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543423070/PimpYourPrint/car.jpg'
car.save!

heating = Challenge.new(title: "Reduce your heating by 1 degree",
                    category: "energy",
                    description:"Only one degree of all heating can make a difference on your bills and on our planet. Add an extra layer if necessary!",
                    carbon: 30,
                    active: true
                    )
heating.remote_picture_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543423070/PimpYourPrint/heating.jpg'
heating.save!

cup = Challenge.new(title: "Get yourself a reusable cup",
                    category: "plastic",
                    description:"Gently decline all offered plastic cups by using your own!",
                    carbon: 46,
                    active: true
                    )
cup.remote_picture_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543423069/PimpYourPrint/reusable-cup.jpg'
cup.save!

sticker = Challenge.new(title: "Install a 'No commercials' sticker on your mailbox",
                    category: "waste",
                    description:"Who cares about all that crap advertisement.",
                    carbon: 90,
                    active: true
                    )
sticker.remote_picture_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543423073/PimpYourPrint/sticker.jpg'
sticker.save!

dry_clothes = Challenge.new(title: "Hang your clothes to dry them",
                    category: "energy",
                    description:"Skip the dryer, that uses too much energy",
                    carbon: 80,
                    active: false
                    )
dry_clothes.remote_picture_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543423076/PimpYourPrint/dry-clothes.jpg'
dry_clothes.save!

dry_hair = Challenge.new(title: "Dry your hair with a towel instead of a blow dryer",
                    category: "energy",
                    description:"It's better for the earth, for your hair and for your energy bill!",
                    carbon: 80,
                    active: false
                    )
dry_hair.remote_picture_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543423070/PimpYourPrint/dry-hair.jpg'
dry_hair.save!

fake = Challenge.new(title: "Dryy your hair with a towel instead of a blow dryer",
                    category: "energy",
                    description:"It's better for the earth, for your hair and for your energy bill!",
                    carbon: 40583,
                    active: false
                    )
fake.remote_picture_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543423070/PimpYourPrint/dry-hair.jpg'
fake.save!

fakechallenge = UserChallenge.new(user_id: captainplanet.id, completed: true, challenge_id: fake.id)
fakechallenge.created_at = 1.day.ago
fakechallenge.save

u1 = UserChallenge.new(user_id: admin.id, completed: true, challenge_id: sticker.id)
u1.created_at = 1.day.ago
u1.save

u2 = UserChallenge.new(user_id: admin.id, completed: true, challenge_id: dry_hair.id)
u2.created_at = 2.days.ago
u2.save

u3 = UserChallenge.new(user_id: admin.id, completed: false, challenge_id: heating.id)
u3.created_at = 3.days.ago
u3.save

u4 = UserChallenge.new(user_id: admin.id, completed: true, challenge_id: dry_clothes.id)
u4.created_at = 4.days.ago
u4.save

u5 = UserChallenge.new(user_id: admin.id, completed: true, challenge_id: car.id)
u5.created_at = 5.days.ago
u5.save

u6 = UserChallenge.new(user_id: admin.id, completed: true, challenge_id: cup.id)
u6.created_at = 6.days.ago

u7 = UserChallenge.new(user_id: user.id, completed: true, challenge_id: sticker.id)
u7.created_at = 1.day.ago
u7.save

u8 = UserChallenge.new(user_id: user.id, completed: false, challenge_id: dry_hair.id)
u8.created_at = 2.days.ago
u8.save

u9 = UserChallenge.new(user_id: user.id, completed: true, challenge_id: heating.id)
u9.created_at = 3.days.ago
u9.save

u10 = UserChallenge.new(user_id: user.id, completed: true, challenge_id: dry_clothes.id)
u10.created_at = 4.days.ago
u10.save

u11 = UserChallenge.new(user_id: user.id, completed: false, challenge_id: car.id)
u11.created_at = 5.days.ago
u11.save

puts "Seeding completed"
