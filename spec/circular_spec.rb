require './circular/circular.rb'

RSpec.describe '#circular' do

  it 'circular detects circular linked lists' do
    l = LinkedList.new
    a = Node.new('a')
    b = Node.new('b')
    c = Node.new('c')
    
    l.head = a
    a.next = b
    b.next = c
    c.next = b

    expect(circular(l)).to eq(true)
  end

  it 'circular detects circular linked lists linked at the head' do
    l = LinkedList.new
    a = Node.new('a')
    b = Node.new('b')
    c = Node.new('c')
    
    l.head = a
    a.next = b
    b.next = c
    c.next = a

    expect(circular(l)).to eq(true)
  end

  it 'circular detects non-circular linked lists' do
    l = LinkedList.new
    a = Node.new('a')
    b = Node.new('b')
    c = Node.new('c')
    
    l.head = a
    a.next = b
    b.next = c
    c.next = nil

    expect(circular(l)).to eq(false)
  end
end