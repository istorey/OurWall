require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'pry'

require './config/environments'

require './models/neighborhood'
require './models/post'
require './models/wall'

enable :sessions

before do
		@errors ||= []
end

get '/prelogin' do
	erb :index
end

post '/login' do
		
		@neighborhood = Neighborhood.find_by(name: params[:neighborhoodlist])
		input_value = params[:password]

		if @neighborhood.password_digest == input_value
			redirect('/makepost')

		else 
			@errors << "Wrong password"
			redirect('/')
		end
end

get '/' do
		@post = Post.all
	erb :neighborhood

end

get '/makepost' do
	erb :makepost
end

post '/makepost' do
	@new_post = Post.new(image: params[:url])
			if @new_post.save
			redirect ('/')

			else 
				@errors << "wrong" 
			redirect ('/makepost')
		end
end

get '/delete/:post_id' do
  
  erb :delete

end

post '/delete/:post_id' do
  Post.destroy(params[:post_id])
  redirect '/'
end
#binding.pry
