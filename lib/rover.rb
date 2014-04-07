class Rover

  attr_reader :direction, :position
  attr_accessor :instructions

  def initialize(args)
    @direction = args.fetch(:direction)
    @position = args.fetch(:position)
    @instructions = args.fetch(:instructions)
  end

  def turn_left
    @direction = direction.left_direction
  end

  def turn_right
    @direction = direction.right_direction
  end

  def move
    position.move_forward(direction)
  end

  def explore
    instructions.each do |instruction|
      case instruction
      when "L"
        turn_left
      when "R"
        turn_right
      when "M"
        move
      end
    end
    wipe_instructions
  end

  def wipe_instructions
    @instructions = []
  end

  def to_s
    "Direction: #{direction.name}\nPosition: X: #{position.x}, Y: #{position.y}"
  end

end

