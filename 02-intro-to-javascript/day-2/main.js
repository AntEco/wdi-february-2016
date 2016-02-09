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
    // in order to select the currently targetted element
    //  you are working with you can use $(this)
    $(this).hide()
  })

  // you can also run animations in sequence
  $("a#animator").show(function(){
    $("a#animator").animate({
      opacity: .5
    }, 2000)
  })

  // you can chain event handlers together
  //  to save typing
  $("h1").click(function(){
    alert("I clicked the h1")
  })

  $("h1").mouseenter(function(){

    $(this).animate({
      left: $(this).position().left + 500
    })

    console.log("I am mousing in")
  })

  $("h1").mouseleave(function(){
    console.log("I am mousing out")
  })
})