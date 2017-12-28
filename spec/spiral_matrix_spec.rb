require './spiral_matrix'

RSpec.describe '#spiral' do
  it 'should produce a 2x2 array' do
    m = spiral(2)
    expect(m.length).to eq(2)
    expect(m[0]).to eq([1, 2])
    expect(m[1]).to eq([4, 3])
  end

  it 'matrix produces a 3x3 array' do
    m = spiral(3)
    expect(m.length).to eq(3)
    expect(m[0]).to eq([1, 2, 3])
    expect(m[1]).to eq([8, 9, 4])
    expect(m[2]).to eq([7, 6, 5])
  end

  it 'matrix produces a 4x4 array' do
    m = spiral(4)
    expect(m.length).to eq(4)
    expect(m[0]).to eq([1, 2, 3, 4])
    expect(m[1]).to eq([12, 13, 14, 5])
    expect(m[2]).to eq([11, 16, 15, 6])
    expect(m[3]).to eq([10, 9, 8, 7])
  end

end