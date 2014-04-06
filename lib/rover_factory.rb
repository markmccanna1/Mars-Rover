require_relative 'rover'

module RoverFactory

  extend self

  def build(direction, position, instructions)
    Rover.new({ direction: direction, position: position, 
              instructions: instructions })
  end

  private 
    def instructions_conversion(instructions)
      instructions.split('')
    end


end