require 'pry'

tri_array = [[1], [1,1]]
temp_arr = []
c = 0
# tri_array.last.size.times do |c|
  # binding.pry
  tri_array.last.each do |num|
    binding.pry
    # add zero to the first index
    temp_arr << num + c
    # tri_array << [num, num + c]
    # p tri_array.last[n] == nil ? tri_array.last[n-1] + 0 : tri_array.last[n] + 0
    c += 1
  end
# end

# class Triangle

#   def initialize(number) #4
#     tri_array = [[1]]
#     loop_count = tri_array.size + 1

#     tri_array.last do
#       temp_arr = []

#       loop_count.size.times do |n|
#         n == 0 ? temp_arr.push 1
#         n == tri_array.find_index(tri_array.last) ? temp_arr.push 1

#     end
#   end
# end



# Triangle.new(2)

# tri_array = [[1], [1,1], [1,2,1]]

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

