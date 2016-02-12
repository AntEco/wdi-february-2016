function addLeadingZero(digits) {
  return ("0" + digits).substr(-2)
}

function randomColor() {
  return Math.floor(Math.random() * 255)
}

function randomRGB() {
  var colors = []

  for(var i = 0; i < 3 ; ++i) {
    colors.push(randomColor())
  }

  return "rgb(" + colors.join(",") + ")"
}

function changeSecondsColor(color) {
  $("#seconds").css("color", color)
}

function changeMinutesColor(color) {
  $("#minutes").css("color", color)
}

$(document).ready(function(){
  var firstTime = true
  var initialOffset = 0

  // this sets a timer where it displays seconds every
  //  2 seconds
  setInterval(function(){
    var today = new Date()
    var time = {
      hours: today.getHours(),
      minutes: today.getMinutes(),
      seconds: today.getSeconds(),
      milliseconds: today.getMilliseconds()
    }

    if(firstTime) {
      firstTime = false
    }

    if(time.seconds % 2 == 0) {
      changeSecondsColor("red")
    } else {
      changeSecondsColor("green")
    }

    if(time.seconds == 0 && time.milliseconds == 0) {
      console.log(time.seconds)
      changeMinutesColor(randomRGB())
    }

    // this displays the seconds by retrieving
    $("#hours").html(time.hours)
    $("#minutes").html(addLeadingZero(time.minutes))
    $("#seconds").html(addLeadingZero(time.seconds))
    $("#milliseconds").html(time.milliseconds)
  }, 125)
})