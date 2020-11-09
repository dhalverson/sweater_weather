class HikingService
  def self.get_trails(coordinates)  
    conn = Faraday.new('https://www.hikingproject.com')
    response = conn.get('/data/get-trails') do |req|
      req.params['key'] = ENV['HIKING_API_KEY']
      req.params['lat'] = coordinates[:lat]
      req.params['lon'] = coordinates[:lng]
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end