class Rover

  attr_reader :direction, :position, :instructions
  attr_accessor :instructions

  def initialize(args)
    @direction = args.fetch(:direction)
    @position = args.fetch(:position)
    @instructions = args.fetch(:instructions).split('')
  end

  def turn_left
    @direction = direction.left_direction
  end

  def turn_right
    @direction = direction.right_direction
  end

  def move
    # puts "move direction"
    # 
    # p direction
    puts "move self"
    p self
    position.move_forward(direction)
  end

  def explore
    # puts "explore direction"
    puts "explore self"
    p self
    # dire = direction
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
  end

  # def to_s
  #   "Direction: #{direction.inspect}\nPostion: #{position.inspect}"
  # end


end

