require 'grid_factory'


describe "GridFactory" do 

  describe '#build_grid' do

    let(:directions) { double("directions") }
    let(:grid) { GridFactory.build("55", directions) }

    it 'turns a string into an array of the grid size' do
      expect(grid.size).to eq [5, 5]
    end
  end

  
end