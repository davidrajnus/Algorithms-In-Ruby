# Given a string, return the character that is most commonly
# found in the string

def maxchar (str)
  var = str.split("")

  empty = {}

  var.each do |key|
    if empty[key.to_sym].nil?
      empty[key.to_sym] = 1
    else
      empty[key.to_sym] = empty[key.to_sym] + 1
    end
  end
  puts empty

  test_value = 0
  @most_char = []
  empty.each do |key, value|
    if value > test_value
      test_value = value
      @most_char = key.to_s
    elsif value == test_value #if they are multiple chars with same number of occurence
      test_value = value
      @most_char << " and " + key.to_s
    end
  end
  
  return @most_char
end

