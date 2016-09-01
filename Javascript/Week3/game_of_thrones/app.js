"use strict";

var fs = require('fs');

function searchFor (description) {
	return description.indexOf("Jon Snow")
}

function fileActions(err, file){ 
    if (err) {
        throw err;
    }

    var jonSnowCount = 0

    var episodes = JSON.parse(file);

    episodes.forEach(function(episode){
    	if (searchFor(episode.description) > 0) {
    		jonSnowCount += 1
    	}
    });
    	console.log(`Jon Snow is in ${jonSnowCount}`);

    var filteredEpisodes = episodes.filter(function(value){
    	return (value.rating > 8.5)
    });

	var sortedEpisodes = filteredEpisodes.sort(function (a, b){
		return a.episode_number - b.episode_number
	});

    	
	    sortedEpisodes.forEach (function (episode) {
	    console.log(`Title: ${episode.title}    Episode #: ${episode.episode_number}`);
	    console.log(episode.description);
	    var ratingString = `Rating: ${episode.rating}  `
	    console.log(ratingString.concat("*".repeat(Math.round(episode.rating)))); 

	});
}

fs.readFile("./GoTEpisodes.json", 'utf8', fileActions);

