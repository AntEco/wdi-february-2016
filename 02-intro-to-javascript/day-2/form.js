// only one document.ready function is necessary
$(document).ready(function(){
  var timesTyped = 0

  $("input[type=text]").keypress(function(){
    timesTyped++
    console.log("You typed " + timesTyped)
  })

  $("#username").change(function(){
    console.log("change event")
    if($(this).val() == "") {
      alert("Username cannot be blank")
    }
  })

  $("form").submit(function(){
    
    if($("#password").val() == ""){
      alert('password cannot be blank');
      
      return false;
    }

    else if($("#username").val() == ""){
      alert('username cannot be blank');
      
      return false;
    }

    else {
      alert('all clear');
    }
  })
})