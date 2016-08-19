#app.rb

require_relative("lib/rook.rb")

black_rook_left=Rook.new(1, 8, "black")

puts "Valied Rook Movements"
puts "---------------------"

p black_rook_left.can.move?(1, 5) == "yes"
p black_rook_left.can.move?(5, 8) == "yes"
p white_rook_right.can_move?(8, 3) == "yes"
p white_rook_right.can_move? (2,1) == "yes"

puts "Invalied Rook Movements"
puts "-----------------------"

p black_rook_left.can.move?(2, 7) == "no"
p black_rook_left.can.move?(2, 5) == "no"
