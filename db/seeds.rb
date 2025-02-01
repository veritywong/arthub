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
og_deptford = Site.create(borough: lewisham, name: 'Creekside', address_line_1: '5-9 Creekside', postcode: 'SE8 4SA')
mornington = Site.create(borough: lewisham, name: 'Mornington Centre', address_line_1: 'Stanley Street', postcode: 'SE8 4BL')

# Create access info
Access.create(site: og_woolwich, step_free: false, lift_type: 'large_goods')
Access.create(site: building_77, step_free: false, lift_type: 'passenger')
Access.create(site: og_deptford, step_free: false, lift_type: 'hoist_lift')
Access.create(site: mornington, step_free: false)

