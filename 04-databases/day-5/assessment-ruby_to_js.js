function openDoor(password) {
  var correctPassword = "OpenSesame"

  if (password == correctPassword) {
    output = "The door is open"
  } else {
    output = "You fall to your doom"
  }

  return output
}

function sandwich(ingredients) {
  console.log(ingredients["bread"] + " bread")
  console.log(ingredients["cheese"] + " cheese")
  console.log(ingredients["protein"])
  console.log(ingredients["condiment"])
  console.log(ingredients["bread"] + " bread")
}