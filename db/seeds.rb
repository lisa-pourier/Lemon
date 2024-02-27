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
User.destroy_all

lisa = {first_name: "Lisa", last_name: "Pourier", email: "lisapourier@gmail.com", phone_number: "01234", password: "abcdffff"}
rob =  {first_name: "Rob", last_name: "Ferrara", email: "robyorke95@gmail.com", phone_number: "01235", password: "abceffff" }
dogus = {first_name: "Dogus", last_name: "Akyuz", email: "av.dogusakyuz@gmail.com", phone_number: "0123", password: "abcffffff"}

[lisa, rob, dogus].each do |attributes|
  user = User.create!(attributes)
  puts "Created #{user.first_name}"
end

Offer.destroy_all

offer_1 = {company: "Sparkle Clean Solutions", description: "At Sparkle Clean Solutions, we specialize in providing top-quality cleaning services that leave your space shining and spotless.", price: 85, location: "Amsterdam-Noord"}
offer_2 = {company: "Shine Bright Cleaning Co.", description: "Shine Bright Cleaning Co. is dedicated to delivering exceptional cleaning services that make your home or office gleam with brilliance.", price: 94, location: "Amsterdam-Zuid"}
offer_3 = {company: "Fresh Start Cleaning Services", description: "Fresh Start Cleaning Services offers a fresh beginning for your space by providing thorough and reliable cleaning solutions.", price: 86, location: "Amsterdam-Noord"}
offer_4 = {company: "Crystal Clear Cleaners", description: "Crystal Clear Cleaners specializes in delivering crystal-clear results for all your cleaning needs.", price: 92, location: "Diemen"}
offer_5 = {company: "Pure Clean Solutions", description: "At Pure Clean Solutions, we offer pure cleanliness for your home or business.", price: 87, location: "Amsterdam-Oost"}
offer_6 = {company: "Spotless Cleaning Crew", description: "Spotless Cleaning Crew is your trusted partner for achieving a spotless space every time.", price: 88, location: "Duivendrecht"}
offer_7 = {company: "Pristine Clean Pros", description: "Pristine Clean Pros are experts in delivering pristine cleanliness and exceptional service.", price: 96, location: "Watergraafsmeer"}
offer_8 = {company: "Clean Sweep Experts", description: "Clean Sweep Experts specialize in delivering thorough and efficient cleaning solutions for homes and businesses.", price: 90, location: "Disteldorp"}
offer_9 = {company: "Brighter Days Cleaning Services", description: "Brighter Days Cleaning Services brighten your space and your day with our professional cleaning solutions.", price: 100, location: "Amsterdam-Oost"}
offer_10 = {company: "Clear Choice Cleaning Company", description: "Clear Choice Cleaning Company is your clear choice for superior cleaning services.", price: 98, location: "Westerpark"}

[offer_1, offer_2, offer_3, offer_4, offer_5, offer_6, offer_7, offer_8, offer_9, offer_10].each do |attributes|
  offer = Offer.new(attributes)
  offer.user = User.all.sample
  offer.save!
  puts "Created #{offer.company}"
end
puts "Finished"
