 First 13 letters: A|B|C|D|E|F|G|H|I|J|K|L|M
 Last 13 letters:  Z|Y|X|W|V|U|T|S|R|Q|P|O|N

#store letters in a hash

class Atbash
  @@atbash_pairs = {'a'=>'z','b'=>'y','c'=>'x','d'=>'w','e'=>'v','f'=>'u','g'=>'t','h'=>'s','i'=>'r','j'=>'q','k'=>'p','l'=>'o','m'=>'n','z'=>'a','y'=>'b','x'=>'c','w'=>'d','v'=>'e','u'=>'f','t'=>'g','s'=>'h','r'=>'i','q'=>'j','p'=>'k','o'=>'l','n'=>'m'}

  attr_accessor :string

  def initialize(string = '')
    @string = string
  end

  def encode(string)
    format_string(string)

    # encode string
  end

  def format_string(string)
    # evaluate input string

    # step 1 downcase and remove spaces
    # step 2 convert into an array
    string = string.downcase.gsub(' ','').split('')
  end


end
