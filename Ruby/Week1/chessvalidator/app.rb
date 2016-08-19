require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/bishop.rb")
require_relative("lib/knight.rb")
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
puts ""

puts "======================"
puts "Invalid Rook Movements"
puts "======================"

p black_rook_l.can_move?(3, 7) == "no"
p black_rook_r.can_move?(5, 6) == "no"
p white_rook_l.can_move?(6, 5) == "no"
p white_rook_r.can_move?(2, 7) == "no"
puts ""





#KING
#====================================
black_king=King.new(8,4,"black")
white_king=King.new(1,4, "white")

puts "===================="
puts "Valid King Movements"
puts "===================="

p black_king.can_move?(8,5) == "yes"
p black_king.can_move?(7,4) == "yes"
p black_king.can_move?(7,3) == "yes"
p white_king.can_move?(2,5) == "yes"
p white_king.can_move?(1,3) == "yes"
p white_king.can_move?(2,3) == "yes"
puts ""

puts "======================"
puts "Invalid King Movements"
puts "======================"

p black_king.can_move?(6,4) == "no"
p black_king.can_move?(5,2) == "no"
p black_king.can_move?(6,6) == "no"
p white_king.can_move?(2,7) == "no"
p white_king.can_move?(1,8) == "no"
p white_king.can_move?(1,1) == "no"


#BISHOP
#=======================================
black_bishop_l=Bishop.new(8,3,"black")
black_bishop_r=Bishop.new(8,6, "black")
white_bishop_l=Bishop.new(1,3, "white")
white_bishop_r=Bishop.new(1,6, "white")

puts "======================="
puts "Valid Bishop Movements"
puts "======================="

p black_bishop_l.can_move?(7,4) == "yes"
p black_bishop_r.can_move?(6,8) == "yes"
p white_bishop_l.can_move?(3,5) == "yes"
p white_bishop_r.can_move?(4,3) == "yes"

puts "========================="
puts "Invalid Bishop Movements"
puts "========================="

p black_bishop_l.can_move?(6,7) == "no"
p black_bishop_r.can_move?(4,3) == "no"
p white_bishop_l.can_move?(8,1) == "no"
p white_bishop_r.can_move?(1,8) == "no"

