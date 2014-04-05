require 'direction'
require 'position'

describe 'Direction' do

  let(:direction) { direction = Direction.new("N", 0, 1) }

  it 'can have a name' do
    expect(direction.name).to eq "N"
  end

  it 'has a x incrementer' do
    expect(direction.x_inc).to eq 0
  end

  it 'has a y incrementer' do
    expect(direction.y_inc).to eq 1
  end

end