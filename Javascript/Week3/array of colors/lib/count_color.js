var colorArray = ["lilac","indigo","teal","periwinkle","black","periwinkle","baby blue","teal"]

function countColors (theColor, colorArray) {

		var count = 0;

		colorArray.forEach(function (tempColor) {
			if (tempColor === theColor) {
				count += 1;
			}
		});

		return count;
}

module.exports = countColors; //This must be here to link the require command.