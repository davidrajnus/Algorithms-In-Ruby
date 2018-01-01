 # Create a stack data structure.  The stack
 # should be a class with methods 'push', 'pop', and
 # 'peek'.  Adding an element to the stack should
 # store it until it is removed.
 # --- Examples
 #   const s = new Stack();
 #   s.push(1);
 #   s.push(2);
 #   s.pop(); // returns 2
 #   s.pop(); // returns 1

class Stack

  attr_accessor :store

  def initialize
    @store = Array.new
  end

  def add(input)
    @store.push(input)
  end

  def remove
    return @store.pop
  end

  def peek
    return @store[@store.length-1]
  end

end