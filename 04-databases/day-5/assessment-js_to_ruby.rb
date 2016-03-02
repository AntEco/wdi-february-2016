def big_letters(word)
  word.upcase
end

def remote_control(tv_status, input)
  output = ""

  if tv_status == "off"
    output = "The TV is off. Turn the TV on first."
  else
    if input == "turn on"
      output = "The TV is now on."
    elsif input == "turn off"
      output = "The TV is now off."
    else
      output = "TV input: #{input}"
    end
  end

  output
end