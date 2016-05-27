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
  end
end

class Crypto_Square
  attr_accessor :message

  def initialize(msg)
    @message = Message.new(msg)
  end

  # ask_user_for_message(msg)
  def encrypt
    message.normalize
    message.break_into_rows
    # message.code_message
  end

  def output
    message.output
  end

end

# secretmessage = Crypto_Square.new("Money can't buy you happiness, but it does bring you a more pleasant form of misery.")
# secretmessage = Crypto_Square.new("Sometimes you win, sometimes you learn.")
# secretmessage = Crypto_Square.new("Man who drop watch in toilet have shitty time.")
# secretmessage = Crypto_Square.new("If man was meant to stay on the ground, god would have given us roots.")

secretmessage = Crypto_Square.new("Hello")

secretmessage.encrypt
secretmessage.output

