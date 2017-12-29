 # 1) Implement the 'weave' function.  Weave
 # receives two queues as arguments and combines the
 # contents of each into a new, third queue.
 # The third queue should contain the *alterating* content
 # of the two queues.  The function should handle
 # queues of different lengths without inserting
 # 'undefined' into the new one.
 # *Do not* access the array inside of any queue, only
 # use the 'add', 'remove', and 'peek' functions.
 # --- Example
 #    const queueOne = new Queue();
 #    queueOne.add(1);
 #    queueOne.add(2);
 #    const queueTwo = new Queue();
 #    queueTwo.add('Hi');
 #    queueTwo.add('There');
 #    const q = weave(queueOne, queueTwo);
 #    q.remove() // 1
 #    q.remove() // 'Hi'
 #    q.remove() // 2
 #    q.remove() // 'There'

require './queue'

def weave(sourceOne, sourceTwo)
  q = Queue.new

  while (sourceOne.peek || sourceTwo.peek)
    if sourceOne.peek
      q.add(sourceOne.remove)
    end

    if sourceTwo.peek
      q.add(sourceTwo.remove)
    end
  end

  return q

end

# queueOne = Queue.new
# queueOne.add(1)
# queueOne.add(2)
# queueTwo = Queue.new
# queueTwo.add('Hi')
# queueTwo.add('There')
# q = weave(queueOne, queueTwo)
# puts q.remove() # 1
# puts q.remove() # 'Hi'
# puts q.remove() # 2
# puts q.remove() # 'There'