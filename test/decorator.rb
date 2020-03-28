# rest client gem
require 'rest-client'

# RestClient.get 'http://google.com'
module RequestLogger
  def get(url)
    puts "Sending a request to #{url}"
    super
  end
end

class HttpClient
  prepend RequestLogger

  def initialize(client = RestClient)
    @client = client
  end

  def get(url)
    @client.get(url)
  end
end


http = HttpClient.new

http.extend(RequestLogger)
http.get('http://localhost:3000/carsforsales/new')
http.get('http://localhost:3000/users/sign_up')