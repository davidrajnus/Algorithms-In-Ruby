 # Implement classes Node and Linked Lists
 # See 'directions' document

class Node
  attr_accessor :data, :next

  def initialize(data, next_int = nil)
    @data = data
    @next = next_int
  end
end

class LinkedList
  attr_accessor :head
  
  def initialize
    @head = nil
  end

  def insertFirst(data)
    self.head = Node.new(data, self.head)
  end

  def size
    counter = 0
    list = self.head

    while list
      counter += 1
      list = list.next
    end

    return counter
  end

  def getFirst
    return self.head
  end

  def getLast
    if !self.head
      return nil
    end

    node = self.head

    while node
      if !node.next
        #return in hash, without object ID
        return node
      end

    node = node.next
    end
  end

  def clear
    self.head = nil
  end

  def removeFirst
    if !(self.head)
      return
    end

    self.head = self.head.next
  end

  def removeLast
    if !(self.head)
      return
    end

    if !(self.head.next)
      self.head = nil
      return
    end

    previous = self.head
    node = self.head.next
    while (node.next)
      previous = node
      node = node.next
    end

    previous.next = nil
  end

  def insertLast(data)
    last = self.getLast

    if last
      # There are nodes in the list
      last.next = Node.new(data)
    else
      # List is empty
      self.head = Node.new(data)
    end
  end

  def getAt(index)
    counter = 0
    node = self.head
    
    while node
      if counter == index
        return node
      end

      counter += 1
      node = node.next
    end
    return nil
  end

  def removeAt(index)
    if !(self.head)
      return nil
    end

    if (index == 0)
      self.head = self.head.next
      return
    end

    previous = self.getAt(index-1)
    if (!previous || !(previous.next))
      return
    end

    previous.next = previous.next.next
  end

  def insertAt(data, index)
    if !(self.head)
      self.head = Node.new(data)
      return
    end

    if (index == 0)
      self.head = Node.new(data, self.head)
      return
    end

    previous = self.getAt(index - 1) || self.getLast
    node = Node.new(data, previous.next)
    previous.next = node
  end

  def forEach
    node = self.head
    counter = 0

    while node
      yield(node)
      node = node.next
      counter += 1
    end
  end

end

# nodeOne = Node.new(5)
# list = LinkedList.new
# list.head = nodeOne
# list.insertFirst(15)
# list

