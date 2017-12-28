# Write a function that returns the number of vowels
# used in a string.

def vowels (str)
  count = 0
  str.split("").each do |letter|
    if letter.downcase[/[aeiou]/]
      count += 1
    end
  end
  return count
end

# vowels("hellooo")

# Alternative vowels function
# def vowels(str)
#   return str.downcase.scan(/[aeiou]/).length
# end
