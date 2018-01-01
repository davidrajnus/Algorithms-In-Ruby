 # Given the root node of a tree, return
 # an array where each element is the width
 # of the tree at each level.
 # --- Example
 # Given:
 #     0
 #   / |  \
 # 1   2   3
 # |       |
 # 4       5
 # Answer: [1, 3, 2]

require "./levelwidth/tree"

def levelWidth(root)
  arr = [root, 'e']
  counters = [0]

  while (arr.length > 1)
    node = arr.shift

    if (node == 'e')
      counters.push(0)
      arr.push('e')
    else
      node.children.each do |child|
        arr.push(child)
      end
      counters[(counters.length) - 1] += 1
    end
  end

  return counters
end
