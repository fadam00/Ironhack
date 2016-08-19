require_relative("lib/rook.rb")
require_relative("lib/king.rb")

#ROOK
#=================================
black_rook_l=Rook.new(8,1,"black")
black_rook_r=Rook.new(8,8, "black")
white_rook_l=Rook.new(1,1, "white")
white_rook_r=Rook.new(1,8, "white")

puts "===================="
puts "Valid Rook Movements"
puts "===================="

p black_rook_l.can_move?(2,1) == "yes"
p black_rook_r.can_move?(5,8) == "yes"
p white_rook_l.can_move?(2,1) == "yes"
p white_rook_r.can_move?(4,8) == "yes"

puts "======================"
puts "Invalid Rook Movements"
puts "======================"

p black_rook_l.can_move?(3, 7) == "no"
p black_rook_r.can_move?(5, 6) == "no"
p white_rook_l.can_move?(6, 5) == "no"
p white_rook_r.can_move?(2, 7) == "no"





#KING
#====================================
black_king=King.new(8,4,"black")
white_king=King.new(1,4, "white")

puts "===================="
puts "Valid King Movements"
puts "===================="

p black_king.can_move?(8,5) == "yes"
p white_king.can_move?(6,5) == "no"

puts "======================"
puts "Invalid King Movements"
puts "======================"

