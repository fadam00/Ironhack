console.log("HELLO LET'S GET IT");

$(document).ready(function (){

	$('.js-search-artist').on('click', searchArtist);

});

//
//SHOW ARTISTS
//

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
				var artistId = theArtist.id
				
				if (theArtist.images.length > 0) {
					imagetag = `<img src="${theArtist.images[0].url}">`;
				}

				var html = `
					<li>
						<h2> ${theArtist.name} </h2>
						${imagetag}
						<button class="js-album-search" data-album="${artistId}">See ${theArtist.name} albums</button>
					</li>
					` ;
					$('.js-artist-list').append(html);
			});

			$('.js-album-search').on('click',fetchAlbum);
		};

		function handleError (error) {
			console.log("Error!")
			console.log(error.responseText);
		};


//
//FETCH ALBUM
//

function fetchAlbum(theEvent){
	var theID = $(theEvent.currentTarget).data("album");
	console.log("Forever Undefined");
	theEvent.preventDefault();
	var searchterm = $(".artist-search").val()
console.log("click Search Album")


	$.ajax({

		type: "GET",
		url: `https://api.spotify.com/v1/artists/${theID}/albums`,
		success: showAlbum,
		error: handleError

	});

			function showAlbum (response) {
			console.log("Success!!");
			console.log(response);

			var albumArray = response.artists.items;


			artistArray.forEach(function (theArtist){
				var imagetag = "";
				var artistId = theArtist.id
				
				if (theArtist.images.length > 0) {
					imagetag = `<img src="${theArtist.images[0].url}">`;
				}

				var html = `
					<li>
						<h2> ${theArtist.name} </h2>
						${imagetag}
						<button class="js-album-search" data-album="${artistId}">See ${theArtist.name} albums</button>
					</li>
					` ;
					$('.js-artist-list').append(html);
				}
			

	function handleError (error) {
			console.log("Error!")
			console.log(error.responseText);
		};
};




