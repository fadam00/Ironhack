"use strict";

class Car {
	
	constructor (model,wheels,noise) {
		this.model = model;
		this.wheels = wheels;
		this.noise = noise;
	}


		makeNoise () {
			console.log( `${this.model} has ${this.wheels} and goes ${this.noise}!!`);
		}
}

module.exports = Car;