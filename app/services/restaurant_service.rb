class RestaurantService
  def self.get_restaurants(params)
    conn = Faraday.new('https://api.yelp.com')
    response = conn.get('/v3/businesses/search') do |req|
      req.headers['Authorization'] = "Bearer #{ENV['YELP_KEY']}"
      req.params['location'] = params
    end
   JSON.parse(response.body, symbolize_names: true)
  end
end