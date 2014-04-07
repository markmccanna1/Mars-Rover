class Position

  attr_reader :x, :y

  def initialize(args)
    @x = args.fetch(:x)
    @y = args.fetch(:y)
  end

  def coordinates
    [ x, y ]
  end

  def move_forward(direction)
    @x += direction.x_inc
    @y += direction.y_inc
  end

end