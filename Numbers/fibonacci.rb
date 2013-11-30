# fibonacci.rb
# Prints the Fibonacci number Fn

def fib(n)
  if n == 1
    return 0
  end
  if n == 2
    return 1
  else
    return fib(n-1) + fib(n-2)
  end
end

puts fib(6)
