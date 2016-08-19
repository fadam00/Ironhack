require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/bishop.rb")
require_relative("lib/knight.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")
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

#KNIGHT
#=======================================
black_knight_l=Knight.new(8,2,"black")
black_knight_r=Knight.new(8,7, "black")
white_knight_l=Knight.new(1,2, "white")
white_knight_r=Knight.new(1,7, "white")

puts "======================="
puts "Valid Knight Movements"
puts "======================="

p black_knight_l.can_move?(6,3) == "yes"
p black_knight_r.can_move?(7,5) == "yes"
p white_knight_l.can_move?(2,4) == "yes"
p white_knight_r.can_move?(3,8) == "yes"

puts "========================="
puts "Invalid Knight Movements"
puts "========================="

p black_knight_l.can_move?(6,4) == "no"
p black_knight_r.can_move?(7,4) == "no"
p white_knight_l.can_move?(3,5) == "no"
p white_knight_r.can_move?(4,3) == "no"

#QUEEN
#======================================
black_queen=Queen.new(8,5, "black")
white_queen=Queen.new(1,5, "white")

puts "========================="
puts "Valid Queen Movements"
puts "========================="

p black_queen.can_move?(6,5) == "yes"
p black_queen.can_move?(5,2) == "yes"
p black_queen.can_move?(8,1) == "yes"
p white_queen.can_move?(1,1) == "yes"
p white_queen.can_move?(3,3) == "yes"
p white_queen.can_move?(4,5) == "yes"
puts ""

puts "========================="
puts "Invalid Queen Movements"
puts "========================="

p black_queen.can_move?(6,6) == "no"
p black_queen.can_move?(6,4) == "no"
p black_queen.can_move?(7,7) == "no"
p white_queen.can_move?(3,4) == "no"
p white_queen.can_move?(3,6) == "no"
p white_queen.can_move?(2,3) == "no"
puts ""

#PAWN
#=======================================
black_pawn1=Pawn.new(7,1, "black")
black_pawn2=Pawn.new(7,2, "black")
black_pawn3=Pawn.new(7,3, "black")
black_pawn4=Pawn.new(7,4, "black")
black_pawn5=Pawn.new(7,5, "black")
black_pawn6=Pawn.new(7,6, "black")
black_pawn7=Pawn.new(7,7, "black")
black_pawn8=Pawn.new(7,8, "black")
white_pawn1=Pawn.new(2,1, "white")
white_pawn2=Pawn.new(2,2, "white")
white_pawn3=Pawn.new(2,3, "white")
white_pawn4=Pawn.new(2,4, "white")
white_pawn5=Pawn.new(2,5, "white")
white_pawn6=Pawn.new(2,6, "white")
white_pawn7=Pawn.new(2,7, "white")
white_pawn8=Pawn.new(2,8, "white")

puts "========================="
puts "Valid Pawn Movements"
puts "========================="

p black_pawn1.can_move?(6,1) == "yes"
p black_pawn2.can_move?(6,2) == "yes"
p black_pawn3.can_move?(6,3) == "yes"
p black_pawn4.can_move?(6,4) == "yes"
p black_pawn5.can_move?(5,5) == "yes"
p black_pawn6.can_move?(5,6) == "yes"
p black_pawn7.can_move?(6,7) == "yes"
p black_pawn8.can_move?(5,8) == "yes"
p white_pawn1.can_move?(4,1) == "yes"
p white_pawn2.can_move?(4,2) == "yes"
p white_pawn3.can_move?(3,3) == "yes"
p white_pawn4.can_move?(3,4) == "yes"
p white_pawn5.can_move?(3,5) == "yes"
p white_pawn6.can_move?(4,6) == "yes"
p white_pawn7.can_move?(3,7) == "yes"
p white_pawn8.can_move?(4,8) == "yes"
puts ""

puts "========================="
puts "Invalid Pawn Movements"
puts "========================="


p black_pawn1.can_move?(2,1) == "no"
p black_pawn2.can_move?(2,2) == "no"
p black_pawn3.can_move?(2,3) == "no"
p black_pawn4.can_move?(1,4) == "no"
p black_pawn5.can_move?(4,5) == "no"
p black_pawn6.can_move?(4,6) == "no"
p black_pawn7.can_move?(2,7) == "no"
p black_pawn8.can_move?(1,8) == "no"
p white_pawn1.can_move?(2,1) == "no"
p white_pawn2.can_move?(5,2) == "no"
p white_pawn3.can_move?(6,3) == "no"
p white_pawn4.can_move?(6,4) == "no"
p white_pawn5.can_move?(5,5) == "no"
p white_pawn6.can_move?(5,6) == "no"
p white_pawn7.can_move?(2,7) == "no"
p white_pawn8.can_move?(5,8) == "no"
puts ""


