class LocationService
  def self.get_coordinates(location)
    conn = Faraday.new('http://www.mapquestapi.com')
    response = conn.get('/geocoding/v1/address') do |req|
      req.params['key'] = ENV['MAP_API_KEY']
      req.params['location'] = location
    end
    JSON.parse(response.body, symbolize_names: true)[:results][0][:locations][0][:latLng]
  end

  def self.get_distance(origin, destination)
    conn = Faraday.new('http://www.mapquestapi.com')
    response = conn.get('/directions/v2/route') do |req|
      req.params['key'] = ENV['MAP_API_KEY']
      req.params['from'] = origin
      req.params['to'] = destination
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end