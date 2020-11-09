require 'rails_helper'

RSpec.describe 'Hiking Facade' do
  it 'trails search' do
    location = 'denver,co'
    trails = HikingFacade.trail_info(location)
  
  end
end