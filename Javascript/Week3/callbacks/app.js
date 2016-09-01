"use strict";

// function shout () {
// 	console.log("5 seconds");
// }

// setTimeout(shout, 5000);

// function shout () {
// 	console.log("1 seconds");
// }

// setTimeout(shout, 1000);

// function shout () {
// 	console.log("10 seconds");
// }

// setTimeout(shout, 10000);

// console.log("");
// console.log("END OF PROGRAM");
// console.log("");
var fs = require("fs");

function handleMoviesRead (theError,movieFileContents) {
	if (theError === null) {
		var moviesArray = movieFileContents.split("\n");
		console.log(moviesArray);
	}

	else {
		console.log("Oh no! Error reading the file.");
		console.log( theError );
	}
}

fs.readFile("movies.txt","utf8", handleMoviesRead);

console.log("Helllooooo");

// var movieFileContents = File.read("movies.txt")

// var moviesArray = movieFileContents.split("\n");
// console.log(moviesArray);