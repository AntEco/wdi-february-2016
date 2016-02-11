$(document).ready(function(){
  $("a").data("foo", "dskjhksdlj")

  $("a").click(function(event){
    var imgUrl = $(event.target).data("img-url")

    $("body").append("<img src='" + imgUrl + "'>")
  })

  console.log($("a").data("img-url"))
})