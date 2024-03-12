require "open-uri"

puts "Cleaning Database 🧼"
OrderProduct.destroy_all
Basket.destroy_all
Order.destroy_all
Product.destroy_all
Farmer.destroy_all
User.destroy_all

puts "Creating Farmers 👩🏼‍🌾 👨🏽‍🌾 👩🏼‍🌾 👨🏽‍🌾"

profile_photo1 = URI.open("https://i.ibb.co/zbdTdjf/profile-photo1.jpg")
farm_photo1 = URI.open("https://i.ibb.co/PxVBySY/farm-photo1.jpg")
farm_photo2 = URI.open("https://i.ibb.co/dKPD8G1/farm-photo2.jpg")
farm_photo3 = URI.open("https://i.ibb.co/2kyN3M0/farm-photo3-jpg.png")
farm_photo4 = URI.open("https://i.ibb.co/jRs7Zhj/farm-photo4.jpg")

profile_photo2 = URI.open("https://i.ibb.co/LtgjZkm/profile-photo2.jpg")
farm_photo5 = URI.open("https://i.ibb.co/sH1cf8s/farm-photo5.jpg")
farm_photo6 = URI.open("https://i.ibb.co/f21zMZ8/farm-photo6.jpg")
farm_photo7 = URI.open("https://i.ibb.co/jWJGTny/farm-photo7.jpg")
farm_photo8 = URI.open("https://i.ibb.co/bLr54yg/farm-photo8.jpg")

profile_photo3 = URI.open("https://www.goettinger-tageblatt.de/resizer/hPQeSWjNO2r-lJagqWyjq9Cs1m4=/767x557/filters:quality(70):format(webp)/cloudfront-eu-central-1.images.arcpublishing.com/madsack/4LZ36MCOM3TD42WT7PDZIXECLQ.jpg")
farm_photo9 = URI.open("https://img.freepik.com/premium-photo/hands-holding-japanese-spring-onion-organic-produce-from-farm_53876-50621.jpg")
farm_photo10 = URI.open("https://img.freepik.com/fotos-premium/ernten-von-karotten-auf-dem-bauernhof-umweltfreundliches-produkt_472916-3127.jpg")
farm_photo11 = URI.open("https://www.mountainlifemedia.ca/wp-content/uploads/2021/05/Fragile-Harvest-Documenting-Family-Farm-Pandemic-Paul-Bettings-rhubarb.jpeg")
farm_photo12 = URI.open("https://cityfloralgreenhouse.com/wp-content/uploads/2014/08/CHECK-OUT-LINE-STARTS-HERE-2-1024x791.jpg")

profile_photo4 = URI.open("https://www.wiwo.de/images/frisch-gemaeht/25531498/2-format1001.jpg")
farm_photo13 = URI.open("https://www.growjourney.com/wp-content/uploads/2015/03/organic-garden-harvest.jpg")
farm_photo14 = URI.open("https://bloximages.newyork1.vip.townnews.com/lancasterfarming.com/content/tncms/assets/v3/editorial/5/f1/5f1eff08-e8cb-11ec-989f-d313e28f5c98/62a35807560aa.image.jpg")
farm_photo15 = URI.open("https://images.squarespace-cdn.com/content/v1/5d85cc13d9ca517a2b2e33e5/1618289885348-MIC7DMJBR0RBNFM14I34/meet+the+farmer+Good+harvest+%2837%29.jpg")
farm_photo16 = URI.open("https://cdn.shopify.com/s/files/1/0575/0430/1193/files/om-oss-blekingefrukttradplantskola_600x600.jpg")

profile_photo5 = URI.open("https://www.servus.com/storage/article/Brauchtum-Bauern-1-fakten-philip-horak-BH000060.jpg")
farm_photo17 = URI.open("https://i.ytimg.com/vi/uuYON--wPOQ/maxresdefault.jpg")
farm_photo18 = URI.open("https://www.bauernzeitung.ch/fileadmin/_processed_/1/f/csm_52e4e3c83c8b1c381a378fa7436f42219400d377_aaaf2d8448.jpg")
farm_photo19 = URI.open("https://tuigarden.co.nz/media/4296/pear_tree_512x276.png")
farm_photo20 = URI.open("https://www.fruitionseeds.com/wp-content/uploads/800-x-400-organic-apple-orchard-1.jpg")

