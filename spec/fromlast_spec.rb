require './fromlast/fromlast.rb'

RSpec.describe '#fromlast' do

  it 'fromLast returns the node n elements from the end' do
    l = LinkedList.new
    l.insertLast('a')
    l.insertLast('b')
    l.insertLast('c')
    l.insertLast('d')
    l.insertLast('e')

    expect(fromLast(l, 3).data).to eq('b')

  end
end