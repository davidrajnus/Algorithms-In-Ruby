 # Create a queue data structure.  The queue
 # should be a class with methods 'add' and 'remove'.
 # Adding to the queue should store an element until
 # it is removed
 # --- Examples
 #     const q = new Queue();
 #     q.add(1);
 #     q.remove(); // returns 1;

class Queue

  attr_accessor :store

  def initialize
    @store = Array.new
  end

  def add(input)
    @store.unshift(input)
  end

  def remove
    @store.pop
    return @store
  end

end

# q = Queue.new

# puts q.class
# puts q.add(1)
# puts q.store
# q.remove
# puts q.store.class

