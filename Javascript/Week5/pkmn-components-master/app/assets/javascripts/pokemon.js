// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

PokemonApp.PokemonComponent = class {
	constructor (pokemonUri) {
		this.id = PokemonApp.idFromUri( pokemonUri );
	}

	render () {
		console.log(`PokemonComponent rendering pokemon #${this.id}`);
	
		$.ajax({
			type: "GET",
			url: `/api/v1/pokemon/${this.id}`,
			success: PokemonApp.showPokemonModal,
			error: PokemonApp.handleError
		});
	}
};

// input: 'v1/pokemon/57'
// output: 

PokemonApp.showPokemonModal = function (result) {
	console.log('Pokemon info:');
	console.log(result);

	console.log(`Name: ${result.name}`);
	$('.js-poke-name').html(result.name);

	console.log(`Number: ${result.pkdx_id}`);
	$('.js-poke-number').html(result.pkdx_id);

	console.log(`Height: ${result.height}`);
	$('.js-poke-height').html(result.height);	

	console.log(`Weight: ${result.weight}`);
	$('.js-poke-weight').html(result.weight);

	$('.js-poke-hp').html(result.hp);
	$('.js-poke-attack').html(result.attack);
	$('.js-poke-defense').html(result.defense);
	$('.js-poke-spatk').html(result.sp_atk);
	$('.js-poke-spdef').html(result.sp_def);
	$('.js-poke-speed').html(result.speed);

	$('.js-pokemon-modal').modal('show');
};

PokemonApp.handleError = function (theError) {
	console.log('Pokemon Component Error');
	console.log(theError.responseText);
}


PokemonApp.idFromUri = function (pokemonUri) {
	var uriSegments = pokemonUri.split("/");
	var secondLast = uriSegments.length - 2;
	return uriSegments[secondLast];
};

$(document).ready(function () {

	$('.js-show-pokemon').on('click', function (showIt) {

		var theUri = $(showIt.currentTarget).data('pokemon-uri');
		console.log(theUri);
		var pokeComponent = new PokemonApp.PokemonComponent(theUri);
		pokeComponent.render();
	});
});
