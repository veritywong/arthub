json.extract! site, :id, :name, :address_line_1, :address_line_2, :address_line_3, :address_line_4, :postcode, :created_at, :updated_at
json.url site_url(site, format: :json)
