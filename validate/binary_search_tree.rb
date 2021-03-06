 # 1) Implement the Node class to create
 # a binary search tree.  The constructor
 # should initialize values 'data', 'left',
 # and 'right'.
 # 2) Implement the 'insert' method for the
 # Node class.  Insert should accept an argument
 # 'data', then create an insert a new node
 # at the appropriate location in the tree.
 # 3) Implement the 'contains' method for the Node
 # class.  Contains should accept a 'data' argument
 # and return the Node in the tree with the same value.
 # If the value isn't in the tree return null.

class Node
  attr_accessor :data, :left, :right
  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end

  def insert(data)
    if (data < self.data && self.left)
      self.left.insert(data)
    elsif (data < self.data)
      self.left = Node.new(data)
    elsif (data > self.data && self.right)
      self.right.insert(data)
    elsif (data > self.data)
      self.right = Node.new(data)
    end
  end

  def contains(data)
    if (self.data == data)
      return self
    end

    if (self.data < data && self.right) 
      return self.right.contains(data)
    elsif (self.data > data && self.left)
      return self.left.contains(data)
    end

    return nil
  end
end
        
        
        
