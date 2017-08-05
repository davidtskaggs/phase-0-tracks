// 7.3 Solo Challenge

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