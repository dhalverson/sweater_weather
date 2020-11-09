class Trail
  attr_reader :name,
              :summary,
              :difficulty,
              :location
  def initialize(attr)
    @name = attr[:name]
    @summary = attr[:summary]
    @difficulty = attr[:difficulty]
    @location = attr[:location]
  end

end