profile_photo6 = URI.open("https://www.ln-online.de/resizer/UsAFoL6peXcG8_K7nn8_zcFaPaA=/539x809/filters:quality(70):format(webp)/cloudfront-eu-central-1.images.arcpublishing.com/madsack/LKOCVMFURCYJKWGRUYLEGG7M4A.jpg")
farm_photo21 = URI.open("https://image.cnbcfm.com/api/v1/image/103146885-GettyImages-511153463r.jpg")
farm_photo22 = URI.open("https://gardenorganic-assets.s3.eu-west-2.amazonaws.com/images/_1200x1200_crop_center-center_60_line/Emma-ONeill-with-vegetable-harvest.jpg")
farm_photo23 = URI.open("https://static.vecteezy.com/system/resources/previews/027/146/201/large_2x/organic-farming-cutting-with-pruner-and-putting-vegetable-crop-in-basket-organic-vegetables-harvest-ai-generated-photo.jpg")
farm_photo24 = URI.open("https://completelandscaping.com/wp-content/uploads/apple-trees.jpeg")

#product

product_photo1 = URI.open("https://cdn11.bigcommerce.com/s-a9b4a/images/stencil/1280x1280/products/1196/6690/Little-Fingers-and-Organic-Little-Fingers-Carrots__69944.1666917020.jpg?c=2")
product_photo2 = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThxLbqQ6gg8i9Z-cWaQNJxGm7imSHH1fEqEg&usqp=CAU")
product_photo3 = URI.open("https://www.yorktest.com/wp-content/uploads/2021/12/AdobeStock_275778955-1024x683.jpeg")
product_photo4 = URI.open("https://images.squarespace-cdn.com/content/v1/5de5df7f9f40c13aa6a8b579/1599183475729-668O0RQG0N41AIHKWEXU/intro-1597860204.jpg")

#user

user1 = User.create(name: "Cem Özdemir", address: "Am Alten Markt 9, Potsdam, Brandenburg", email: "cem@email.com", password: "123456", is_farmer: true)
user2 = User.create(name: "Harald Müller", address: "Brandenburger Str. 28, Brandenburg an der Havel, Brandenburg", email: "mueller@email.com", password: "123456", is_farmer: true)
user3 = User.create(name: "Rudolf Schneider", address: "Berliner Str. 28, Frankfurt (Oder), Brandenburg", email: "schneider@email.com", password: "123456", is_farmer: true)
user4 = User.create(name: "Dieter Krause", address: "Spremberger Str. 1, Cottbus, Brandenburg", email: "krause@email.com", password: "123456", is_farmer: true)
user5 = User.create(name: "Peter Weber", address: "Bernauer Str. 65, Oranienburg, Brandenburg", email: "weber@email.com", password: "123456", is_farmer: true)
user6 = User.create(name: "Herman Feldmann", address: "Bürgermeister-Franz-Str. 16, Brandenburg an der Havel, Brandenburg", email: "feldmann@email.com", password: "123456", is_farmer: true)

puts "#{User.count} Users created 🥳"

farmer1 = Farmer.new(
  user: user1,
  title: "Barros Farm",
  description_profile: "Family-run apple orchard",
  description_farm: "Barros Farm is a family-run apple orchard nestled in the picturesque village of Brüsenhagen. With a passion for cultivating high-quality apples, we take pride in offering fresh and delicious fruits to our community.",
  address: "Am Alten Markt 9, Potsdam, Brandenburg",
  latitude: 52.397554,
  longitude: 13.054044
)

farmer1.main_photo.attach(io: profile_photo1, filename: "farmer1_profile", content_type: "image/jpg")
farmer1.sub_photos.attach(io: farm_photo1, filename: "farm_sub1", content_type: "image/jpg")
farmer1.sub_photos.attach(io: farm_photo2, filename: "farm_sub2", content_type: "image/jpg")
farmer1.sub_photos.attach(io: farm_photo3, filename: "farm_sub3", content_type: "image/jpg")
farmer1.sub_photos.attach(io: farm_photo4, filename: "farm_sub4", content_type: "image/jpg")

farmer1.save!

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

farmer6 = Farmer.new(
  user: user6,
  title: "Feldmann Gärtnerei",
  description_profile: "Garden center with a passion for plants",
  description_farm: "Feldmann Gärtnerei, situated at Musterweg 5, Brandenburg, is a garden center with a passion for plants. Our diverse range of products includes beautiful flowers and plants, and our knowledgeable staff is dedicated to helping customers create stunning gardens.",
  address: "Bürgermeister-Franz-Str. 16, Brandenburg an der Havel, Brandenburg",
  latitude: 52.422742,
  longitude: 12.552777
)

farmer6.main_photo.attach(io: profile_photo6, filename: "farmer6_profile", content_type: "image/jpg")
farmer6.sub_photos.attach(io: farm_photo21, filename: "farm_sub1", content_type: "image/jpg")
farmer6.sub_photos.attach(io: farm_photo22, filename: "farm_sub2", content_type: "image/jpg")
farmer6.sub_photos.attach(io: farm_photo23, filename: "farm_sub3", content_type: "image/jpg")
farmer6.sub_photos.attach(io: farm_photo24, filename: "farm_sub4", content_type: "image/jpg")

farmer6.save!

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
