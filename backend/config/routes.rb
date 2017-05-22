Rails.application.routes.draw do
  get 'proxy.html' => 'application#proxy'
  get 'test' => 'application#test'
end
