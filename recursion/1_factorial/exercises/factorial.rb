def factorial(num)
  return nil if num.negative?
  return 1 if num <= 1

  num * factorial(num - 1)
end
