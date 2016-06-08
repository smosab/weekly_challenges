require 'pry'

class Triangle
  attr_accessor :row, :tri_array, :num_operations, :tmp_arr

  def initialize(row)
    @row = row
    @tri_array = [[1]]
    @num_operations = row + 1
    @tmp_arr = tri_array.last
  end

  def triangle_array
    binding.pry
    if row == 0
      return tri_array
    else
        # if tri_array.last[curr_row+1] == nil
        #   tri_array[curr_row+1] = [0 + (tri_array.last[n] == nil ? 1 : tri_array.last[n])]
        # else
        #   tri_array.last[curr_row+1] << 0 + (tri_array.last[n] == nil ? 1 : tri_array.last[n])
        # end

    end
  end

end

new_pascals_triangle = Triangle.new(2)
new_pascals_triangle.triangle_array

# 1. First array is [1]
# 2. each subsequent number do the following to the previous array to create a new one:
#   2a. add 0 to the first number in the array
#   2b. add the second number in array to the third number in array
#   2c. add the third number in array to the fourth number in array
#   2.....
#   2z. add 0 to the last number in the array
# 3. repeat for n times



# tri_array = [[1]]
# tri_array.size # 1
# tri_array.size.times do |n| # n starts at 0

