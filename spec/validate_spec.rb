require './validate/binary_search_tree'
require './validate/validate'

RSpec.describe '#validate' do

  it 'Validate recognizes a valid binary search tree' do
    n = Node.new(10)
    n.insert(5)
    n.insert(15)
    n.insert(0)
    n.insert(20)

  expect(validate(n)).to eq(true)
  end

  it 'Validate recognizes an invalid binary search tree' do
    n = Node.new(10)
    n.insert(5)
    n.insert(15)
    n.insert(0)
    n.insert(20)
    n.left.left.right = Node.new(999)

    expect(validate(n)).to eq(false)
  end
end