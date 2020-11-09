require 'rails_helper'

RSpec.describe 'Hiking Service' do
  it 'can return trails with coordinates' do
    location = {:lat=>39.738453, :lng=>-104.984853}
    trails = HikingService.get_trails(location)

    expect(trails).to be_a(Hash)

    trails = trails[:trails][0]
    expect(trails).to have_key :id
    expect(trails).to have_key :name
    expect(trails).to have_key :summary
    expect(trails).to have_key :difficulty
    expect(trails).to have_key :location
  end
end