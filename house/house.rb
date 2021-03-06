require 'pry'

class House

  def self.recite
    n = 0
    pieces_str = ''
    output = ''
    loop do
    
    if n == 0
      output = "This is " + pieces.reverse[n][n] + "." + "\n\n"
      pieces_str = pieces.reverse[n][n] + "."
      n += 1
    else
      pieces_str = pieces.reverse[n][1] + ' ' + pieces_str
      output += "This is " + pieces.reverse[n][0] + "\n"
      output += pieces_str 
      pieces_str = pieces.reverse[n][0] + "\n" + pieces_str
      output += "\n\n" unless n >= pieces.size - 1
      n += 1
        break if n >= pieces.size
      end
    end
    output += "\n"
  end

  private
  
    def self.pieces
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

end

House.recite
