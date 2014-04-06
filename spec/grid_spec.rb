require 'grid'

describe 'Grid' do 

  let(:grid) { Grid.new( {size: [5, 5] } ) }

  describe '#size' do
    it 'has a size' do
      expect( grid.size ).to eq [5, 5]
    end
  end
  
end