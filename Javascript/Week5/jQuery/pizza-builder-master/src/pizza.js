// Write your Pizza Builder JavaScript in this file.
$('.btn-pepperonni').on('click', function(){
	$('.pep').toggle();
		$('.btn-pepperonni').toggleClass('active');
});

$('.btn-mushrooms').on('click', function(){
	$('.mushroom').toggle();
		$('.btn-mushrooms').toggleClass('active');
});

$('.btn-green-peppers').on('click', function(){
	$('.green-pepper').toggle();
		$('.btn-pepperonni').toggleClass('active');
});

$('.btn-sauce').on('click', function(){
	$('.sauce').toggleClass('sauce-white');
		$('.btn-pepperonni').toggleClass('active');
});

$('.btn-crust').on('click', function(){
	$('.crust').toggleClass('crust-gluten-free');
		$('.btn-pepperonni').toggleClass('active');
});

