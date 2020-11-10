class RestaurantService
  def self.get_restaurants(ending, time, cuisine)
    conn = Faraday.new('https://api.yelp.com')
    response = conn.get('/v3/businesses/search') do |req|
      req.headers['Authorization'] = "Bearer #{ENV['YELP_KEY']}"
      req.params['location'] = ending
      req.params['categories'] = cuisine
      req.params['open_at'] = Time.at(time).to_i
      req.params['limit'] = 1
    end
   JSON.parse(response.body, symbolize_names: true)
  end
end
