var colors = ["blue", "green", "yellow", "black"];

var horseNames = ["Ed", "Jeff", "Fred", "Jess"];

colors.push("tan");
console.log(colors);

horseNames.push("bob");
console.log(horseNames);

function createHorseObj(arr1, arr2) {
  var horseObj = {};

  for(var i = 0; i <= arr1.length - 1; i++) {
    console.log(arr1[i]);
    horseObj[arr1[i]] = arr2[i];
  }
  console.log(horseObj);
}

createHorseObj(horseNames, colors)