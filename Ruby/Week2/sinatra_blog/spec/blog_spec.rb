
require 'date'
require_relative("../models/blog.rb")
require_relative("../models/post.rb")

RSpec.describe Blog do

	let(:post1) {Post.new("Bikes",Date.today,"Bikes are cool.")}
	let(:post2) {Post.new("Gym",Date.today.prev_day, "You must go to the gym to be healthy.")}
	let(:post3) {Post.new("Pickles",Date.today.prev_day(8),"Pickles are tasty.")}
	let(:post4) {Post.new("Beach",Date.today.prev_day(3),"Beach is hot.")}
	let(:post5) {Post.new("Anvil",Date.today.prev_day(4),"Anvil is a bad company.")}
	let(:post6) {Post.new("Heat",Date.today.prev_day(5),"Heat generates more heat.")}
	let(:post7) {Post.new("Fintech",Date.today.prev_day(6),"Fintech is the future.")}
	let(:post8) {Post.new("The End",Date.today.prev_day(7),"This is the end.")}

		describe "add_post" do
			it "pushes posts into array" do 
			blog = Blog.new

	
			expect(blog.posts.length).to eq(0)

			blog.add_post(post1)
			blog.add_post(post2)
			blog.add_post(post3)
			blog.add_post(post4)
			blog.add_post(post5)
			blog.add_post(post6)
			blog.add_post(post7)
			blog.add_post(post8)


			expect(blog.posts.length).to eq(8)
		end
	end

		describe "latest_posts" do
			it "checks for sorting latest first" do
			blog = Blog.new

			blog.add_post(post4)
			blog.add_post(post5)
			blog.add_post(post6)
			blog.add_post(post7)
			blog.add_post(post8)
			blog.add_post(post1)
			blog.add_post(post2)
			blog.add_post(post3)
			


			expect( blog.latest_posts[0].title).to eq("Bikes")
			expect(blog.latest_posts)
		end

	end
end









