class Message
  attr_accessor :message

  def initialize(msg)
    @message = msg
  end

  def normalize
    @normalized = message.gsub(/\W/, "").downcase
  end

  def output
    puts message
  end

  def size_of_square
    if @normalized.size % Math.sqrt(@normalized.size) == 0
      return Math.sqrt(@normalized.size)
    else return Math.sqrt(@normalized.size).ceil
    end
  end

  def break_into_rows
    square_string = ''
    columns = size_of_square - 1
    columns.times do
      square_string << "#{@normalized.slice!(0..columns)}\n"
    end
    @message = square_string
  end

  def code_message
    coded_string = ''
    split_message = message.split("\n").map { |x| x.split("") }
    while split_message.flatten.any?
      split_message.each do |wordgroup|
        coded_string << wordgroup.shift unless wordgroup[0] == nil
      end
      coded_string << " "
    end
    @message = coded_string.rstrip
  end
end

class Crypto
  attr_accessor :message

  def initialize(msg)
    @message = Message.new(msg)
  end

  def encrypt
    message.normalize
    message.break_into_rows
    message.code_message
    message.output
  end
end

msg = Crypto.new("This is a test of the emergency line.")
msg.encrypt
