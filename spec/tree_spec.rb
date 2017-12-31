require './tree/tree'

RSpec.describe '#node' do

  it 'Node has a data and children properties' do
    n = Node.new('a')
    expect(n.data).to eq('a')
    expect(n.children.length).to eq(0)
  end

  it 'Node can add children' do
    n = Node.new('a')
    n.add('b')
    expect(n.children.length).to eq(1)
    expect(n.children[0].children).to eq([])
  end

  it 'Node can remove children' do
    n = Node.new('a')
    n.add('b')
    expect(n.children.length).to eq(1)
    n.remove('b')
    expect(n.children.length).to eq(0)
  end
end

RSpec.describe '#tree' do

  it 'Can traverse bf' do
    letters = []
    t = Tree.new
    t.root = Node.new('a')
    t.root.add('b')
    t.root.add('c')
    t.root.children[0].add('d')

    t.traverseBF { |node| letters.push(node.data) }

    expect(letters).to eq(['a', 'b', 'c', 'd'])
  end

  it 'Can traverse df' do
    letters = []
    t = Tree.new
    t.root = Node.new('a')
    t.root.add('b')
    t.root.add('d')
    t.root.children[0].add('c')

    t.traverseDF { |node| letters.push(node.data) }

    expect(letters).to eq(['a', 'b', 'c', 'd'])
  end

  
end