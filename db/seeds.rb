# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Offer.destroy_all
User.destroy_all

lisa = {first_name: "Lisa", last_name: "Pourier", email: "lisapourier@gmail.com", phone_number: "01234", password: "abcdffff"}
rob =  {first_name: "Rob", last_name: "Ferrara", email: "robyorke95@gmail.com", phone_number: "01235", password: "abceffff" }
dogus = {first_name: "Dogus", last_name: "Akyuz", email: "av.dogusakyuz@gmail.com", phone_number: "0123", password: "abcffffff"}

[lisa, rob, dogus].each do |attributes|
  user = User.create!(attributes)
  puts "Created #{user.first_name}"
end


file = URI.open("https://sparklecleaningsolutionsllc.com/wp-content/uploads/2020/12/Sparkle-Logo-200-325x141.jpg")
offer_1 = Offer.new(company: "Sparkle Clean Solutions", description: "At Sparkle Clean Solutions, we specialize in providing top-quality cleaning services that leave your space shining and spotless.", price: 85, location: "Amsterdam-Noord")
offer_1.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
offer_1.user = User.all.sample
offer_1.save

file = URI.open("https://s3-media0.fl.yelpcdn.com/bphoto/sNKQuuEZgWaZpF77Zu9rIQ/348s.jpg")
offer_2 = Offer.new(company: "Shine Bright Cleaning Co.", description: "Shine Bright Cleaning Co. is dedicated to delivering exceptional cleaning services that make your home or office gleam with brilliance.", price: 94, location: "Amsterdam-Zuid")
offer_2.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
offer_2.user = User.all.sample
offer_2.save

file = URI.open("https://afreshstartcleaningllc.com/wp-content/uploads/2020/12/Color-300x169.png")
offer_3 = Offer.new(company: "Fresh Start Cleaning Services", description: "Fresh Start Cleaning Services offers a fresh beginning for your space by providing thorough and reliable cleaning solutions.", price: 86, location: "Amsterdam-Noord")
offer_3.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
offer_3.user = User.all.sample
offer_3.save

file = URI.open("https://images.squarespace-cdn.com/content/v1/656924e571b9222293cb54e2/18dfda0d-526b-437f-81f8-2cecb1495900/Transparent.png")
offer_4 = Offer.new(company: "Crystal Clear Cleaners", description: "Crystal Clear Cleaners specializes in delivering crystal-clear results for all your cleaning needs.", price: 92, location: "Diemen")
offer_4.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
offer_4.user = User.all.sample
offer_4.save

file = URI.open("https://purecleaningsolutions.co.uk/wp-content/uploads/2019/04/logo2-1.jpg")
offer_5 = Offer.new(company: "Pure Clean Solutions", description: "At Pure Clean Solutions, we offer pure cleanliness for your home or business.", price: 87, location: "Amsterdam-Oost")
offer_5.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
offer_5.user = User.all.sample
offer_5.save

file = URI.open("https://www.spotlesscambridge.com/wp-content/uploads/2017/03/cleaning-services-email-signature-transparent.png")
offer_6 = Offer.new(company: "Spotless Cleaning Crew", description: "Spotless Cleaning Crew is your trusted partner for achieving a spotless space every time.", price: 88, location: "Duivendrecht")
offer_6.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
offer_6.user = User.all.sample
offer_6.save

file = URI.open("https://www.pristinecleansurfacepros.com/wp-content/uploads/2022/04/Prisitine-Clean-Surface-Pros-Logo_Full-Color.png")
offer_7 = Offer.new(company: "Pristine Clean Pros", description: "Pristine Clean Pros are experts in delivering pristine cleanliness and exceptional service.", price: 96, location: "Watergraafsmeer")
offer_7.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
offer_7.user = User.all.sample
offer_7.save

file = URI.open("https://images.squarespace-cdn.com/content/v1/6253483fd5e5365b2d1197fd/f9287182-16ed-403a-8e4a-47c45f544979/Clean-Sweep-Solutions-2.png")
offer_8 = Offer.new(company: "Clean Sweep Experts", description: "Clean Sweep Experts specialize in delivering thorough and efficient cleaning solutions for homes and businesses.", price: 90, location: "Disteldorp")
offer_8.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
offer_8.user = User.all.sample
offer_8.save

file = URI.open("https://brighterdayscleaning.co.uk/wp-content/uploads/2020/07/WhatsApp-Image-2020-07-27-at-15.20.10.jpeg")
offer_9 = Offer.new(company: "Brighter Days Cleaning Services", description: "Brighter Days Cleaning Services brighten your space and your day with our professional cleaning solutions.", price: 100, location: "Amsterdam-Oost")
offer_9.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
offer_9.user = User.all.sample
offer_9.save

file = URI.open("https://images.squarespace-cdn.com/content/v1/658576aca15d886ce251989d/b0d375c9-5f57-447d-bea0-306630b870ae/Company+Logo.jpg")
offer_10 = Offer.new(company: "Clear Choice Cleaning Company", description: "Clear Choice Cleaning Company is your clear choice for superior cleaning services.", price: 98, location: "Westerpark")
offer_10.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
offer_10.user = User.all.sample
offer_10.save


# offer_4 = {company: "Crystal Clear Cleaners", description: "Crystal Clear Cleaners specializes in delivering crystal-clear results for all your cleaning needs.", price: 92, location: "Diemen"}
# offer_5 = {company: "Pure Clean Solutions", description: "At Pure Clean Solutions, we offer pure cleanliness for your home or business.", price: 87, location: "Amsterdam-Oost"}
# offer_6 = {company: "Spotless Cleaning Crew", description: "Spotless Cleaning Crew is your trusted partner for achieving a spotless space every time.", price: 88, location: "Duivendrecht"}
# offer_7 = {company: "Pristine Clean Pros", description: "Pristine Clean Pros are experts in delivering pristine cleanliness and exceptional service.", price: 96, location: "Watergraafsmeer"}
# offer_8 = {company: "Clean Sweep Experts", description: "Clean Sweep Experts specialize in delivering thorough and efficient cleaning solutions for homes and businesses.", price: 90, location: "Disteldorp"}
# offer_9 = {company: "Brighter Days Cleaning Services", description: "Brighter Days Cleaning Services brighten your space and your day with our professional cleaning solutions.", price: 100, location: "Amsterdam-Oost"}
# offer_10 = {company: "Clear Choice Cleaning Company", description: "Clear Choice Cleaning Company is your clear choice for superior cleaning services.", price: 98, location: "Westerpark"}

# [offer_2, offer_3, offer_4, offer_5, offer_6, offer_7, offer_8, offer_9, offer_10].each do |attributes|
#   offer = Offer.new(attributes)
  # offer.user = User.all.sample
#   offer.save!
#   puts "Created #{offer.company}"
# end
puts "Finished"
