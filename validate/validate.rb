 # Given a node, validate the binary search tree,
 # ensuring that every node's left hand child is
 # less than the parent node's value, and that
 # every node's right hand child is greater than
 # the parent

def validate(node, min = nil, max = nil)
  if (max != nil && node.data > max) 
    return false
  end

  if (min != nil && node.data < min)
    return false
  end

  if (node.left && !(validate(node.left, min, node.data)))
    return false
  end

  if (node.right && !(validate(node.right, node.data, max)))
    return false
  end

  return true
end