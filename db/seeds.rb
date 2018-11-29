UserChallenge.destroy_all
Challenge.destroy_all
User.destroy_all

puts "Creating Challenges and Users..."
admin = User.new(username: "AdminUser", email:"admin@test.com", password:"admin@test.com", city: "Berlin", admin: true)
admin.remote_avatar_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543416288/PimpYourPrint/bala.jpg'
admin.save!

user = User.new(username: "Testuser", email:"test@test.com", password:"test@test.com", city: "Berlin")
user.remote_avatar_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543416493/PimpYourPrint/bunny.jpg'
user.save!

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
                    category: "energy",
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
                    category: "energy",
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

puts "Seeding completed"
