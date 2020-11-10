require 'rails_helper'

RSpec.describe 'Travel Time PORO' do
  it 'can get travel time with a start and end' do
    attr = {
    :route=>
      {
      :hasTollRoad=>false,
      :hasBridge=>true,
      :boundingBox=>{:lr=>{:lng=>-104.605087, :lat=>38.265427}, :ul=>{:lng=>-104.98761, :lat=>39.738453}},
      :distance=>111.38,
      :hasTimedRestriction=>false,
      :hasTunnel=>false,
      :hasHighway=>true,
      :computedWaypoints=>[],
      :routeError=>{:errorCode=>-400, :message=>""},
      :formattedTime=>"01:43:57"}
    }

    travel_time = TravelTime.new(attr)

    expect(travel_time.travel_time).to eq('01:43:57')    
  end
end