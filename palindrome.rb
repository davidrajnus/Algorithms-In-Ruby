# Given a string, check to see if the string is the same when
# reversed and returns true or false

def palindrome (str)
  reversed = str.reverse

  if reversed == str
    return true
  else
    return false
  end
end
  