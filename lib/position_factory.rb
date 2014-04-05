require_relative 'position'

module PositionFactory

  extend self

  def build(position)
    Position.new( { x: position[0].to_i , y: position[1].to_i })
  end

end