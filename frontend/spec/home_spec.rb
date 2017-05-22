require 'rack/test'
require_relative '../home'

RSpec.describe 'app' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  before { get '/home' }

  describe 'response' do
    it 'is ok' do
      expect(last_response).to be_ok
    end
  end

  describe 'content' do
    it 'uses jpillora/xdomain' do
      expect(last_response.body).to include('jpillora/xdomain')
    end

    it 'will request to /data' do
      expect(last_response.body).to include("load('data')")
    end

    it 'will cross-domain request https://xsa-backend.herokuapp.com/test' do
      expect(last_response.body).to include("load('https://xsa-backend.herokuapp.com/test')")
    end
  end
end
