require './midpoint/midpoint'

RSpec.describe '#midpoint' do

  context "Midpoint returns the middle node of an odd numbered list" do
    it 'when the list has 3 elements' do
      l = LinkedList.new
      l.insertLast('a')
      l.insertLast('b')
      l.insertLast('c')
      expect(midpoint(l).data).to eq('b')
    end

    it 'when the list has 5 elements' do
      l = LinkedList.new
      l.insertLast('a')
      l.insertLast('b')
      l.insertLast('c')
      l.insertLast('d')
      l.insertLast('e')
      expect(midpoint(l).data).to eq('c')
    end
  end

  context "Midpoint returns the middle node of an even numbered list" do
    it 'when the list has 2 elements' do
      l = LinkedList.new
      l.insertLast('a')
      l.insertLast('b')
      expect(midpoint(l).data).to eq('a')
    end

    it 'when the list has 4 elements' do
      l = LinkedList.new
      l.insertLast('a')
      l.insertLast('b')
      l.insertLast('c')
      l.insertLast('d')
      expect(midpoint(l).data).to eq('b')
    end
  end

end