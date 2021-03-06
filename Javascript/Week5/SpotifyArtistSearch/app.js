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
				$('.js-artist-list3').empty();
				
				if (theArtist.images.length > 0) {
					imagetag = `<img src="${theArtist.images[0].url}" width="160">`;

					var html = `
						<button class="js-album-search" data-album="${artistId}">${imagetag}<br>${theArtist.name}</button>` ;
					$('.js-artist-list').append(html);
				}
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
			$(".js-album-list").empty();

			var albumArray = response.items;

			albumArray.forEach(function (theAlbum){
				var albumImage = `<img src="theAlbum.images[0].url">`
				var html = `
					<li>
						<h2> ${albumArray.name} </h2>
						<p> ${albumImage} <p>
						
					</li>
					`
					 ;
					$('.js-album-list').append(html);
				});
		};

		function appendAlbumHtml (album) {
			var image;

			if (album.images.length > 0){
				image = album.images[0].url;
			} else {
				image = "undefined"
			}

			var html = 
				<li>
					<h4> ${album.name} </h4>
					<img class="artist-image" src="${image}">

					
		}


	function handleError (error) {
			console.log("Error!")
			console.log(error.responseText);
		};


};




