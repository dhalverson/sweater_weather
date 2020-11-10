class Image
  attr_reader :location,
              :image_url,
              :credit
  def initialize(location, attr)
    @location = location
    @image_url = attr[:results][0][:urls][:thumb]
    @credit = image_credit(attr)
  end

  def image_credit(attr)
    {
      description: ImageCredit.new(attr).description,
      credit: ImageCredit.new(attr).credit
    }
  end
end