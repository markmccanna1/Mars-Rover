module LineParser

  extend self

  def grid_size(line)
    line.chomp!
  end  

  def remove_newlines(lines)
    lines.each(&:chomp!)
  end
end