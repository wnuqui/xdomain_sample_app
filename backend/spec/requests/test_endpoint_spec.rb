require 'rails_helper'

RSpec.describe 'GET /test', type: :request do

  before { get '/test' }

  it 'renders JSON test response' do
    json_response = JSON.parse(response.body)
    expect(json_response).to eql({'key' => 'value'})
  end
end
