require 'pry'

class Robot
    attr_accessor :robot_name, :used_list
    
    def initialize
        @used_list = []
        generate_random_name
    end
    
    def name
        robot_name
    end
    
    def generate_random_name
        first_two_chars = ("a".."z").map(&:upcase).sample(2).join
        last_three_digits = ("0".."9").map(&:upcase).sample(3).join
        @robot_name = first_two_chars + last_three_digits
        add_name_to_usednames_list
        check_for_duplicate
    end
    
    def check_for_duplicate
        if used_list.include?(robot_name)
            generate_random_name
        end
    end
    
    def add_name_to_usednames_list
        fname = "used.txt"
        used_list = File.open(fname, "w+")
        
        used_list << robot_name
        # binding.pry
        used_list.close
        
        # used_list << robot_name
    end
    
    def reset
        generate_random_name
    end
end

new_robot = Robot.new

new_robot.name
# new_robot.name

# new_robot.reset
# new_robot.name
# p new_robot.used_list

# Kernel.srand 1000
# puts name1 = Robot.new.name
# binding.pry
# Kernel.srand 1000
# puts name2 = Robot.new.name

