# Write a function that accepts a positive number N.
# The function should console log a step shape
 # with N levels using the # character and the
 # step has spaces on the right hand side!
 # --- Examples
   # steps(2)
       # '# '
       # '##'
   # steps(3)
       # '#  '
       # '## '
       # '###'
   # steps(4)
       # '#   '
       # '##  '
       # '### '
       # '####'

# Iterative Method
def steps (num)
  
  for x in 1..num
    string = ""
    for y in 1..x
      string << "#"
    end
    for z in x...num
       string << " "
    end
    puts string
  end

end

# Recursive Method
# def steps (num, row = 0, str = "")
#   if (num == row)
#     return;
#   end

#   if (num == str.length)
#     puts str
#     return steps(num, row + 1);
#   end

#   if (str.length <= row)
#     str += "#"
#   else
#     str += " "
#   end

#   steps(num, row, str)
# end

steps(4)

