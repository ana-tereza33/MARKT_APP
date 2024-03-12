require "open-uri"

puts "Cleaning Database 🧼"
OrderProduct.destroy_all
Basket.destroy_all
Order.destroy_all
Product.destroy_all

Farmer.find_each do |farmer|
  farmer.main_photo.purge_later
  farmer.sub_photos.purge_later
  farmer.destroy
end

Farmer.destroy_all
User.destroy_all

puts "Creating Farmers 👩🏼‍🌾 👨🏽‍🌾 👩🏼‍🌾 👨🏽‍🌾"

profile_photo_cem = URI.open("https://i.ibb.co/zbdTdjf/profile-photo1.jpg")
farm_photo_cem_1 = URI.open("https://i.ibb.co/PxVBySY/farm-photo1.jpg")
farm_photo_cem_2 = URI.open("https://i.ibb.co/dKPD8G1/farm-photo2.jpg")
farm_photo_cem_3 = URI.open("https://i.ibb.co/2kyN3M0/farm-photo3-jpg.png")
farm_photo_cem_4 = URI.open("https://i.ibb.co/jRs7Zhj/farm-photo4.jpg")

profile_photo2 = URI.open("https://i.ibb.co/LtgjZkm/profile-photo2.jpg")
farm_photo5 = URI.open("https://i.ibb.co/sH1cf8s/farm-photo5.jpg")
farm_photo6 = URI.open("https://i.ibb.co/f21zMZ8/farm-photo6.jpg")
farm_photo7 = URI.open("https://i.ibb.co/jWJGTny/farm-photo7.jpg")
farm_photo8 = URI.open("https://i.ibb.co/bLr54yg/farm-photo8.jpg")

profile_photo3 = URI.open("https://i.ibb.co/z6fZ7zJ/profile-photo3.jpg")
farm_photo9 = URI.open("https://i.ibb.co/Z677qCr/farmphoto9.jpg")
farm_photo10 = URI.open("https://i.ibb.co/K2xLHQ8/farm-photo10.jpg")
farm_photo11 = URI.open("https://i.ibb.co/Vp4fndQ/farm-photo11.jpg")
farm_photo12 = URI.open("https://i.ibb.co/4pcGG3K/farm-photo12.jpg")

profile_photo4 = URI.open("https://i.ibb.co/Ptrcz2p/profile-photo4.jpg")
farm_photo13 = URI.open("https://i.ibb.co/pwC0B6v/farm-photo13.jpg")
farm_photo14 = URI.open("https://i.ibb.co/02ZfQm3/farm-photo14.jpg")
farm_photo15 = URI.open("https://i.ibb.co/HdhWKfL/farm-photo15.jpg")
farm_photo16 = URI.open("https://i.ibb.co/wwqns79/farm-photo16.jpg")

profile_photo5 = URI.open("https://i.ibb.co/QXYBCkC/profile-photo5.jpg")
farm_photo17 = URI.open("https://i.ibb.co/qDk6k12/farm-photo17.jpg")
farm_photo18 = URI.open("https://i.ibb.co/VS0dTkB/farm-photo18.jpg")
farm_photo19 = URI.open("https://i.ibb.co/4FdxXKb/farm-photo19.png")
farm_photo20 = URI.open("https://i.ibb.co/s5fYnNS/farm-photo20.jpg")

demo_farmer_profil_photo = URI.open("https://i.ibb.co/Qcg2ZHm/profile-photo6.jpg")
farm_photo21_herman_farmer = URI.open("https://i.ibb.co/Df06N6Z/farm-photo21.jpg")
farm_photo22_herman_farmer = URI.open("https://i.ibb.co/YQM1gmV/farm-photo22.jpg")
farm_photo23_herman_farmer = URI.open("https://i.ibb.co/Y2swb8y/farm-photo23.jpg")
farm_photo24_herman_farmer = URI.open("https://i.ibb.co/wsXF9Cr/farm-photo24.jpg")

#product

product_photo1 = URI.open("https://cdn11.bigcommerce.com/s-a9b4a/images/stencil/1280x1280/products/1196/6690/Little-Fingers-and-Organic-Little-Fingers-Carrots__69944.1666917020.jpg?c=2")
product_photo2 = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThxLbqQ6gg8i9Z-cWaQNJxGm7imSHH1fEqEg&usqp=CAU")
product_photo3 = URI.open("https://www.yorktest.com/wp-content/uploads/2021/12/AdobeStock_275778955-1024x683.jpeg")
product_photo4 = URI.open("https://images.squarespace-cdn.com/content/v1/5de5df7f9f40c13aa6a8b579/1599183475729-668O0RQG0N41AIHKWEXU/intro-1597860204.jpg")

#user

