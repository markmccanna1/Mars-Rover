module InputReader

  extend self

  def read_file(file)
    lines = IO.readlines(file)
    remove_newlines(lines)
  end

  private
  
    def remove_newlines(lines)
      lines.each(&:chomp!)
    end
end