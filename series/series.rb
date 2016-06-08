require 'pry'

class Series

  def initialize(series_length)
    @length = series_length
  end



  def slices(number)
    # binding.pry
    number_array = number.split("")
    string_size = number_array.length
    index_to_stop_at = string_size - @length
    result = []
    starting_index = 0
    raise ArgumentError, "series too big" if @length > string_size
    while starting_index <= index_to_stop_at
      # binding.pry
      #iterate the number of times that equals the size of the series, each time adding the number at the index to result
      result << number.slice(starting_index, @length).split("").map {|e| e.to_i }

      # number.slice(starting_index, @length)

      #increment starting_index
      starting_index += 1
    end
    result
  end
end

series_a = Series.new(82)
p series_a.slices('01234')

