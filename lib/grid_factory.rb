require_relative 'grid'

module GridFactory
  
  extend self

  def build(size, directions)
    Grid.new( { size: size_formatter(size), 
                directions: directions
              } )
  end

  private 

    def size_formatter(size)
      array = size.split('')
      array = array.map { |x| x.to_i }
    end

end