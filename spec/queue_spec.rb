require './queue/queue'

RSpec.describe '#queue' do

  it 'can add elements to a queue' do
    x = Queue.new
    expect(x.add(1)).to eq([1])
  end

  it 'can remove elements from a queue' do
    x = Queue.new
    x.add(1)
    expect(x.remove).to eq(1)
  end
  
  it 'Order of elements is maintained' do
    x = Queue.new
    x.add(1)
    x.add(2)
    x.add(3)
    expect(x.store).to eq([3,2,1])
    x.remove
    expect(x.store).to eq([3,2])
    x.remove
    expect(x.store).to eq([3])
    x.remove
    expect(x.store).to eq([])
  end
  

end