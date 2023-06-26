require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET /index" do
    it 'returns a list of posts' do
      # Create some posts using FactoryBot or any other method
      post1 = Post.create(title: 'First Post', content: 'Lorem ipsum dolor sit amet.')
      post2 = Post.create(title: 'Second Post', content: 'Consectetur adipiscing elit.')

      # Make a request to the index route
      get '/index'

      # Assert the response and data
      expect(response).to have_http_status(200)
      expect(response.body).to include(post1.title)
      expect(response.body).to include(post2.title)
    end
  end
end