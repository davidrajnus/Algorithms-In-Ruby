# Given an integer, return the integer in a reverse order

def reverseint(int)
  if int >= 0 
    return int.to_s.reverse.to_i
  else
    return int.to_s.reverse.to_i*(-1)
  end
end

# puts reverseint(500)