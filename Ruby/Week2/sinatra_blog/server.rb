require 'date'
require "sinatra"
require "sinatra/reloader" if development?
require_relative ("models/blog.rb")
require_relative ("models/post.rb")

blog = Blog.new
one_day = (60*60*24)
 
post1=   Post.new("Bikes",Time.now - (2*one_day),"Bikes are cool.")
post2=	 Post.new("Gym",Time.now - (3*one_day), "You must go to the gym to be healthy.")
post3=	 Post.new("Pickles",Time.now - (4*one_day),"Pickles are tasty.")
post4=	 Post.new("Beach",Time.now - (5*one_day),"Beach is hot.")
post5=	 Post.new("Anvil",Time.now - (6*one_day),"Anvil is a bad company.")
post6=	 Post.new("Heat",Time.now - (7*one_day),"Heat generates more heat.")
post7=	 Post.new("Fintech",Time.now - (8*one_day),"Fintech is the future.")
post8=	 Post.new("The End",Time.now - (9*one_day),"This is the end.")

blog.add_post(post4)
blog.add_post(post5)
blog.add_post(post6)
blog.add_post(post7)
blog.add_post(post8)
blog.add_post(post1)
blog.add_post(post2)
blog.add_post(post3)



get "/" do
	@posts = blog.latest_posts
	erb :home
end

get "/display/:index" do
	@posts_sorted = blog.latest_posts[params[:index].to_i]

	erb :display
end

get "/new_post" do
	erb :new_post
end

post "/submit" do
	post9 = Post.new(params[:title], Time.now, params[:text])
	blog.add_post(post9)
	redirect to("/")

	end




