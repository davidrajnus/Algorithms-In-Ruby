# Create a function that takes a string and capitalize the first character
# of each word in the sentence

def strcapitalize (str)
  arr = str.split

  new_arr = []
  arr.each do |word|
    new_arr << word.capitalize
  end

  return new_arr.join(" ")
  
end

strcapitalize("now is the time")
