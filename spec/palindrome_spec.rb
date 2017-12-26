require './palindrome'

RSpec.describe '#palindrome' do
  it 'should return true if string is "abba"' do
    expect(palindrome("abba")).to eq true
  end

  it 'should return false if string is "abcdefg"' do
    expect(palindrome("abcdefg")).to eq false
  end
end