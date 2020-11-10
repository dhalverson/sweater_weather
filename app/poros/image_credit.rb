class ImageCredit
  attr_reader :description,
              :credit
  def initialize(attr)
    @description = attr[:results][0][:description]
    @credit = attr[:results][0][:user][:name]
  end
end