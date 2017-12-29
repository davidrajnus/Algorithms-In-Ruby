 # Implement a Queue datastructure using two stacks.
 # Without creating an array inside of the 'Queue' class.
 # Queue should implement the methods 'add', 'remove', and 'peek'.
 # --- Examples
 #     const q = new Queue();
 #     q.add(1);
 #     q.add(2);
 #     q.peek();  // returns 1
 #     q.remove(); // returns 1
 #     q.remove(); // returns 2

 require './stack'

class Queue
  # attr_accessor :stackOne, :stackTwo

  def initialize
    @stackOne = Stack.new
    @stackTwo = Stack.new
  end

  def add (record)
    @stackOne.add(record)
  end

  def remove
    while @stackOne.peek
      @stackTwo.add(@stackOne.remove)
    end

    record = @stackTwo.remove

    while @stackTwo.peek
      @stackOne.add(@stackTwo.remove)
    end

    return record
  end


  def peek
  while @stackOne.peek
    @stackTwo.add(@stackOne.remove)
  end

  record = @stackTwo.peek

  while @stackTwo.peek
    @stackOne.add(@stackTwo.remove)
  end

  return record  

  end

end

     q = Queue.new
     q.add(1)
     q.add(2)
     puts q.peek  #// returns 1
     puts q.remove #// returns 1
     puts q.remove #// returns 2