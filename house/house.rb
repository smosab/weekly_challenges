require 'pry'

class House

  # def self.recite
  #   constant = "This is "
  #   n = 1

  #   loop do
  #     binding.pry
  #     puts pieces.reverse[0,n].reverse
  #     n += 1
  #      break if n > pieces.size
  #   end
  # end

  # private

  def pieces
    [
      ['the horse and the hound and the horn', 'that belonged to'],
      ['the farmer sowing his corn', 'that kept'],
      ['the rooster that crowed in the morn', 'that woke'],
      ['the priest all shaven and shorn', 'that married'],
      ['the man all tattered and torn', 'that kissed'],
      ['the maiden all forlorn', 'that milked'],
      ['the cow with the crumpled horn', 'that tossed'],
      ['the dog', 'that worried'],
      ['the cat', 'that killed'],
      ['the rat', 'that ate'],
      ['the malt', 'that lay in'],
      ['the house that Jack built']
    ]
  end
  binding.pry
end

House
