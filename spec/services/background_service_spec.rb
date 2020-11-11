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
    expect(result[:results][0]).to have_key :id
    expect(result[:results][0]).to have_key :created_at
    expect(result[:results][0]).to have_key :updated_at
    expect(result[:results][0]).to have_key :promoted_at
    expect(result[:results][0]).to have_key :width
    expect(result[:results][0]).to have_key :height
    expect(result[:results][0]).to have_key :color
    expect(result[:results][0]).to have_key :blur_hash
    expect(result[:results][0]).to have_key :alt_description
    expect(result[:results][0]).to have_key :links
    expect(result[:results][0]).to have_key :categories
    expect(result[:results][0]).to have_key :likes
    expect(result[:results][0]).to have_key :liked_by_user
    expect(result[:results][0]).to have_key :current_user_collections
    expect(result[:results][0]).to have_key :sponsorship
    expect(result[:results][0]).to have_key :user
  end
end