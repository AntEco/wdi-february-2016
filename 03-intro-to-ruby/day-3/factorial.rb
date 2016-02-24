def factorial(num)
  return "undefined" if num < 0

  factor = 1

  for i in 1..num
    factor *= i
  end

  factor
end

puts factorial(3)