require './levelwidth/tree'
require './levelwidth/levelwidth'

RSpec.describe '#levelwidth' do

  it 'levelWidth returns number of nodes at widest point' do
    root = Node.new(0)
    root.add(1)
    root.add(2)
    root.add(3)
    root.children[0].add(4)
    root.children[2].add(5)

    expect(levelWidth(root)).to eq([1, 3, 2])
  end

  it 'levelWidth returns number of nodes at widest point' do
    root = Node.new(0)
    root.add(1)
    root.children[0].add(2)
    root.children[0].add(3)
    root.children[0].children[0].add(4)

    expect(levelWidth(root)).to eq([1, 1, 2, 1])
  end

end