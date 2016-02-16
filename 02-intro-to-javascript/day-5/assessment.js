// takes in the number in seconds and counts down on console
function countdownerConsole(seconds) {
  for(var i = seconds; i >= 0 ; i--) {
    console.log(i + " seconds remaining")
  }
}

// takes in the number in seconds and counts down on html element
function coundownerHtml(seconds) {
  for(var i = seconds; i >= 0 ; i--) {
    $("ul").append("<li>" + i + " seconds remaining </li>")
  }
}

$(document).ready(function(){
  var seconds = 30

  // invoke both functions
  countdownerConsole(seconds)
  coundownerHtml(seconds)
})