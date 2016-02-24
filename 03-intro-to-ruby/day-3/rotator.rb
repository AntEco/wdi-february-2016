def rotate(array, index)
  # account for negatives
  index = array.length + index if index < 0
  temp_array = array.shift(index)
  array + temp_array
end

puts rotate(["some", "thing", "else"], -1)
puts ["some", "thing", "else"].rotate(-1)
