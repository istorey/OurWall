require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

require './config/environments'

require './models/neighborhood'
require './models/post'
require './models/wall'

get '/' do
	erb :index
end

#get '/login' do

#end

#get '/bloomingdale' do

#end

