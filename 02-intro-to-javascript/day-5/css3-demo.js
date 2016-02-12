$(document).ready(function(){
  $("a").click(function(event){
    $(event.currentTarget).toggleClass("transition")
    $("h1").toggleClass("bear")
    $("strong").toggleClass("hidden")
  })
})