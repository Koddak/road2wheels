# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Moto.destroy_all
User.destroy_all

file = URI.open('https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2960&q=80')
amaury = User.new(email: "amaury@gmail.com", password: "azerty")
amaury.photo.attach(io: file, filename: 'amaury.png', content_type: 'image/png')
amaury.save

file = URI.open('https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=800')
benjamin = User.new(email: "benjamin@gmail.com", password: "azerty")
benjamin.photo.attach(io: file, filename: 'benjamin.png', content_type: 'image/png')
benjamin.save

file = URI.open('https://images.unsplash.com/photo-1552374196-c4e7ffc6e126?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=800')
marco = User.new(email: "marcantoine@gmail.com", password: "azerty")
marco.photo.attach(io: file, filename: 'marco.png', content_type: 'image/png')
marco.save

file = URI.open("https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800")
mickael = User.new(email: "mickael@gmail.com", password: "azerty")
mickael.photo.attach(io: file, filename: 'mickael.png', content_type: 'image/png')
mickael.save

file = URI.open("https://www.motoplanete.com/honda/zoom-700px/Honda-CB-650-F-2017-700px.webp")
moto1 = Moto.new(brand: "Honda", model: "CBF", price: 65, cylinder: "650", address: "Lille", user_id: amaury.id)
moto1.photo.attach(io: file, filename: 'hondaCBF.png', content_type: 'image/png')
moto1.save

file = URI.open("https://www.motoplanete.com/honda/zoom-700px/Honda-VFR-800-2018-700px.webp")
moto2 = Moto.new(brand: "Honda", model: "VFR", price: 80, cylinder: "800", address: "Paris", user_id: amaury.id)
moto2.photo.attach(io: file, filename: 'hondaVFR.png', content_type: 'image/png')
moto2.save

file = URI.open("https://media.motoservices.com/media/cache/vehicle_detail/media/vehicle/822/GSX-R600_2011_Diagonal_W.jpg")
moto3 = Moto.new(brand: "Suzuki", model: "GSX-R", price: 100, cylinder: "600", address: "Lambersart", user_id: benjamin.id)
moto3.photo.attach(io: file, filename: 'suzukiGSX-R.png', content_type: 'image/png')
moto3.save

file = URI.open("https://www.motoplanete.com/yamaha/zoom-700px/V-max-2010-700px.webp")
moto4 = Moto.new(brand: "Yamaha", model: "V-MAX", price: 75, cylinder: "1700", address: "Lompret", user_id: benjamin.id)
moto4.photo.attach(io: file, filename: 'yamahavmax.png', content_type: 'image/png')
moto4.save

file = URI.open("https://www.motoplanete.com/yamaha/Yamaha-MT-10-2019.webp")
moto5 = Moto.new(brand: "Yamaha", model: "MT-10", price: 85, cylinder: "1000", address: "Fromelles", user_id: marco.id)
moto5.photo.attach(io: file, filename: 'yamahamt10.png', content_type: 'image/png')
moto5.save

file = URI.open ("https://www.motoplanete.com/bmw/zoom-700px/BMW-R-1250-RT-2022-700px.webp")
moto6 = Moto.new(brand: "BMW", model: "R1250RT", price: 125, cylinder:  "1250", address: "Lomme", user_id: mickael.id)
moto6.photo.attach(io: file, filename: 'bmw.png', content_type: 'image/png')
moto6.save

file = URI.open ("https://www.motoplanete.com/yamaha/zoom-700px/yamaha-XT-1200-Z-Super-Tenere-2018-700px.webp")
moto7 = Moto.new(brand: "Yamaha", model: "XTZ 1200", price: 115, cylinder: "1200", address: "Herlies", user_id: mickael.id)
moto7.photo.attach(io: file, filename: 'yamaham700xt.png', content_type: 'image/png')
moto7.save

file = URI.open ("https://www.motoplanete.com/indian/zoom-700px/Indian-FTR-1200-R-Carbon-2022-700px-a.webp")
moto8 = Moto.new(brand: "Indian", model: "FTR", price: 90, cylinder: "1200",address: "Haubourdin", user_id: mickael.id)
moto8.photo.attach(io: file, filename: 'indian.png', content_type: 'image/png')
moto8.save

file = URI.open ("https://www.motoplanete.com/moto-guzzi/zoom-700px/Moto-Guzzi-850-V7-IV-Stone-2022-700px.webp")
moto9 = Moto.new(brand: "Moto-Guzzi", model: "V7-Stone", price: 135, cylinder: "850", address: "Croix", user_id: marco.id)
moto9.photo.attach(io: file, filename: 'guzzi.png', content_type: 'image/png')
moto9.save

file = URI.open ("https://2img.net/u/3112/65/44/44/avatars/1081-91.jpg")
moto10 = Moto.new(brand: "Highway to Hell", model: "Oui-Oui", price: 850, cylinder: "999", address: "La grande vallée", user_id: benjamin.id)
moto10.photo.attach(io: file, filename: 'ouioui.png', content_type: 'image/png')
moto10.save
