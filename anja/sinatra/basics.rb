require "sinatra"

get '/' do
  "Hello, World!"
end

get '/about' do
  'A little about me.'
end

get '/hello/:name' do
  "Hello #{params[:name].upcase}"
end

get '/more/*' do
  params[:splat]
end

get '/form' do
  erb :form
end

post '/form' do
  "You said #{params[:message].upcase}"
end

get '/secret' do
  erb :secret
end

post '/secret' do
  "You said #{params[:secret].reverse}"
end

get '/decrypt/:secret' do
  params[:secret].reverse
end

not_found do
  halt 404
  'not found'
end

