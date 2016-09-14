console.log("BOOM");

$(document).ready(function (){

	$('.js-fetch-characters').on('click', fetchCharacters);
	$('.js-add-kylo-ren').on('click', addKylo);
	$('.js-add-new-character').on('click', addNewCharacter);
	//Don't let the form do regular submission
});

function fetchCharacters(){ 

	$.ajax({

		type: "GET",
		url: "https://ironhack-characters.herokuapp.com/characters",
		success: showCharacters,
		error: handleError

	});
};

function showCharacters (response) {
	console.log("Success!!");
	console.log(response);

	var charactersArray = response;

	charactersArray.forEach(function (theCharacter){
		var html = `
			<li>
				<h2> ${theCharacter.name} </h2>
			</li>
			` ;
			$('.js-characters-list').append(html);
	});
};

function handleError (error) {
	console.log("Error!")
	console.log(error.responseText);
};

function addKylo() {
	console.log("Add Kylo Click");

	var newCharacter = {
		name: "Nick Digger",
		occupation: "Hunter",
		debt: "$1,000",
		weapon: "Tig Ole Bitty"
	}

	$.ajax({

		type: "POST",
		url: "https://ironhack-characters.herokuapp.com/characters",
		data: newCharacter,
		success: updateList,
		error: handleError,

	});
};

function updateList () {

};

function addNewCharacter(theEvent){
	theEvent.preventDefault();

	console.log("Add New Character");

	var weapon = $('.js-weapon').val();
	var name = $('.js-name').val();
	var occupation = $('.js-occupation').val();

	console.log(`Weapon: ${weapon}`);
	console.log(`Name: ${name}`);
	console.log(`Occupation: ${occupation}`);

		$.ajax({

		type: "POST",
		url: "https://ironhack-characters.herokuapp.com/characters",
		data: newCharacter,
		success: updateList,
		error: handleError,

	});

	


}
