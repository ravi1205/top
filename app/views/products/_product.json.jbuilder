json.extract! product, :id, :category, :dish_style, :title, :desc, :spice_level, :calories, :unit_price, :created_at, :updated_at
json.url product_url(product, format: :json)
