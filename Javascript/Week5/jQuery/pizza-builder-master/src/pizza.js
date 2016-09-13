// Write your Pizza Builder JavaScript in this file.
$(document).ready(function(){

var price = 10
// $('.total').html("$" + price);

$(".btn").on('click', function(){
	$('.total').html("$" + price);
});

	$('.btn-pepperonni').on('click', function(){
		$('.pep').toggle();
			if ($('.btn-pepperonni').hasClass('active')) {	
				 price += 1;
				 
		}	else{
				price -= 1;
		};		
				$('.btn-pepperonni').toggleClass('active')
	});


	$('.btn-mushrooms').on('click', function(){
		$('.mushroom').toggle();
			$('.btn-mushrooms').toggleClass('active');
	});

	$('.btn-green-peppers').on('click', function(){
		$('.green-pepper').toggle();
			$('.btn-green-peppers').toggleClass('active');
	});

	$('.btn-sauce').on('click', function(){
		$('.sauce').toggleClass('sauce-white');
			$('.btn-sauce').toggleClass('active');
	});

	$('.btn-crust').on('click', function(){
		$('.crust').toggleClass('crust-gluten-free');
			$('.btn-crust').toggleClass('active');
	});
//When pepperonni button is clicked $1 is added to price ($10) and changes price to $11.

// var price = 10
$('.total').html("$" + price);

});

