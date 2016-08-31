	require_relative("lib/color_counter.rb")

	count_color("indigo", color_array) == 1
	count_color("periwinkle", color_array) == 2
	count_color("teal", color_array) == 0