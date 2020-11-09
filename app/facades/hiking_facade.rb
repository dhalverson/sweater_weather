class HikingFacade
  def initialize(coordinates)
    @coordinates = coordinates
  end

  def forecast
    {
      summary: get_forecast[:current][:weather][0][:description],
      temperature: get_forecast[:current][:temp]
    }
  end
end