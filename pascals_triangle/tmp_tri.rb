require 'pry'

class Triangle
  def initialize(levels)
    @levels = levels
  end

  def rows
    rows = [[1]]
    (1..@levels-1).each do |level|
      binding.pry
      rows[level] = next_row_for(rows[level-1])
    end
    p rows
  end

  def next_row_for(current_row)
    result = []
    current_row.each_with_index do |number, index|
      if index == 0
        result << 1
      else
        result << number + current_row[index-1]
      end
    end
    result << 1
  end
end


tri = Triangle.new(3)
tri.rows