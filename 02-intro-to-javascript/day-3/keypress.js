$(document).ready(function(){
  // this invokes the callback function on keypress
  $("#username").keypress(function(event){
    // using the following ranges we can determine
    //  which type of key was pressed
    if(event.keyCode >= 48 && event.keyCode <= 57) {
      console.log("This is a number")
    } else if(event.keyCode >= 97 && event.keyCode <= 122) {
      console.log("This is a lowercase letter")
    } else if(event.keyCode >= 65 && event.keyCode <= 90) {
      console.log("This is a uppercase letter")
    }
  })
})