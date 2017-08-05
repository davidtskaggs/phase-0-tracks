// 7.1 JS Syntax
// Release 4: Write a JavaScript Program
// Write a function that takes a string as a parameter and returns a reversed string
// Pseudocode:
// - declare function and give it a single parameter
// - crete an empty variable that will be used as the reversed string
// - create for loop
  // - iterate though the string
  // - add each letter to the return variable in reverse order
// return the reversed string

// Function that iterates through str and adds each item (reverse order) to a new string.


// Function that converts string argument into array; Iterates through array, adding each value (reverse order) to the back of the new array; Reversed Array is then set equal to a string with join and returned.
function reverseStr(str) {
  strArr = str.split("");
  revArr = [];
  for(var i=strArr.length-1; i >=0; i--) {
    revArr.push(strArr[i]);
  }
  revStr = revArr.join("");
  return revStr;
}
reversedString = reverseStr("hello")
console.log(reversedString)