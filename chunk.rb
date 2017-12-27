# Given an array and chunk size, divide the array into the chosen size

def chunk (arr, size)
  
  full_array = []
  while !arr.empty?
    new_array = arr.slice!(0...size)
    full_array << new_array
  end
  return full_array
end