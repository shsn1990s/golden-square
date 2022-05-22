def factorial(n)
  # Code corrected by changing product to equal to n instead of 0
  # While loop changed from greater than zero, to greater than one
  product = n
  while n > 1
    #binding.irb # Mystery new line!
    n -= 1
    product *= n
    #binding.irb # Mystery new line!
  end
  product
end

p factorial(5)