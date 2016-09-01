var countColors = require("./lib/count_color.js")

var colorArray = ["lilac","indigo","teal","periwinkle","black","periwinkle","baby blue","teal"]

//In Ruby: p color_array
console.log( colorArray );

console.log( countColors("indigo", colorArray) == 1);
console.log( countColors("indigo", colorArray) == 1);
console.log( countColors("periwinkle", colorArray) == 2);
console.log( countColors("teal", colorArray) == 2);

var capsColor = colorArray.map(function (theColor) {

	return theColor.toUpperCase();
});

console.log(capsColor);