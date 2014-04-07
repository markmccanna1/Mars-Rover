module LineParser

  extend self

  def grid_size(line)
    line.chomp
  end

  def initial_position(line)
    [ line[0], line[1] ]
  end

  def initial_direction(line)
    chomped = line.chomp
    chomped[-1]
  end

  def instructions(line)
    line.chomp
  end
  
end