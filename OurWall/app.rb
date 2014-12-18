require 'sinatra'
require 'sinatra/activerecord'

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
		#super safe authentication system
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
		#displays all posts
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
  @post_id = params[:post_id]
  erb :delete

end

post '/delete/:post_id' do
  @post_id = params[:post_id]
  Post.destroy(@post_id)
  redirect '/'
end