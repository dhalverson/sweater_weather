class TravelTime
  attr_reader :travel_time
  def initialize(attr)
    @travel_time = attr[:route][:formattedTime]
  end
end