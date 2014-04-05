require_relative 'direction'
require_relative 'input_reader'
require_relative 'grid_factory'
require_relative 'rover'
require_relative 'position_factory'
require_relative 'rover_factory'

north = Direction.new("N", 0, 1)
south = Direction.new("S", 0, -1)
east = Direction.new("E", -1, 0)
west = Direction.new("W", 1, 0)

north.left_direction=(west)
north.right_direction=(east)

south.left_direction=(east)
south.right_direction=(west)

west.left_direction=(south)
west.right_direction=(north)

east.left_direction=(north)
east.right_direction=(south)

directions = [north, south, east, west]

file = File.open('../input')

grid_size = file.readline.chomp!

grid = GridFactory.build(grid_size, directions)


rovers = []
until file.eof?
  
  initial_position = file.readline.chomp!


  # is it better to pass the entire line in and have
  # the factory just use what it wants?
  initial_direction = initial_position[-1]
  direction = grid.find_direction(initial_direction)


  position = PositionFactory.build(initial_position)


  instructions = file.readline.chomp!


  rover = RoverFactory.build(direction, position, instructions)
  
  rover.explore


  rovers << rover
  

end

# rovers.each {|rover| puts rover}  



