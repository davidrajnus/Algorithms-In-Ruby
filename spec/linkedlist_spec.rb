require './linkedlist/linkedlist.rb'

RSpec.describe '#linkedlist' do

  context "A node" do
    it 'has properties "data" and "next"' do
      node = Node.new('a', 'b')
      expect(node.data).to eq('a')
      expect(node.next).to eq('b')
    end
  end

  context "Insert First" do
    it 'appends a node to the start of the list' do
      l = LinkedList.new
      l.insertFirst(1)
      expect(l.head.data).to eq(1)
      l.insertFirst(2)
      expect(l.head.data).to eq(2)
    end
  end

  context "Size" do
    it 'returns the number of items in the linked list' do
      l = LinkedList.new
      expect(l.size).to eq(0)
      l.insertFirst(1)
      l.insertFirst(1)
      l.insertFirst(1)
      l.insertFirst(1)
      expect(l.size).to eq(4)
    end
  end

  context "GetFirst" do
    it 'returns the first element' do
      l = LinkedList.new
      l.insertFirst(1)
      expect(l.getFirst.data).to eq(1)
      l.insertFirst(2)
      expect(l.getFirst.data).to eq(2)
    end
  end

  context "GetLast" do
    # it 'returns the last element' do
    #   l = LinkedList.new
    #   l.insertFirst(2)
    #   expect(l.getLast).to eq({ data: 2, next: nil })
    #   l.insertFirst(1)
    #   expect(l.getLast).to eq({ data: 2, next: nil })
    # end
  end

  context "Clear" do
    it 'empties out the list' do
      l = LinkedList.new
      expect(l.size).to eq(0)
      l.insertFirst(1)
      l.insertFirst(1)
      l.insertFirst(1)
      l.insertFirst(1)
      expect(l.size).to eq(4)
      l.clear
      expect(l.size).to eq(0)
    end
  end

  context "RemoveFirst" do
    it 'removes the first node when the list has a size of one' do
      l = LinkedList.new
      l.insertFirst('a')
      l.removeFirst
      expect(l.size).to eq(0)
      expect(l.getFirst).to eq(nil)
    end

    it 'removes the first node when the list has a size of three' do
      l = LinkedList.new
      l.insertFirst('c')
      l.insertFirst('b')
      l.insertFirst('a')
      l.removeFirst
      expect(l.size).to eq(2)
      expect(l.getFirst.data).to eq('b')
      l.removeFirst
      expect(l.size).to eq(1)
      expect(l.getFirst.data).to eq('c')
    end
  end

  context "RemoveLast" do
    # it 'RemoveLast removes the last node when list is empty' do
    #   l = LinkedList.new
    #   expect(l.removeLast).to_not raise_error(NoMethodError)
    # end

    it 'RemoveLast removes the last node when list is length 1' do
      l = LinkedList.new
      l.insertFirst('a')
      l.removeLast
      expect(l.head).to eq(nil)
    end

    it 'RemoveLast removes the last node when list is length 2' do
      l = LinkedList.new
      l.insertFirst('b')
      l.insertFirst('a')
      l.removeLast
      expect(l.size).to eq(1)
      expect(l.head.data).to eq('a')
    end

    it 'RemoveLast removes the last node when list is length 3' do
      l = LinkedList.new
      l.insertFirst('c')
      l.insertFirst('b')
      l.insertFirst('a')
      l.removeLast
      expect(l.size).to eq(2)
      expect(l.getLast.data).to eq('b')
    end
  end

  context "InsertLast" do
    it 'adds to the end of the list' do
      l = LinkedList.new
      l.insertFirst('a')
      l.insertLast('b')
      expect(l.size).to eq(2)
      expect(l.getLast.data).to eq('b')
    end
  end

  context "GetAt" do
    it 'returns the node at given index' do
      l = LinkedList.new
      expect(l.getAt(10)).to eq(nil)

      l.insertLast(1)
      l.insertLast(2)
      l.insertLast(3)
      l.insertLast(4)

      expect(l.getAt(0).data).to eq(1)
      expect(l.getAt(1).data).to eq(2)
      expect(l.getAt(2).data).to eq(3)
      expect(l.getAt(3).data).to eq(4)
    end
  end

  context "RemoveAt" do
    # it 'removeAt doesnt crash on an empty list' do
    #   l = LinkedList.new
    #   expect(
    #         l.removeAt(0)
    #         l.removeAt(1)
    #         l.removeAt(2)
    #       ).not.toThrow()
    # end

    # it 'removeAt doesnt crash on an index out of bounds' do
    #   l = LinkedList.new
    #   expect(
    #       l.insertFirst('a')
    #       l.removeAt(1)
    #     ).not.toThrow()
    # end

    it 'removeAt deletes the first node' do
      l = LinkedList.new
      l.insertLast(1)
      l.insertLast(2)
      l.insertLast(3)
      l.insertLast(4)
      expect(l.getAt(0).data).to eq(1)
      l.removeAt(0)
      expect(l.getAt(0).data).to eq(2)
    end

    it 'removeAt deletes the node at the given index' do
      l = LinkedList.new
      l.insertLast(1)
      l.insertLast(2)
      l.insertLast(3)
      l.insertLast(4)
      expect(l.getAt(1).data).to eq(2)
      l.removeAt(1)
      expect(l.getAt(1).data).to eq(3)
    end

    it 'removeAt works on the last node' do
      l = LinkedList.new
      l.insertLast(1)
      l.insertLast(2)
      l.insertLast(3)
      l.insertLast(4)
      expect(l.getAt(3).data).to eq(4)
      l.removeAt(3);
      expect(l.getAt(3)).to eq(nil)
    end
  end

  context "InsertAt" do
    it 'inserts a new node with data at the 0 index when the list is empty' do
      l = LinkedList.new
      l.insertAt('hi', 0)
      expect(l.getFirst().data).to eq('hi')
    end

    it 'inserts a new node with data at the 0 index when the list has elements' do
      l = LinkedList.new
      l.insertLast('a')
      l.insertLast('b')
      l.insertLast('c')
      l.insertAt('hi', 0)
      expect(l.getAt(0).data).to eq('hi')
      expect(l.getAt(1).data).to eq('a')
      expect(l.getAt(2).data).to eq('b')
      expect(l.getAt(3).data).to eq('c')
    end

    it 'inserts a new node with data at a middle index' do
      l = LinkedList.new
      l.insertLast('a')
      l.insertLast('b')
      l.insertLast('c')
      l.insertLast('d')
      l.insertAt('hi', 2)
      expect(l.getAt(0).data).to eq('a')
      expect(l.getAt(1).data).to eq('b')
      expect(l.getAt(2).data).to eq('hi')
      expect(l.getAt(3).data).to eq('c')
      expect(l.getAt(4).data).to eq('d')
    end

    it 'inserts a new node with data at a last index' do
      l = LinkedList.new
      l.insertLast('a')
      l.insertLast('b')
      l.insertAt('hi', 2)
      expect(l.getAt(0).data).to eq('a')
      expect(l.getAt(1).data).to eq('b')
      expect(l.getAt(2).data).to eq('hi')
    end

    it 'insert a new node when index is out of bounds' do
      l = LinkedList.new
      l.insertLast('a')
      l.insertLast('b')
      l.insertAt('hi', 30)
      expect(l.getAt(0).data).to eq('a')
      expect(l.getAt(1).data).to eq('b')
      expect(l.getAt(2).data).to eq('hi')
    end

  end

  context "ForEach" do
    it 'applies a transform to each node' do
      l = LinkedList.new
      
      l.insertLast(1)
      l.insertLast(2)
      l.insertLast(3)
      l.insertLast(4)

      l.forEach { |node| node.data += 10 }

      expect(l.getAt(0).data).to eq(11)
      expect(l.getAt(1).data).to eq(12)
      expect(l.getAt(2).data).to eq(13)
      expect(l.getAt(3).data).to eq(14)
    end
  end



end