require 'grid'
require 'direction'


describe 'Grid' do 

  let(:east) { Direction.new("E", 0, 0) }
  let(:west) { Direction.new("W", 0, 0) }

  let(:directions) { [east, west] }

  let(:grid) { Grid.new({size: "55", directions: directions}) }

  describe '#find_direction' do
    it 'finds a direction by its name' do
      expect( grid.find_direction("E") ).to eq east
    end
  end
  
end