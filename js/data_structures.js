// Release 0: Work with Arrays

var colors = ["blue", "green", "yellow", "black"];

var horseNames = ["Ed", "Jeff", "Fred", "Jess"];

colors.push("tan");
console.log(colors);

horseNames.push("bob");
console.log(horseNames);

// Release 1: Build an Object

function createHorseObj(arr1, arr2) {
  var horseObj = {};

  for(var i = 0; i <= arr1.length - 1; i++) {
    console.log(arr1[i]);
    horseObj[arr1[i]] = arr2[i];
  }
  console.log(horseObj);
  return horseObj;
}

createHorseObj(horseNames, colors);

// Release 2: Build Many Objects Using a Constructor

function carMaker(make, model, isSafe) {

  this.make = make;
  this.model = model;
  this.isSafe = isSafe;
  this.testDrive = function() { console.log("VRRROOOM!!"); };
}

console.log("Let's make a new car...")
var newCar = new carMaker("toyota", "tacoma", false);
console.log(newCar);
console.log("Another car made!");
newCar.testDrive();
console.log("----");

console.log("Let's make a new car...");
var anotherCar = new carMaker("ford", "fiesta", false);
console.log(anotherCar);
console.log("Another car made!");
anotherCar.testDrive();