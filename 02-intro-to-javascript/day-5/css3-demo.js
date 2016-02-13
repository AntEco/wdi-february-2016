$(document).ready(function(){
  $("a").click(function(event){
    // every time you click the anchor it will either
    //  add the following classes or remove them
    // the styling and transitioning will be handled by css
    $(event.currentTarget).toggleClass("transition")
    $("h1").toggleClass("bear")
    $("strong").toggleClass("hidden")
  })
})