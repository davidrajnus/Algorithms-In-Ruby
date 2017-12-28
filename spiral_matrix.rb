 # Write a function that accepts an integer N
 # and returns a NxN spiral matrix.
 # --- Examples
 #  matrix(4)
 #     [[1,   2,  3, 4],
 #     [12, 13, 14, 5],
 #     [11, 16, 15, 6],
 #     [10,  9,  8, 7]]

# def spiral (int)
#   row = 0
#   column = -1
#   change = int
#   arr = Array.new(int) { Array.new(int) }
#   count = 1

#   while count <= (int*int)
#   # Moving right
#     for x in 0...change
#       column += 1
#       arr[row][column] = count
#       count += 1
#     end
#     change -= 1

#   # Moving down
#     for x in 0...change
#       row += 1
#       arr[row][column] = count
#       count += 1
#     end

#   # Moving left
#     for x in 0...change
#       column -= 1
#       arr[row][column] = count
#       count += 1
#     end
#     change -= 1

#   # Moving up
#     for x in 0...change
#       row -= 1
#       arr[row][column] = count
#       count += 1
#     end
#   end
#   arr.each do |row|
#     print row
#     puts
#   end
# end

# spiral(4)

# Alternative Spiral Method
def spiral (int)
  results = Array.new(int) { Array.new(int) }

  counter = 1
  startColumn = 0
  endColumn = int - 1
  startRow = 0
  endRow = int - 1

  while (startColumn <= endColumn && startRow <= endRow) do
    # Top row
    for i in startColumn..endColumn do
      results[startRow][i] = counter
      counter += 1
    end
    startRow += 1

    # Right column
    for i in startRow..endRow do
      results[i][endColumn] = counter
      counter += 1
    end
    endColumn -= 1

    # Bottom row
    for i in (endColumn).downto(startColumn) do
      results[endRow][i] = counter
      counter += 1
    end
    endRow -= 1

    # Left column
    for i in (endRow).downto(startRow) do
      results[i][startColumn] = counter
      counter += 1
    end
    startColumn += 1
  end

  return results;
end
