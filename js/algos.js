// 7.3 Solo Challenge

// Release 0:Find the Longest Phrase
// arrOfWords = ["long word", "longest word", "longer word"]

function findLongestWord(arr) {
  arr.sort(function(a,b) {
    return b.length - a.length
  });
  var biggestWord = arr[0];
  console.log("Longest word:", biggestWord, "-", "Length:", biggestWord.length)
  return biggestWord;
}

// findLongestWord(arrOfWords)

// Release 1: Find Key/Value Match

function compareObjs(obj1, obj2) {
  var sameValInObj = false
  for(var key in obj1) {
    for(var secondKey in obj2) {
      if (obj1[key] === obj2[secondKey]) {
        sameValInObj = true
      }
    }
  }
  return sameValInObj;

}
// compareObjs({name: "Steven", age: 54}, {name: "Tamir", age: 54})
// compareObjs({animal: "cat", legs: 4}, {animal: "Dog", legs: 3});


// Release 2: Generate Random Test Data
function alphabetFunc() {
alphabetArray = ['q','w','e','r','t','y','u','i','o','p','a','s','d','f','g','h','j','k','l','z','x','c','v','b','n','m']
return alphabetArray;
}
var alphabet = alphabetFunc();

function randomIntGen(int) {
  var numArr = []
  for(var i=int; i>0; i--) {
    numArr.push(Math.floor(Math.random() * (11 - 3) + 3));
  }
  return numArr;
}
var randomNumGen = randomIntGen((Math.floor(Math.random() * (10 - 1) + 1)))

function randomLetterGen(arr_of_nums, alphabetFunc) {
  var return_arr = []
  var x = ""
  for(i = arr_of_nums.length-1; i >= 0; i--) {

    for(var a=arr_of_nums[i]; a >=0; a--) {
      if (a !== 0) {
        x += alphabet[Math.floor(Math.random() * alphabet.length)]
      } else {
        x += ","
      }
    }
  }
  return_arr = x.slice(0, -1).split(",")
  console.log("Array of", return_arr.length, "random words:", return_arr);
  return return_arr;

}

// Release 2: Question 2 
// For this question, I am unclear based on the directions if the driver code below is sufficient;
// Or if the the method calls should be stored in a variable and then passed as an arguement to a method. 
findLongestWord(randomLetterGen(randomNumGen, alphabet))
console.log("----------")
findLongestWord(randomLetterGen(randomNumGen, alphabet))
console.log("----------")
findLongestWord(randomLetterGen(randomNumGen, alphabet))
console.log("----------")
findLongestWord(randomLetterGen(randomNumGen, alphabet))
console.log("----------")
findLongestWord(randomLetterGen(randomNumGen, alphabet))
console.log("----------")
findLongestWord(randomLetterGen(randomNumGen, alphabet))
console.log("----------")
findLongestWord(randomLetterGen(randomNumGen, alphabet))
console.log("----------")
findLongestWord(randomLetterGen(randomNumGen, alphabet))
console.log("----------")
findLongestWord(randomLetterGen(randomNumGen, alphabet))
console.log("----------")
findLongestWord(randomLetterGen(randomNumGen, alphabet))


 
