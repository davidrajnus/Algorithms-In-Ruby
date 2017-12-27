require './reverseint'

RSpec.describe '#reverseint' do
  it 'should return integer in reverse' do
    expect(reverseint(15)).to eql (51)
  end

  it 'should return integer in reverse' do
    expect(reverseint(981)).to eq 189
    expect(reverseint(500)).to eq 5
    expect(reverseint(-15)).to eq -51
    expect(reverseint(-90)).to eq -9
  end

end