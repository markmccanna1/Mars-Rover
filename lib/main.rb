require_relative 'direction'
require_relative 'input_reader'
require_relative 'grid_factory'
require_relative 'rover'
require_relative 'position_factory'
require_relative 'rover_factory'

north = Direction.new("N", 0, 1)
south = Direction.new("S", 0, -1)
east = Direction.new("E", 1, 0)
west = Direction.new("W", -1, 0)



north.set_directions(west, east)
south.set_directions(east, west)
west.set_directions(south, north)
east.set_directions(north, south)

directions = [north, south, east, west]






file = File.open('../input')

grid_size = file.readline.chomp!

grid = GridFactory.build(grid_size, directions)


rovers = []

until file.eof?
  
  initial_position = file.readline.chomp!

  initial_direction = initial_position[-1]
  direction = grid.find_direction(initial_direction)
  
  position = PositionFactory.build(initial_position)


  instructions = file.readline.chomp!


  rover = RoverFactory.build(direction, position, instructions)
  
  rover.explore


  rovers << rover
  

end

rovers.each {|rover| puts rover}  



