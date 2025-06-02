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
Country.create!(name: "Nigeria")
Country.create!(name: "USA")
Country.create!(name: "Brazil")
Country.create!(name: "Italy")
Country.create!(name: "Brazil")
end

unless State.blank?
State.create!(name: "Abia", country_id: 1 )
State.create!(name: "Anambra", country_id: 1 )
State.create!(name: "Lagos", country_id: 1 )

State.create!(name: "California", country_id: 2 )
State.create!(name: "Alaska", country_id: 2 )

end


unless City.blank?
  City.create!(name: "Aba", state_id: 1 )
  City.create!(name: "Onitsha", state_id: 2 )
  City.create!(name: "Ikeja", state_id: 3 )

  City.create!(name: "Los Angeles", state_id: 1 )
  City.create!(name: "San Francisco", state_id: 2 )

end
