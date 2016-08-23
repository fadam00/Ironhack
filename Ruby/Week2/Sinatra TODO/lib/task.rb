require "Date"

class Task
    attr_reader :content, :id
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @is_complete = false
        @create_at = Time.now
    end

    def id
    	@id
    end

    def complete?
    	if @is_complete == true
    		true
    	else
    		false
    	end
    	
    end

    def complete!
    	@is_complete = true
    end

    def incomplete
    	@is_complete = false
    end

    def created_task_at
    	@created_at = Time.now.to_i
    end


end

# task1 = Task.new("Buy the milk")
# task2 = Task.new("Wash the car")