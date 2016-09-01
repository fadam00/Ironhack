"use strict"; //Needs to be activated to use new way of naming classes

// require_relative("lib/animal.rb")
var Animal = require("./lib/animal.js")
var Car = require("./lib/car.js")


// dog = Animals.new("Dymitri","Huff..")
var dog = new Animal("Dymitri","Huff...");

// dog.funnynoise
// dog.shout
dog.makeNoise();
dog.shout();


// dog2 = Animals.new("Chewie", "Woof!")
var dog2 = new Animal("Chewie","Woof!");

// dog2.funnynoise
// dog2.shout
dog2.makeNoise();
dog2.shout();

var toyota = new Car("Toyota Camry", "4 wheels", "vroom");
toyota.makeNoise();

var acura = new Car("Acura NSX", "4 wheels", "ffffyuuuummmm");
acura.makeNoise();

var delorean = new Car("DMC Delorean", "4 wheels and a rocket", "*time and dimesion bending noise*");
delorean.makeNoise();
