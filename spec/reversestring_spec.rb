require './reversestring'

RSpec.describe '#reverse' do
  it 'should reverse a given string' do
    expect(reverse("hello")).to eq 'olleh'
  end
end