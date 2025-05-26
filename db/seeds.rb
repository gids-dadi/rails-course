# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

unless Department.blank?
Department.create!(name: "Networking")
Department.create!(name: "Dispatch")
Department.create!(name: "Marketing")
Department.create!(name: "Shipping")
Department.create!(name: "Accounting")
end

unless Country.blank?
Country.create!(name: "United States")
Country.create!(name: "Canada")
Country.create!(name: "Mexico")
Country.create!(name: "United Kingdom")
Country.create!(name: "Brazil")
end
