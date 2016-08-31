function average (string) {
	var stringArray = string.split(":");
	var sum = 0;
	var numberArray = stringArray.map(function (numbers) {
			return parseInt(numbers);
		});
	numberArray.forEach(function(n){
		sum += n
	});
	return sum/numberArray.length
	}

 console.log(average("80:70:90:100"));