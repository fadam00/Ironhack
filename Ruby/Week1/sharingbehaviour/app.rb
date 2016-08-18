require_relative("lib/caffeine_consumer.rb")
require_relative("lib/payable.rb")
require_relative("lib/programmer.rb")
require_relative("lib/designer.rb")

john = Programmer.new
amy = Designer.new

john.program
amy.design_things



