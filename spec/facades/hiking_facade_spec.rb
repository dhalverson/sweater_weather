require 'rails_helper'

RSpec.describe 'Hiking Facade' do
  it 'trails search' do
    coordinates = {:lat=>39.738453, :lng=>-104.984853}
    trails = HikingFacade.new(coordinates)
  
  end
end