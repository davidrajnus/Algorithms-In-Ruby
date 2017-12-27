require './maxchar'

RSpec.describe '#maxchar' do
  it 'should return l if string is "hello"' do
    expect(maxchar("hello")).to eq "l"
  end

  it 'should return (l and o) if string is "helloo"' do
    expect(maxchar("helloo")).to eq "l and o"
  end

  it 'should return 1 if string is "apple 1231111"' do
    expect(maxchar("apple 1231111")).to eq "1"
  end
end