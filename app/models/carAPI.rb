# api call for cars
require 'httparty'
class GarageAPI
  include HTTParty
  base_uri 'https://raw.githubusercontent.com/vega/vega/master/docs/data/'

  def posts
    self.class.get('/cars.json')
  end
end

Garage_API = GarageAPI.new
puts Garage_API.posts