class Image
  attr_reader :image
             
  def initialize(location, attr)
    @image = image_hash(location, attr)
    @location = location
  end

  def image_hash(location, attr)
    {
      location: location,
      image_url: attr[:results][0][:urls][:thumb],
      credit: {
        description: attr[:results][0][:description],
        credit: attr[:results][0][:user][:name]
      }
    }
    # This is creating an image from the backgrounds facade, how to improve this hash
  end
end