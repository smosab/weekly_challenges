require 'csv'

class Robot
    attr_accessor :robot_name, :used_list, :used_list_arr

    def initialize
        @used_list_arr = CSV.open("used.txt", "r").readline
        @used_list_arr = [] if @used_list_arr == nil
        @used_list = CSV.open("used.txt", "w+b")
        generate_random_name
        check_for_duplicate
        write_to_file
    end

    def write_to_file
        used_list.rewind
        used_list << used_list_arr
        used_list.close
    end

    def name
        robot_name
    end

    def generate_random_name
        first_two_chars = ("a".."z").map(&:upcase).sample(2).join
        last_three_digits = ("0".."9").map(&:upcase).sample(3).join
        @robot_name = first_two_chars + last_three_digits
    end

    def check_for_duplicate
        used_list_arr.include?(robot_name) ? generate_random_name && check_for_duplicate : add_name_to_usednames_list
    end

    def add_name_to_usednames_list
        used_list_arr << robot_name
    end

    def reset
        generate_random_name
    end
end

