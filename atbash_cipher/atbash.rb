class Atbash
  FIRST_LAST_13 = [('a'..'m').to_a].concat([('n'..'z').to_a.reverse])
  LAST_FIRST_13 = FIRST_LAST_13.reverse
  @atbash_pairs = FIRST_LAST_13
                  .transpose
                  .to_h
                  .merge(LAST_FIRST_13.transpose.to_h)

  class << self; attr_accessor :encoded_string, :scrubbed_string end

  def self.encode(string)
    scrub(string)
    @encoded_string = scrubbed_string.map do |char|
      char =~ /[0-9]/ ? char : @atbash_pairs[char]
    end
    group_into_five(encoded_string)
  end

  def self.scrub(string)
    @scrubbed_string = string.downcase.gsub(/[^a-z0-9]/, '').split('')
  end

  def self.group_into_five(encoded_string)
    final_string = []
    encoded_string.each_slice(5) { |slice| final_string << slice.join }
    final_string.join(' ')
  end
end
