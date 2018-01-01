require './binary_search_tree/binary_search_tree'

RSpec.describe '#binary_search_tree' do

  it 'Node can insert correctly' do
    node = Node.new(10)
    node.insert(5)
    node.insert(15)
    node.insert(17)

    expect(node.left.data).to eq(5)
    expect(node.right.data).to eq(15)
    expect(node.right.right.data).to eq(17)
  end

  it 'Contains returns node with the same data' do
    node = Node.new(10)
    node.insert(5)
    node.insert(15)
    node.insert(20)
    node.insert(0)
    node.insert(-5)
    node.insert(3)

    three = node.left.left.right
    expect(node.contains(3)).to eq(three)
  end

  it 'Contains returns nil if value not found' do
    node = Node.new(10)
    node.insert(5)
    node.insert(15)
    node.insert(20)
    node.insert(0)
    node.insert(-5)
    node.insert(3)

    expect(node.contains(9999)).to eq(nil)
  end

end