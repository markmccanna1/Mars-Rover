require 'grid'

describe 'Grid' do 

  let(:north) { Direction.new("N", 0, 1) }
  let(:south) { Direction.new("S", 0, -1) }

  let(:grid) { Grid.new( {size: [5, 5], directions: [north, south] } ) }

  describe '#size' do
    it 'has a size' do
      expect( grid.size ).to eq [5, 5]
    end
  end

  describe '#find_direction' do
    it 'finds a direction' do
      expect(grid.find_direction("N")).to eq north
    end
  end
  
end