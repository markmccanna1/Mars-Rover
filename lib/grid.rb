class Grid

  attr_reader :size, :directions

  def initialize(args)
    @size = args.fetch(:size)
    @directions = args.fetch(:directions)
  end

  def find_direction(name)
    applicaple = @directions.select {|direction| direction.name == name }
    applicaple[0]
  end

end