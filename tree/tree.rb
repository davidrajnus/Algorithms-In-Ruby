 # 1) Create a node class.  The constructor
 # should accept an argument that gets assigned
 # to the data property and initialize an
 # empty array for storing children. The node
 # class should have methods 'add' and 'remove'.
 # 2) Create a tree class. The tree constructor
 # should initialize a 'root' property to null.
 # 3) Implement 'traverseBF'(breadth first) and 'traverseDF' (depth first )
 # on the tree class.  Each method should accept a
 # function that gets called with each element in the tree

class Node
  attr_accessor :data, :children
  
  def initialize(data)
    @data = data
    @children = []
  end

  def add(data)
    self.children.push(Node.new(data))
  end

  def remove(data)
    self.children = self.children.select { |num| num.data != data}
  end

end

class Tree
  attr_accessor :root#, :data, :children
  def initialize
    @root = nil
  end

  def traverseBF
    arr = [self.root]

    while (arr.length > 0)
      node = arr.shift
      node.children.each do |child|
        arr.push(child)
      end
      yield(node)
    end
  end

  def traverseDF
    arr = [self.root]

    while (arr.length > 0)
      temp_arr = []
      node = arr.shift
      node.children.each do |child|
        temp_arr.push(child)
      end
      temp_arr.reverse.each do |child|
        arr.unshift(child)
      end
      yield(node)
    end
  end

end

