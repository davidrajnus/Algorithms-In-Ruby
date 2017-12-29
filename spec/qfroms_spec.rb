require './qfroms'

RSpec.describe '#queue' do

  it 'Order of elements is maintained' do
    s = Queue.new
    s.add(1)
    s.add(2)
    s.add(3)
    expect(s.remove()).to eq(1)
    expect(s.remove()).to eq(2)
    expect(s.remove()).to eq(3)
  end
  
  it 'peek returns, but does not remove, the first value' do
    s = Queue.new
    s.add(1)
    s.add(2)
    expect(s.peek).to eq(1)
    expect(s.peek).to eq(1)
    expect(s.remove).to eq(1)
    expect(s.remove).to eq(2)
  end

end