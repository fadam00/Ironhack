require 'date'
require "sinatra"
require_relative ("models/blog.rb")
require_relative ("models/post.rb")

blog = Blog.new

 
post1=   Post.new("Bikes",Date.today,"Bikes are cool.")
post2=	 Post.new("Gym",Date.today.prev_day, "You must go to the gym to be healthy.")
post3=	 Post.new("Pickles",Date.today.prev_day(8),"Pickles are tasty.")
post4=	 Post.new("Beach",Date.today.prev_day(3),"Beach is hot.")
post5=	 Post.new("Anvil",Date.today.prev_day(4),"Anvil is a bad company.")
post6=	 Post.new("Heat",Date.today.prev_day(5),"Heat generates more heat.")
post7=	 Post.new("Fintech",Date.today.prev_day(6),"Fintech is the future.")
post8=	 Post.new("The End",Date.today.prev_day(7),"This is the end.")

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

get "/display/:id" do
	@id = blog.latest_posts[params[:id].to_i]

	erb :display
end

get "/new_post" do
	erb :new_post
	end


