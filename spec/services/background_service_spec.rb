require 'rails_helper'

RSpec.describe 'Background Service' do
  it 'returns an image when given a search query' do
    location = 'denver,co'
    result = BackgroundService.get_image(location)

    expect(result).to have_key :total
    expect(result).to have_key :total_pages
    expect(result).to have_key :results

    expect(result[:results]).to be_an(Array)
    expect(result[:results][0]).to have_key :urls
    expect(result[:results][0][:urls]).to have_key :thumb
    expect(result[:results][0][:urls][:thumb]).to be_a(String)
    expect(result[:results][0]).to have_key :user
    expect(result[:results][0][:user]).to have_key :name
    expect(result[:results][0][:user][:name]).to be_a(String)
  end
end