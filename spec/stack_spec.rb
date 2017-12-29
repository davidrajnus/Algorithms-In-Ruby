require './stack'

RSpec.describe '#stack' do

  it 'stack can add and remove items' do
    s = Stack.new
    s.add(1)
    expect(s.remove()).to eq(1)
    s.add(2)
    expect(s.remove()).to eq(2)
  end

  it 'stack can follows first in, last out' do
    s = Stack.new
    s.add(1)
    s.add(2)
    s.add(3)
    expect(s.remove()).to eq(3)
    expect(s.remove()).to eq(2)
    expect(s.remove()).to eq(1)
  end
  
  it 'peek returns the first element but doesnt pop it' do
    s = Stack.new
    s.add(1)
    s.add(2)
    s.add(3)
    expect(s.peek).to eq(3)
    expect(s.remove).to eq(3)
    expect(s.peek).to eq(2)
    expect(s.remove).to eq(2)
    expect(s.peek).to eq(1)
    expect(s.remove).to eq(1)
  end
  

end