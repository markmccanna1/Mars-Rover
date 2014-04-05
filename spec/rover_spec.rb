require 'rover'
require 'direction'
require 'position'

describe "Rover" do 

  let(:north) { Direction.new("N", 0, 1) }

  let(:east) { Direction.new("E", -1, 0) }

  let(:west) { Direction.new("W", 1, 0) }

  let(:position) { Position.new( { x: 0, y: 0 } ) }

  let(:rover) { Rover.new({ direction: north, position: position, 
                            instructions: "LRM" }) }

  it 'has a current direction' do
    expect(rover.direction).to eq north
  end

  it 'has a current position' do
    expect(rover.position).to eq position
  end

  it 'has instructions' do
    expect(rover.instructions).to eq "LRM".split('')
  end

  describe '#turn_left' do
    it 'sets its direction to the left' do
      north.left_direction=("W")
      rover.turn_left
      expect(rover.direction).to eq("W")
    end
  end

  describe '#turn_right' do
    it 'sets its direction to the right' do
      north.right_direction=("E")
      rover.turn_right
      expect(rover.direction).to eq("E")
    end
  end

  # describe '#move' do
  #   it 'tells the position to change its position' do
  #     expect(position).to receive(:move_forward)
  #     rover.move
  #   end 
  # end

  describe '#explore' do

    it 'follows its directions' do
      # puts "rover position"
      # p rover.position
      # puts "rover.move"
      # rover.move
      # p rover.position
      rover = Rover.new({ direction: north, position: position, instructions: "LRM"})
      north.left_direction=(west)
      north.right_direction=(east)
      # p rover.direction
      rover.explore
    #   # puts "spec direction"
    #   # p rover
      # rover.explore
    #   # puts "hello"
    #   # p rover.direction.x_inc
    #   expect(rover.position.coordinates).to eq [0, 1]
    end

    # it 'should delete its instructions when it completes them' do
    #   rover.explore
    #   expect(rover.instructions).to eq nil
    # end
  end

end