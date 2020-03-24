json.extract! carsforsale, :id, :title, :brand, :year, :engine, :transmission, :mileage, :color, :description, :price, :created_at, :updated_at
json.url carsforsale_url(carsforsale, format: :json)
