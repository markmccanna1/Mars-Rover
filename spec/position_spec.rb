require 'position'
require 'direction'


describe 'Position' do 

  let(:direction) { Direction.new("N", 0, 1) }
  let(:position) { Position.new( {x: 0, y: 0 } ) }

  it 'has an x coord' do
    expect(position.y).to eq 0
  end

  it 'has a y coord' do
    expect(position.x).to eq 0
  end

  describe '#move_forward' do
    it 'increments a position by the directions incrementers' do
      position.move_forward(direction)
      expect(position.coordinates).to eq [0, 1]
    end
  end


  
end