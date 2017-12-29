# Print out the n-th entry in the fibonacci series.
# The fibonacci series is an ordering of numbers where
# each number is the sum of the preceeding two.

# [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
# forms the first ten entries of the fibonacci series.
# Example:
# fib(4) === 3

def fibonacci (num)
  #set initial values in fibonacci series
  arr = [0, 1]

  if num <= 1
    return arr[num]
  else
    for x in 2..num
      arr[x] = arr[x-1] + arr[x-2]
    end
    return arr.last
  end
end

# puts fibonacci(5)

# Recursive Fibonacci Solution
# def fibonacci (num )

#   if num < 2
#     return num
#   else
#     return fibonacci(num-1) + fibonacci(num-2)
#   end
# end

# puts fibonacci(5)