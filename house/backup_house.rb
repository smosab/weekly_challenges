require 'pry'

class House

  def self.recite
    n = 1

    loop do

      if n == 1
        puts "This is #{pieces.last[0]}\n\n"
        n += 1
      else
        # puts "This is #{pieces.reverse[0,n].reverse[0,n-1].join(" ").gsub("that", "\nthat")} #{pieces.last[0]}\n\n"
        pieces.reverse[0,n].reverse[0,n-1].each do |line|
        binding.pry

          line[0].start_with?("that") ? "\n#{line[0]}" : "This is the #{line[1]}"
          # end

        end
        puts output
        n += 1
        break if n > pieces.size
      end
    end
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



