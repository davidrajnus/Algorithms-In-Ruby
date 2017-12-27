require './chunk'

RSpec.describe '#chunk' do
  # it 'function chunk exists' do
  #   expect(typeof chunk([1,2],2)).to eq('function')
  # end

  it 'chunk divides an array of 10 elements with chunk size 2' do
    arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    chunked = chunk(arr, 2)

    expect(chunked).to eq([[1, 2], [3, 4], [5, 6], [7, 8], [9, 10]])
  end

  it 'chunk divides an array of 3 elements with chunk size 1' do
    arr = [1, 2, 3]
    chunked = chunk(arr, 1)

    expect(chunked).to eq([[1], [2], [3]])
  end

  it 'chunk divides an array of 5 elements with chunk size 3' do
    arr = [1, 2, 3, 4, 5]
    chunked = chunk(arr, 3)

    expect(chunked).to eq([[1, 2, 3], [4, 5]])
  end

  it 'chunk divides an array of 13 elements with chunk size 5' do
    arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
    chunked = chunk(arr, 5)

    expect(chunked).to eq([[1, 2, 3, 4, 5], [6, 7, 8, 9, 10], [11, 12, 13]])
  end
end