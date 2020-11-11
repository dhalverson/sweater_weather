require 'rails_helper'

RSpec.describe 'Background Facade' do
  it 'gets a background image', :vcr do
    location = 'denver,co'

    background = BackgroundsFacade.get_image(location)

    expect(background).to be_an(Image)

    expect(background.image).to be_a(Hash)
    expect(background.image[:location]).to eq('denver,co')
    expect(background.image[:image_url]).to eq('https://images.unsplash.com/photo-1578983427937-26078ee3d9d3?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max&ixid=eyJhcHBfaWQiOjE4MTU3N30')
    expect(background.image[:credit][:description]).to eq('Sleeping Owl')
    expect(background.image[:credit][:credit]).to eq('Joshua Forbes')
  end
end