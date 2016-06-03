require 'pry'

class Triangle

  def initialize(number) #4

    tri_array = []

    number.times do |n|
      n+1.times do |r|
        tri_array << tri_array[]
        end
    end

  end

end



Triangle.new(2)

tri_array = [[1], [1,1], [1,2,1]]

1. First array is [1]
2. each subsequent number do the following to the previous array to create a new one:
  2a. add 0 to the first number in the array
  2b. add the first array to the second array
  2c. add the second array to the third array
  2.....
  2z. add 0 to the last number in the array
3. repeat for n times