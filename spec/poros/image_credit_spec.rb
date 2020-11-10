require 'rails_helper'

RSpec.describe 'Image Credit PORO' do
  it 'can create an image credit object' do
     attr = {
          "total": 2236,
          "total_pages": 224,
          "results": [
              {
                  "id": "36XAdOONlxc",
                  "description": "Sleeping Owl",
                  "urls": {
                      "raw": "https://images.unsplash.com/photo-1578983427937-26078ee3d9d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE4MTU3N30",
                      "full": "https://images.unsplash.com/photo-1578983427937-26078ee3d9d3?ixlib=rb-1.2.1&q=85&fm=jpg&crop=entropy&cs=srgb&ixid=eyJhcHBfaWQiOjE4MTU3N30",
                      "regular": "https://images.unsplash.com/photo-1578983427937-26078ee3d9d3?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjE4MTU3N30",
                      "small": "https://images.unsplash.com/photo-1578983427937-26078ee3d9d3?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjE4MTU3N30",
                      "thumb": "https://images.unsplash.com/photo-1578983427937-26078ee3d9d3?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max&ixid=eyJhcHBfaWQiOjE4MTU3N30"
                  },
                  "user": {
                      "id": "FNDAToNnUJc",
                      "updated_at": "2020-11-07T20:13:08-05:00",
                      "username": "joshua_forbes",
                      "name": "Joshua Forbes",
                    }
                  }  
                ]
          }    
    image_credit = ImageCredit.new(attr)
    expect(image_credit.credit).to eq('Joshua Forbes')
    expect(image_credit.description).to eq('Sleeping Owl')
  end
end