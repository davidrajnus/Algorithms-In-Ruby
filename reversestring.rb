# Given a string, return a new sting in reversed order

def reverse (str)
  new_string = ""

  for x in 1..(str.length) do
    new_string << str[str.length-x]
  end
  return new_string
  # new_string = str.reverse!
  # puts new_string
end

reverse("hello")