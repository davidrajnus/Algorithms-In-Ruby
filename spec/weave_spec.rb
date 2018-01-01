require './queue/queue'
require './weave/weave'

RSpec.describe '#weave' do

  it 'peek returns, but does not remove, the first value' do
    q = Queue.new
    q.add(1)
    q.add(2)
    expect(q.peek()).to eq(1)
    expect(q.peek()).to eq(1)
    expect(q.remove()).to eq(1)
    expect(q.remove()).to eq(2)
  end

  it 'weave can combine two queues' do
    one = Queue.new
    one.add(1)
    one.add(2)
    one.add(3)
    one.add(4)
    two = Queue.new
    two.add('one')
    two.add('two')
    two.add('three')
    two.add('four')

    result = weave(one, two);
    expect(result.remove()).to eq(1)
    expect(result.remove()).to eq('one')
    expect(result.remove()).to eq(2)
    expect(result.remove()).to eq('two')
    expect(result.remove()).to eq(3)
    expect(result.remove()).to eq('three')
    expect(result.remove()).to eq(4)
    expect(result.remove()).to eq('four')
  end
  
end