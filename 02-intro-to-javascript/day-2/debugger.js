var name = "orlando"

// example of function scope
function nameChanger(name) {
  // the debugger will stop execution
  // until you tell it to stop within the console debugger
  debugger

  // this will have the value of the argument name on line 3
  //  as opposed to the name assigned on line 1
  console.log(name)
}

// this will log "jeremy" to the console
nameChanger("jeremy")