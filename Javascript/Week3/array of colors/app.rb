	require_relative("lib/color_counter.rb")

	color_array = ["lilac","indigo","teal","periwinkle","black","periwinkle","baby blue","teal"]

	color = ColorCounter.new

	color.count_color("indigo", color_array) == 1
	color.count_color("periwinkle", color_array) == 2
	color.count_color("teal", color_array) == 0

	caps_colors = color_array.map do |the_color|
		the_color.upcase
	end

	p caps_colors
