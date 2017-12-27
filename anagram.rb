# Check to see if two sets of strings given are anagrams
# to each other. Anagrams are two sentences whereby if the characters
# are rearranged, are equal to one another

def anagram (str1, str2)

  str1_hash = str_to_hash(str1.downcase)
  str2_hash = str_to_hash(str2.downcase)

  if str1_hash == str2_hash
    return true
  else
    return false
  end

end

def str_to_hash (str)
  var = str.split("")
  empty = {}

  var.each do |key|
    if empty[key.to_sym].nil?
      empty[key.to_sym] = 1
    else
      empty[key.to_sym] = empty[key.to_sym] + 1
    end
  end
  return empty
end
