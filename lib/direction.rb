class Direction

  attr_reader :name, :x_inc, :y_inc
  attr_accessor :left_direction, :right_direction

  def initialize(name, x_incrementer, y_incrementer)
    @name = name
    @x_inc = x_incrementer
    @y_inc = y_incrementer
  end

  # def to_s
  #   "#{@name}"
  # end

end