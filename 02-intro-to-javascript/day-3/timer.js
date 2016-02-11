$(document).ready(function(){
  // this sets a timer where it displays seconds every
  //  2 seconds
  setInterval(function(){
    var today = new Date()

    // this displays the seconds by retrieving
    console.log(today.getSeconds())
  }, 2000)
})