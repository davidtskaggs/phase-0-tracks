// 7.3 Solo Challenge

// Release 0:Find the Longest Phrase
arrOfWords = ["long word", "longest word", "longer word"]

function findLongestWord(arr) {
  arr.sort(function(a,b) {
    return b.length - a.length
  });
  var biggestWord = arr[0];
  return biggestWord;
}

findLongestWord(arrOfWords)

// Release 2: Generate Random Test Data
alphabet = ['q','w','e','r','t','y','u','i','o','p','a','s','d','f','g','h','j','k','l','z','x','c','v','b','n','m']

function randomWordGen(int) {
  var numArr = []
  for(var i=int; i>0; i--) {
    numArr.push(Math.floor(Math.random() * (20 - 2) + 2));
  }
  return numArr;
}
var randomNumGen = randomWordGen(10)
console.log(randomNumGen)

function randomLetter(arr_of_letters, arr_of_nums) {
  var return_arr = []
  var x = ""
  for(i = arr_of_nums.length-1; i >= 0; i--) {

    for(var a=arr_of_nums[i]; a >=0; a--) {
      if (a !== 0) {
        x += arr_of_letters[Math.floor(Math.random() * arr_of_letters.length)]
      } else {
        x += ","
      }
    }
  }
  return_arr = x.slice(0, -1).split(",")
  console.log(return_arr)
  return return_arr

}
randomLetter(alphabet, randomNumGen)