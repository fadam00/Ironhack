require "Date"
require_relative("../lib/todolist.rb")

RSpec.describe Task do

	describe "id" do
		task1 = Task.new("Buy the milk")
		task2 = Task.new("Wash the car")

	    it "checks to see if a task is on the list" do
	    	expect(task1.id).to eq(1)
	    	expect(task2.id).to eq(2)
	    end
	end

	describe "complete?" do

		task1 = Task.new("Buy the milk")
		task2 = Task.new("Wash the car")

	    it "checks for a not completed task." do
	    	expect(task1.complete?).to eq(false)
	    	expect(task2.complete?).to eq(false)
	  	end
	end

	describe "complete!" do

		task1 = Task.new("Buy the milk")
		task2 = Task.new("Wash the car")

		it "checks for a completed task." do
		    expect(task1.complete!).to eq(true)
	    	expect(task2.complete!).to eq(true)
		end
	end

	describe "created_task_at" do
		task1 = Task.new("Buy the milk")
		task2 = Task.new("Wash the car")

		it "checks when the task was created" do
			expect(task1.created_task_at).to eq(Time.now.to_i)
			expect(task2.created_task_at).to eq(Time.now.to_i)
		end
	end

end








