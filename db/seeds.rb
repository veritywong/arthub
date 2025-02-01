# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create boroughs
woolwich  = Borough.create(name: 'Woolwich')
lewisham = Borough.create(name: 'Lewisham')

# Create studio sites
og_woolwich = Site.create(borough: woolwich, name: 'Building 28', address_line_1: '28 Bowater Road', address_line_2: 'Westminster Industrial Estate', postcode: 'SE18 5TF')
building_77 = Site.create(borough: woolwich, name: 'Building 77', address_line_1: '77 Bowater Road', address_line_2: 'Westminster Industrial Estate', postcode: 'SE18 5TF')
og_deptford = Site.create(borough: woolwich, name: 'Building 77', address_line_1: '77 Bowater Road', address_line_2: 'Westminster Industrial Estate', postcode: 'SE18 5TF')
mornington = Site.create(borough: woolwich, name: 'Building 77', address_line_1: '77 Bowater Road', address_line_2: 'Westminster Industrial Estate', postcode: 'SE18 5TF')

# Create access info


Studios + Printmaking, Ceramics, Carpentry
Building 28 (Large Goods Lift)
Building 77 (Passenger Lift)
Westminster Industrial Estate, Woolwich, SE18 5TF (No step free access)
Stations: Charlton: 15 mins walk
Buses: 161 177 180 472