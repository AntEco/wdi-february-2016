$(document).ready(function(){
  // set the interval to increase the size of the
  //  box a little bit to 'beckon' the user to click it
  var interval = setInterval(function(){
    $("div").toggleClass("scale")
  }, 1000)

  $("div").click(function(event){
    // swap to the new class
    $(event.currentTarget).toggleClass("rectangle")

    // make sure to remove the scale class so it 
    //  looks normal when we click out of the differentStyles
    //  class
    $("div").removeClass("scale")

    // clear the interval
    clearInterval(interval)
  })
})