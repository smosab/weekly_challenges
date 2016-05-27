# Crypto square is a program that asks the user for a message (english text) to compose into a secret message called a square code. The program then outputs the encoded version of the text.


# input message
#   -normalize
#   -encrypt

# squared code
#   -output


# rectangle
#  -columns
#  -rows

# characters

require 'pry'

class Message
  attr_accessor :message

  def initialize(msg)
    @message = msg
  end

  # The spaces and punctuation are removed from the English text and the message is down-cased.
  def normalize
    # message.gsub!(/\W/, "").downcase
    @message = message.gsub(/\W/, "").downcase
  end

  def output
    puts "Coded Message:"
    puts message
  end

  def size_of_square
    if message.size % Math.sqrt(message.size) == 0
      return Math.sqrt(message.size)
    else return Math.sqrt(message.size).ceil
    end
    
  end

  def break_into_rows
    square_string = ''
    columns = size_of_square - 1
    columns.times do
      square_string << "#{message.slice!(0..columns)}\n"
    end
    @message = square_string
    puts "Rectangled message: "
    puts @message
    puts ""
  end
  
  
  def code_message
    coded_string = ''
    
    #split the msg
    split_message = message.split("\n").map { |x| x.split("") }
    
    #iterate through each row (or word group) and place the first character of each word-group into a new string.
    while split_message.flatten.any?
      split_message.each do |wordgroup|
        coded_string << wordgroup.shift unless wordgroup[0] == nil
      end
      coded_string << " "
    end
    
    # assing the message variable the new coded string
    @message = coded_string.rstrip
  end
end

class Crypto
  attr_accessor :message

  def initialize(msg)
    @message = Message.new(msg)
  end

  # ask_user_for_message(msg)
  def normalize
    message.normalize
  end
  
  def size
    message.size_of_square
  end
  
  def encrypt
    normalize
    message.break_into_rows
    message.code_message
  end

  def output
    message.output
  end

end

# secretmessage = Crypto.new("Money can't buy you happiness, but it does bring you a more pleasant form of misery.")
# secretmessage = Crypto.new("Sometimes you win, sometimes you learn.")
# secretmessage = Crypto.new("Man who drop watch in toilet have shitty time.")
# secretmessage = Crypto.new("If man was meant to stay on the ground, god would have given us roots.")
secretmessage = Crypto.new('Oh hey, this is nuts!')
# secretmessage = Crypto.new("Hello")

secretmessage.encrypt
secretmessage.output

