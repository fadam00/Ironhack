console.log("HELLO LET'S GET IT");

$(document).ready(function (){

	$('.js-search-button').on('click', searchSong);

});

//
//SHOW ARTISTS
//

function searchSong(theEvent){
	theEvent.preventDefault();
	var searchterm = $(".js-search-input").val()
console.log("click Search Song")
	$.ajax({

		type: "GET",
		url: `https://api.spotify.com/v1/search?type=track&query=${searchterm}`,
		success: showSong,
		error: handleError

	});
};

		function showSong (response) {
			console.log("Success!!");
			console.log(response);


			var songsArray = response.tracks.items;

			$('.js-song-title').html(songsArray[0].name)
			$('.js-song-author').html(songsArray[0].artists[0].name)


			// songsArray.forEach(function (theSong){
			// 	var imagetag = "";
			// 	var  = theArtist.id
			// 	$('.js-song-container').empty();
				
			// 	if (theArtist.images.length > 0) {
			// 		imagetag = `<img src="${theArtist.images[0].url}" width="160">`;

			// 		var html = `
			// 			<button class="js-album-search" data-album="${artistId}">${imagetag}<br>${theArtist.name}</button>` ;
			// 		$('.js-artist-list').append(html);
			// 	}
			// });


		};

		function handleError (error) {
			console.log("Error!")
			console.log(error.responseText);
		};
