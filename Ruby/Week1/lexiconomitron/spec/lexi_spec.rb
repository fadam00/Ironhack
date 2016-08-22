require_relative("../lib/lexi.rb")

RSpec.describe Lexiconomitron do 

	before :each do 
		@lexi = Lexiconomitron.new
	end


		  describe "eat_t" do

		    it "removes every letter t from the input" do

		      expect(@lexi.eat_t("great scoTT!")).to eq("grea sco!")

		    end
		end

		   describe "shazam" do
		   
		   	it "it reverses the letters within the words" do

		     expect(@lexi.shazam(["This", "is", "a", "boring", "test"])). to eq(["sihT", "si", "a", "gnirob", "tset"])

		   end
		end

end