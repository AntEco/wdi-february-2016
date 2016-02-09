// here we define the chooseDoor function which
//    does something according to which door one chooses
// the doorNumber argument represents how many
//    doors we have
function chooseDoor(doorNumber) {
  if(doorNumber == "1") {
    console.log("You won a car! Yey!")
  } else if(doorNumber == "2") {
    console.log("You won a piece of coal!")
  } else {
    console.log("You won a zonk!")
  }
}

// invoke chooseDoor function
chooseDoor(1000)