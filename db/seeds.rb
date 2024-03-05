# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "open-uri"

Farmer.destroy_all
User.destroy_all
Product.destroy_all

profile_photo1 = URI.open("https://p6.focus.de/img/fotos/id_259576981/oezdemir-kopie.jpg?im=Resize%3D%28800%2C450%29&impolicy=perceptual&quality=mediumHigh&hash=6dfac9a95898c860ae4fcdf7a6963cb8911587b26cecae894495ce6ca6c421ff")
farm_photo1 = URI.open("https://i0.wp.com/forksinthedirt.com/wp-content/uploads/2019/08/IMG_20181004_120045479_HDR.jpg?resize=568%2C757&ssl=1")
farm_photo2 = URI.open("https://www.kopos-projekt.de/sites/default/files/styles/gallery_preview/public/2023-03/20220725_Tiny%20Farms_Ernte_%C2%A9Carla%20Ulrich-4_0.jpg?itok=3gciXnIC")
farm_photo3 = URI.open("https://img.etimg.com/thumb/width-1200,height-1200,imgsize-507598,resizemode-75,msid-95616465/wealth/save/want-to-take-up-farming-5-lessons-from-those-who-gave-up-and-their-struggles.jpg")
farm_photo4 = URI.open("https://i0.wp.com/www.elkeskindergeschichten.de/wp-content/uploads/2013/10/Das-Apfeljahr-%C2%A9-lumix2004pixabay-apple-1873078_1920.jpg?resize=1360%2C765&ssl=1")

profile_photo2 = URI.open("https://cdn.schwaebische.de/2024/01/13/88a20a79-7b05-4d43-ac04-1712cde66b71.jpeg")
farm_photo5 = URI.open("https://columbiametro.com/wp-content/uploads/2021/09/iStock-1091697242-scaled.jpg")
farm_photo6 = URI.open("https://www.kopos-projekt.de/sites/default/files/styles/gallery_preview/public/2023-03/20220702_Tiny%20Farms%20Academy_Blasen%20und%20Schwielen_%C2%A9Carla%20Ulrich-21.jpg?itok=JhyDTFOj")
farm_photo7 = URI.open("https://thinkport.org/mptclassroom/mdfh/organic-farming/images/mfh-organic-main.jpg")
farm_photo8 = URI.open("https://jacoblund.com/cdn/shop/products/bf8335394b08d71a9c71f24279cdf8dd.jpg?v=1694678770")

product_photo1 = URI.open("https://cdn11.bigcommerce.com/s-a9b4a/images/stencil/1280x1280/products/1196/6690/Little-Fingers-and-Organic-Little-Fingers-Carrots__69944.1666917020.jpg?c=2")

ana = User.create(name: "Ana", address: "", email: "ana@email.com", password: "123456", is_farmer: true)
carl = User.create(name: "Carl", address: "", email: "carl@email.com", password: "123456", is_farmer: false)
charly = User.create(name: "Charly", address: "", email: "charly@email.com", password: "123456", is_farmer: false)
carsten = User.create(name: "Carsten", address: "", email: "carsten@email.com", password: "123456", is_farmer: true)


farmer1 = Farmer.new(
  user: ana,
  latitude: nil,
  longitude: nil,
  title: "Hof Obst sells fruit",
  description_profile: "A farmer.",
  description_farm: "A farmer in Brandenburg, passionate about apples.",
  address: "Brüsenhagen 28, 16866 Gumtow",
  # profile_photo_url: ,
  # farm_photo_url: ,
)

farmer1.main_photo.attach(io: profile_photo1, filename: "farmer1_profile", content_type: "image/jpg")
farmer1.sub_photos.attach(io: farm_photo1, filename: "farm_sub1", content_type: "image/jpg")
farmer1.sub_photos.attach(io: farm_photo2, filename: "farm_sub2", content_type: "image/jpg")
farmer1.sub_photos.attach(io: farm_photo3, filename: "farm_sub3", content_type: "image/jpg")
farmer1.sub_photos.attach(io: farm_photo4, filename: "farm_sub4", content_type: "image/jpg")


farmer1.save

farmer2 = Farmer.new(
  user: carsten,
  latitude: nil,
  longitude: nil,
  title: "Behringhof sells fruit such as berries and apples",
  description_profile: "A farmer.",
  description_farm: "A farmer in Brandenburg, passionate about berries andapples.",
  address: "Berliner Str. 23 b, 16259 Gemeinde Höhenland",
  # profile_photo_url: ,
  # farm_photo_url: ,
)

farmer2.main_photo.attach(io: profile_photo2, filename: "farmer1_profile", content_type: "image/jpg")
farmer2.sub_photos.attach(io: farm_photo5, filename: "farm_sub1", content_type: "image/jpg")
farmer2.sub_photos.attach(io: farm_photo6, filename: "farm_sub2", content_type: "image/jpg")
farmer2.sub_photos.attach(io: farm_photo7, filename: "farm_sub3", content_type: "image/jpg")
farmer2.sub_photos.attach(io: farm_photo8, filename: "farm_sub4", content_type: "image/jpg")


farmer2.save

product1 = Product.new(
  name: "carrot",
  farmer: farmer2.user_id,
  price: "1,20 €",
  quantity: "30",
  description: "organic, heirloom carrots",
)

product1.product_photo.attach(io: product_photo1, filename: "product1_photo", content_type: "image/jpg")

product1.save
