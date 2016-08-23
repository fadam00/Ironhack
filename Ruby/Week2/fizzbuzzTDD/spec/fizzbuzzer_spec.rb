require_relative("../lib/scenarios.rb")

RSpec.describe FizzBuzzy do

	describe "fizz_buzz method" do

		it "returns number if not multiple of 3 or 5" do

			the_buzzer = FizzBuzzy.new

			expect( the_buzzer.fizz_buzz(1) ).to eq (1)
			expect( the_buzzer.fizz_buzz(7) ).to eq (7)
			expect( the_buzzer.fizz_buzz(11) ).to eq (11)
		end

		it "returns FizzBuzz if number is multiple of 3 and 5" do

			the_buzzer = FizzBuzzy.new

			expect( the_buzzer.fizz_buzz(15) ).to eq ("FizzBuzz")
			expect( the_buzzer.fizz_buzz(30) ).to eq ("FizzBuzz")
			expect( the_buzzer.fizz_buzz(60) ).to eq ("FizzBuzz")
		end

		it "returns Fizz when number is multiple of 3" do

			the_buzzer = FizzBuzzy.new

			expect( the_buzzer.fizz_buzz(9) ).to eq( "Fizz" )
			expect( the_buzzer.fizz_buzz(12) ).to eq( "Fizz" )
			expect( the_buzzer.fizz_buzz(33) ).to eq( "Fizz" )
	
		end

		it "returns Fuzz when number is multiple of 5" do
			the_buzzer = FizzBuzzy.new

			expect( the_buzzer.fizz_buzz(5) ).to eq( "Fuzz" )
			expect( the_buzzer.fizz_buzz(10) ).to eq( "Fuzz" )
			expect( the_buzzer.fizz_buzz(20) ).to eq( "Fuzz" )

		end
	end
end
