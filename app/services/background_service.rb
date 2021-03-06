class BackgroundService
  
  def self.get_image(location)
    conn = Faraday.new('https://api.unsplash.com')
    response = conn.get('/search/photos') do |req|
      req.params['client_id'] = ENV['UNSPLASH_KEY']
      req.params['query'] = location
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end