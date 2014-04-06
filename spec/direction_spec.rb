require 'direction'
require 'position'

describe 'Direction' do

  let(:north) { direction = Direction.new("N", 0, 1) }

  let(:east) { direction = Direction.new("E", -1, 0) }

  let(:west) { direction = Direction.new("W", 1, 0) }

  it 'can have a name' do
    expect(north.name).to eq "N"
  end

  it 'has a x incrementer' do
    expect(north.x_inc).to eq 0
  end

  it 'has a y incrementer' do
    expect(north.y_inc).to eq 1
  end

  it 'has a direction to its left' do
    north.left_direction=(west)
    expect(north.left_direction).to eq west
  end

  it 'has a direction to its right' do
    north.right_direction=(east)
    expect(north.right_direction).to eq east
  end

end