// you can call functions declared in another library
doorsAgain(5)

// sometimes its useful to separate your callbacks
//  into named functions to use later
function utility(){
  alert("something happened")
}

$(document).ready(function(){
  // this is how you assign function callbacks
  //  to events
  // you can use a named function (utility)
  $("a").on("click", utility)

  // you can use an anonymous function (has no name)
  $("a").on("click", function(){
    $(this).hide()
  })
})