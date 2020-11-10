class BackgroundsFacade
  def initialize(location)
    @location = location
    @image = get_image(location)
  end

  def self.get_image(location)
    image_data = BackgroundService.get_image(location)
    Image.new(location, image_data)
  end
end