require 'sinatra'

get '/home' do
  erb :home
end

get '/data' do
  data = {}
  data[:time] = Time.now.to_s
  data.to_json
end
