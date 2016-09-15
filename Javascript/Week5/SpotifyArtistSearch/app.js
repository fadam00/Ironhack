console.log("HELLO LET'S GET IT");

$(document).ready(function (){

	$('.js-search-artist').on('click', searchArtist);

});

function searchArtist(theEvent){
	theEvent.preventDefault();
	var searchterm = $(".artist-search").val()
console.log("click Search Artist")
	$.ajax({

		type: "GET",
		url: `https://api.spotify.com/v1/search?type=artist&query=${searchterm}`,
		success: showArtist,
		error: handleError

	});
};

function showArtist (response) {
	console.log("Success!!");
	console.log(response);

	var artistArray = response.artists.items;


	artistArray.forEach(function (theArtist){
		var imagetag = "";
		
		if (theArtist.images.length > 0) {
			imagetag = `<img src="${theArtist.images[0].url}">`;
		}

		var html = `
			<li>
				<h2> ${theArtist.name} </h2>
				${imagetag}
				<button class="js-album-search">See ${theArtist.name} albums</button>
			</li>
			` ;
			$('.js-artist-list').append(html);
	});
};

function handleError (error) {
	console.log("Error!")
	console.log(error.responseText);
};

// function addKylo() {
// 	console.log("Add Kylo Click");

// 	var newCharacter = {
// 		name: "Nick Digger",
// 		occupation: "Hunter",
// 		debt: "$1,000",
// 		weapon: "Tig Ole Bitty"
// 	}

// 	$.ajax({

// 		type: "POST",
// 		url: "https://ironhack-characters.herokuapp.com/characters",
// 		data: newCharacter,
// 		success: updateList,
// 		error: handleError,

// 	});
// };

// function updateList () {

// };

// function addNewCharacter(theEvent){
// 	theEvent.preventDefault();

// 	console.log("Add New Character");

// 	var newCharacter = {

// 	weapon: $('.js-weapon').val(),
// 	name: $('.js-name').val(),
// 	occupation: $('.js-occupation').val()

// };

// 		$.ajax({

// 		type: "POST",
// 		url: "https://ironhack-characters.herokuapp.com/characters",
// 		data: newCharacter,
// 		success: updateList,
// 		error: handleError,

// 	});

	



