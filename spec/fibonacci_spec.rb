require './fibonacci'

RSpec.describe '#fibonacci' do

  it 'calculates correct fib value for 1' do
    expect(fibonacci(1)).to eq(1)
  end

  it 'calculates correct fib value for 2' do
    expect(fibonacci(2)).to eq(1)
  end

  it 'calculates correct fib value for 3' do
    expect(fibonacci(3)).to eq(2)
  end

  it 'calculates correct fib value for 4' do
    expect(fibonacci(4)).to eq(3)
  end

  it 'calculates correct fib value for 15' do
    expect(fibonacci(39)).to eq(63245986)
  end

end