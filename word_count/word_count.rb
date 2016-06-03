class Phrase
  attr_accessor :message, :split_message, :count_hash

  public

  def initialize(message)
    @message = message
  end

  def normalize_and_split_message
    @split_message = message.scan(/[\w']+/).map { |x| x.downcase.gsub(/^\p{P}|\p{P}$/ , "") }
  end

  def word_count
    @count_hash = {}
    split_message.size.times do |idx|
      count = split_message.count {|x| x == split_message[idx] }
      word = split_message[idx]
      count_hash[word] = count
    end
    count_hash
  end

  def output_results
    count_hash.each { |k,v| puts "#{k}: #{v}" }
  end

  def count_occurances
    normalize_and_split_message
    word_count
  end
end

