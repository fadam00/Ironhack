$(document).on("turbolinks:load", function () {
  console.log("We are using JavaScript now!");

  $(".js-ingredient").on('click', addIngredient);

});

function addIngredient (theEvent) {
	theEvent.preventDefault();
	console.log(theEvent.currentTarget)
	console.log($(theEvent.currentTarget).data('ingredient-id'))
	var ingredientId = $(theEvent.currentTarget).data('ingredient-id')
	var sandwichId = $('.js-sandwich').data('sandwich-id')

	$.ajax({
		type: "POST",
		url: `/api/sandwiches/${sandwichId}/ingredients/add`,
		data: { ingredient_id: ingredientId },
		success: showIngredient,
		error: handleError
	})

	
};

function showIngredient (response) {
	console.log(response)
}

function handleError (error) {
	console.log("Error");
	console.log(error.responseText);
};