user1_cem = User.create(name: "Cem Özdemir", address: "Am Alten Markt 9, Potsdam, Brandenburg", email: "cem@email.com", password: "123456", is_farmer: true)
user2 = User.create(name: "Harald Müller", address: "Brandenburger Str. 28, Brandenburg an der Havel, Brandenburg", email: "mueller@email.com", password: "123456", is_farmer: true)
user3 = User.create(name: "Rudolf Schneider", address: "Berliner Str. 28, Frankfurt (Oder), Brandenburg", email: "schneider@email.com", password: "123456", is_farmer: true)
user4 = User.create(name: "Dieter Krause", address: "Spremberger Str. 1, Cottbus, Brandenburg", email: "krause@email.com", password: "123456", is_farmer: true)
user5 = User.create(name: "Peter Weber", address: "Bernauer Str. 65, Oranienburg, Brandenburg", email: "weber@email.com", password: "123456", is_farmer: true)
herman_farmer_user = User.create(name: "Herman Feldmann", address: "Bürgermeister-Franz-Str. 16, Brandenburg an der Havel, Brandenburg", email: "feldmann@email.com", password: "123456", is_farmer: true)

puts "#{User.count} Users created 🥳"

farmer1_cem = Farmer.new(
  user: user1_cem,
  title: "Barros Farm",
  description_profile: "Family-run apple orchard",
  description_farm: "Barros Farm is a family-run apple orchard nestled in the picturesque village of Brüsenhagen. With a passion for cultivating high-quality apples, we take pride in offering fresh and delicious fruits to our community.",
  address: "Am Alten Markt 9, Potsdam, Brandenburg",
  latitude: 52.397554,
  longitude: 13.054044
)

farmer1_cem.main_photo.attach(io: profile_photo_cem, filename: "farmer1_profile", content_type: "image/jpg")
farmer1_cem.sub_photos.attach(io: farm_photo_cem_1, filename: "farm_sub1", content_type: "image/jpg")
farmer1_cem.sub_photos.attach(io: farm_photo_cem_2, filename: "farm_sub2", content_type: "image/jpg")
farmer1_cem.sub_photos.attach(io: farm_photo_cem_3, filename: "farm_sub3", content_type: "image/jpg")
farmer1_cem.sub_photos.attach(io: farm_photo_cem_4, filename: "farm_sub4", content_type: "image/jpg")

farmer1_cem.save!

farmer2 = Farmer.new(
  user: user2,
  title: "Müllers Farm",
  description_profile: "Diverse farm with berries and apples",
  description_farm: "Müllers Farm is a diverse agricultural paradise located on Berliner Str. 23 b, Gemeinde Höhenland. Specializing in berries and apples, our farm is dedicated to providing organic, heirloom produce to our customers.",
  address: "Brandenburger Str. 28, Brandenburg an der Havel, Brandenburg",
  latitude: 52.423983,
  longitude: 12.552806
)

farmer2.main_photo.attach(io: profile_photo2, filename: "farmer1_profile", content_type: "image/jpg")
farmer2.sub_photos.attach(io: farm_photo5, filename: "farm_sub1", content_type: "image/jpg")
farmer2.sub_photos.attach(io: farm_photo6, filename: "farm_sub2", content_type: "image/jpg")
farmer2.sub_photos.attach(io: farm_photo7, filename: "farm_sub3", content_type: "image/jpg")
farmer2.sub_photos.attach(io: farm_photo8, filename: "farm_sub4", content_type: "image/jpg")

farmer2.save!


farmer3 = Farmer.new(
  user: user3,
  title: "Schneider's Farm Market",
  description_profile: "Local farm market with a variety of fresh produce",
  description_farm: "Schneider's Farm Market is a go-to destination for fresh, locally grown produce. Located at Musterplatz 3, Brandenburg, we offer a wide range of fruits and vegetables, ensuring our customers enjoy the best of our harvest.",
  address: "Berliner Str. 28, Frankfurt (Oder), Brandenburg",
  latitude: 52.345542,
  longitude: 14.550849
)

farmer3.main_photo.attach(io: profile_photo3, filename: "farmer3_profile", content_type: "image/jpg")
farmer3.sub_photos.attach(io: farm_photo9, filename: "farm_sub1", content_type: "image/jpg")
farmer3.sub_photos.attach(io: farm_photo10, filename: "farm_sub2", content_type: "image/jpg")
farmer3.sub_photos.attach(io: farm_photo11, filename: "farm_sub3", content_type: "image/jpg")
farmer3.sub_photos.attach(io: farm_photo12, filename: "farm_sub4", content_type: "image/jpg")

farmer3.save!

