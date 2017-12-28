#  Write a function that accepts a positive number N.
#  The function should console log a pyramid shape
#  with N levels using the # character.  Make sure the
#  pyramid has spaces on both the left *and* right hand sides
#  --- Examples
#    pyramid(1)
#        '#'
#    pyramid(2)
#        ' # '
#        '###'
#    pyramid(3)
#        '  #  '
#        ' ### '
#        '#####'

def pyramid (int)

  for row in 0...int
    ((int-1)*(-1)).upto(int-1) { |i|
      if i.abs > (row) 
        print " "
      else
        print "#"
      end
    }
    puts
  end
end

# pyramid (4)

# Alternate Pyramid function
# def pyramid (int)
#   midpoint = ((2*int-1)/2).floor

#   for row in 0...int
#     level = ""

#     for column in 0...(2*int-1)
#       if ((midpoint-row) <= column) && ((midpoint + row) >= column)
#         level += "#"
#       else
#         level += " "
#       end
#     end
#     puts level
#   end
# end

# pyramid (4)

#Recursive Pyramid Function
# def pyramid (int, row = 0, column = 0, level = "")
#   midpoint = ((2*int-1)/2).floor

#   if row == int
#     return
#   end

#   if (level.length == (2*int-1))
#     puts level
#     return pyramid(int, row+1)
#   end

#   if ((midpoint-row) <= column) && ((midpoint + row) >= column)
#     level += "#"
#   else
#     level += " "
#   end

#   pyramid(int, row, column+1, level)
# end

# pyramid (4)
