require_relative 'direction'
require_relative 'line_parser'
require_relative 'grid_factory'
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

grid_size_line = file.readline

grid_size = LineParser.grid_size(grid_size_line)

grid = GridFactory.build(grid_size, directions)

rovers = []

until file.eof?
  
  position_direction_line = file.readline

  input_position = LineParser.initial_position(position_direction_line)
  position = PositionFactory.build(input_position)

  input_direction = LineParser.initial_direction(position_direction_line)
  direction = grid.find_direction(input_direction)

  instructions_line = file.readline
  instructions = LineParser.instructions(instructions_line)

  rover = RoverFactory.build(direction, position, instructions)
  
  rover.explore

  rovers << rover

end

rovers.each {|rover| puts rover}  



