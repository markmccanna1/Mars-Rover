require 'rover'
require 'direction'
require 'position'

describe "Rover" do 

  let(:north) { Direction.new("N", 0, 1) }

  let(:east) { Direction.new("E", -1, 0) }

  let(:west) { Direction.new("W", 1, 0) }

  let(:position) { Position.new( { x: 0, y: 0 } ) }

  let(:instructions) { ["L", "R", "M"] }

  let(:rover) { Rover.new({ direction: north, position: position, 
                            instructions: instructions }) }

  it 'has a current direction' do
    expect(rover.direction).to eq north
  end

  it 'has a current position' do
    expect(rover.position).to eq position
  end

  it 'has instructions' do
    expect(rover.instructions).to eq instructions
  end

  describe '#turn_left' do
    it 'sets the rovers direction to the left' do
      north.left_direction=("W")
      rover.turn_left
      expect(rover.direction).to eq("W")
    end
  end

  describe '#turn_right' do
    it 'sets the rovers direction to the right' do
      north.right_direction=("E")
      rover.turn_right
      expect(rover.direction).to eq("E")
    end
  end

  describe '#move' do
    it 'tells the rover to move forward' do
      expect(position).to receive(:move_forward)
      rover.move
    end 
  end

  describe '#explore' do

    it 'follows its directions' do
      north.left_direction=(west)
      north.right_direction=(east)
      east.left_direction=(north)
      west.right_direction=(north)
      instructions = ["L", "R", "M"]
      rover = Rover.new({ direction: north, position: position, instructions: instructions})
      rover.explore
      expect(rover.position.coordinates).to eq [0, 1]
    end

    it 'should remove its instructions when it completes them' do
      north.left_direction=(west)
      north.right_direction=(east)
      east.left_direction=(north)
      west.right_direction=(north)
      expect(rover).to receive(:wipe_instructions)
      rover.explore
    end
  end

  describe '#wipe_instructions' do
    it 'sets the instructions to an empty array' do
      rover.wipe_instructions
      expect(rover.instructions).to eq []
    end
  end

end