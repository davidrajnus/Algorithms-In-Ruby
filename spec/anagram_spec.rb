require './anagram'

RSpec.describe '#anagram' do

  it '"hello" is an anagram of "llohe"' do
    expect(anagram('hello', 'llohe')).to be_truthy
  end

  it '"Whoa! Hi!" is an anagram of "Hi! Whoa!"' do
    expect(anagram('Whoa! Hi!', 'Hi! Whoa!')).to be_truthy
  end

  it '"One One" is not an anagram of "Two two two"' do
    expect(anagram('One One', 'Two two two')).to be_falsy
  end

  it '"One one" is not an anagram of "One one c"' do
    expect(anagram('One one', 'One one c')).to be_falsy
  end

  it '"A tree, a life, a bench" is not an anagram of "A tree, a fence, a yard"' do
    expect(
      anagram('A tree, a life, a bench', 'A tree, a fence, a yard')
    ).to be_falsy
  end

end