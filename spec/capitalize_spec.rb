require './capitalize'

RSpec.describe '#strcapitalize' do

  it 'capitalizes the first letter of every word in a sentence' do
    expect(strcapitalize('hi there, how is it going?')).to eq(
    'Hi There, How Is It Going?')
  end

  it 'capitalizes the first letter' do
    expect(strcapitalize('i love breakfast at bill miller bbq')).to eq(
    'I Love Breakfast At Bill Miller Bbq')
  end

end