var heading = document.getElementsByTagName('h1');
var heading = heading[0]
heading.style.border = "2px solid blue";

function HideImage(event) {
  event.target.style.visibility = "hidden";
}

var photo = document.getElementsByTagName('img');
photo[0].addEventListener("click", HideImage);