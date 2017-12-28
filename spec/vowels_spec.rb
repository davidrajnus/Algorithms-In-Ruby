require './vowels'

RSpec.describe '#vowels' do

  it 'returns the number of vowels used' do
    expect(vowels('aeiou')).to eq(5)
  end

  it 'returns the number of vowels used' do
    expect(vowels('abcdefghijklmnopqrstuvwxyz')).to eq(5)
  end

  it 'returns the number of vowels used' do
    expect(vowels('bcdfghjkl')).to eq(0)
  end

end