"use strict";

var read = require("read");

// var options = {
// 	prompt: "Do you find it difficult to introduce yourself to people?"
// };

// function theCallbackFunction (theError, theAnswer) {
// 	console.log("Answer Recorded");
// 	console.log(`Answer: ${theAnswer}`);

// 	options.prompt = "Do you initiate conversations with other people often?";

// 	function theCallbackFunctionTwo (theErrorTwo, theAnswerTwo) {
// 	console.log("Answer #2 Recorded");
// 	console.log(`Answer: ${theAnswerTwo}`);

// 	}

// 	read(options, theCallbackFunctionTwo);
// }
// read(options, theCallbackFunction);


// 	function theCallbackFunctionThree (theErrorThree, theAnswerThree) {

// 		options.prompt = "Do you feel superior to other people?";
// 	console.log("Answer #3 Recorded");
// 	console.log(`Answer: ${theAnswerThree}`);

// 	}

// 	read(options, theCallbackFunctionThree);

// console.log("This is the last line of the program!");

// REFACTORED VERSION

var questionStrings = [
	"Do you find it difficult to introduce yourself to other people?",
	"Do you initiate conversations with other peole often?",
	"Do you feel superior to other people?",
	"Do you keep your work spaces tidy?",
	"Do you enjoy beng the center of attention?",
	"Do you pick a piece of food and then put it back?",
	"Did you lie in this personality test?"
	];

	function theCallbackFunction (theError, theAnswer) {
		console.log(`Answer #${i+1} Recorded`);
		console.log(`Answer: ${theAnswer}`);

	i += 1;

	if (i < questionStrings.length) {

		var options = {prompt: `Question #${i+1}: ${questionStrings[i]}` };

		read(options, theCallbackFunction);

		} else {
			console.log("");
			console.log("Thanks for answering this personality test");
			console.log("Your personality type is: bland");
		}


	}

	// for (var i = 0; i < questionStrings.length; i += 1) {
	// 	console.log(`Question #${i + 1}: )
	// 	var options = {prompt: questionStrings[i] };
	// 	read(options,theCallBackFunction);
	// };

	var i = 0;

	var options = {prompt: `Question #${i+1}: ${questionStrings[i]}` };

	read(options, theCallbackFunction);

	