farmer4 = Farmer.new(
  user: user4,
  title: "Krause Organic Fields",
  description_profile: "Organic farming with a focus on sustainable practices",
  description_farm: "Krause Organic Fields, situated at Probenstraße 7, Brandenburg, is committed to organic farming and sustainable practices. Our fields produce organic, heirloom potatoes and other vegetables, ensuring a healthier and greener environment.",
  address: "Spremberger Str. 1, Cottbus, Brandenburg",
  latitude: 51.756205,
  longitude: 14.334772
)

farmer4.main_photo.attach(io: profile_photo4, filename: "farmer4_profile", content_type: "image/jpg")
farmer4.sub_photos.attach(io: farm_photo13, filename: "farm_sub1", content_type: "image/jpg")
farmer4.sub_photos.attach(io: farm_photo14, filename: "farm_sub2", content_type: "image/jpg")
farmer4.sub_photos.attach(io: farm_photo15, filename: "farm_sub3", content_type: "image/jpg")
farmer4.sub_photos.attach(io: farm_photo16, filename: "farm_sub4", content_type: "image/jpg")

farmer4.save!

farmer5 = Farmer.new(
  user: user5,
  title: "Weber's Family Farm",
  description_profile: "Family-operated farm with a love for agriculture",
  description_farm: "Weber's Family Farm, located at Testweg 12, Brandenburg, is a family-operated farm dedicated to providing fresh and wholesome produce. Our commitment to sustainable farming practices ensures that our customers receive the best quality onions and other vegetables.",
  address: "Bernauer Str. 65, Oranienburg, Brandenburg",
  latitude: 52.738958,
  longitude: 13.236146
)

farmer5.main_photo.attach(io: profile_photo5, filename: "farmer5_profile", content_type: "image/jpg")
farmer5.sub_photos.attach(io: farm_photo17, filename: "farm_sub1", content_type: "image/jpg")
farmer5.sub_photos.attach(io: farm_photo18, filename: "farm_sub2", content_type: "image/jpg")
farmer5.sub_photos.attach(io: farm_photo19, filename: "farm_sub3", content_type: "image/jpg")
farmer5.sub_photos.attach(io: farm_photo20, filename: "farm_sub4", content_type: "image/jpg")

farmer5.save!

herman_farmer = Farmer.new(
  user: herman_farmer_user,
  title: "Feldmann Gärtnerei",
  description_profile: "Garden center with a passion for plants",
  description_farm: "Feldmann Gärtnerei, situated at Musterweg 5, Brandenburg, is a garden center with a passion for plants. Our diverse range of products includes beautiful flowers and plants, and our knowledgeable staff is dedicated to helping customers create stunning gardens.",
  address: "Bürgermeister-Franz-Str. 16, Brandenburg an der Havel, Brandenburg",
  latitude: 52.422742,
  longitude: 12.552777
)

herman_farmer.main_photo.attach(io: demo_farmer_profil_photo, filename: "herman_farmer_profile", content_type: "image/jpg")
herman_farmer.sub_photos.attach(io: farm_photo21_herman_farmer, filename: "farm_sub1", content_type: "image/jpg")
herman_farmer.sub_photos.attach(io: farm_photo22_herman_farmer, filename: "farm_sub2", content_type: "image/jpg")
herman_farmer.sub_photos.attach(io: farm_photo23_herman_farmer, filename: "farm_sub3", content_type: "image/jpg")
herman_farmer.sub_photos.attach(io: farm_photo24_herman_farmer, filename: "farm_sub4", content_type: "image/jpg")

herman_farmer.save!

puts "#{Farmer.count} Farmers created 🥕 🥕 🥕"

product1 = Product.new(
  name: "Carrot",
  farmer: farmer2,
  price: 1.20,
  quantity: "30",
  description: "organic, heirloom carrots",
)

product1.product_photo.attach(io: product_photo1, filename: "product1_photo", content_type: "image/jpg")

product1.save!

product2 = Product.new(
  name: "Broccoli",
  farmer: farmer2,
  price: 1.60,
  quantity: "30",
  description: "organic, heirloom broccolis",
)

product2.product_photo.attach(io: product_photo2, filename: "product2_photo", content_type: "image/jpg")

product2.save!

product3 = Product.new(
  name: "Potato",
  farmer: farmer2,
  price: 0.30,
  quantity: "30",
  description: "organic, heirloom potatos",
)

product3.product_photo.attach(io: product_photo3, filename: "product3_photo", content_type: "image/jpg")

product3.save!

product4 = Product.new(
  name: "Red onions",
  farmer: farmer2,
  price: 0.10,
  quantity: "30",
  description: "organic, heirloom onions",
)

product4.product_photo.attach(io: product_photo4, filename: "product4_photo", content_type: "image/jpg")

product4.save!

puts "#{Product.count} Products created 🍎 🍎 🍎"
