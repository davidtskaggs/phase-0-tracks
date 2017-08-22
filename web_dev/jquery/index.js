$('h1').hover(function() {
  alert("Welcome! Let's learn some jQuery!")
});

$('li').on('click', function() {
  $(this).text("BOOM! jQuery Magic Sauce!").delay(800).fadeOut(400);
});

$("input").focus(function() {
  $(this).css("background-color", "#c4c2c2")
});

$("input").blur(function() {
  $(this).css("background-color", "#ffffff")
});