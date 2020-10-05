require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'hello world!'
end

get '/erb_template_page' do
  erb :erb_template_page
end
