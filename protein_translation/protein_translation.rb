require 'pry'

class InvalidCodonError < StandardError
end


class Translation
  attr_accessor :rna

  CODONS = {AUG: "Methionine", UUU: "Phenylalanine", UUC: "Phenylalanine", UUA: "Leucine", UUG: "Leucine", UCU: "Serine", UCC: "Serine", UCA: "Serine", UCG: "Serine", UAU: "Tyrosine", UAC: "Tyrosine", UGU: "Cysteine", UGC: "Cysteine", UGG: "Tryptophan", UAA: "STOP", UAG: "STOP", UGA: "STOP" }

  def self.of_codon(codon)
    CODONS[codon.to_sym]
  end

  def self.of_rna(strand)
    raise InvalidCodonError if strand.match(/[^AUGC]/)

    protein = []
    strand.scan(/[AUGC]{3}/).each do |codon|
      break unless CODONS[codon.to_sym] != "STOP"
      protein << CODONS[codon.to_sym]
    end
    binding.pry
  end
end

# Translation.of_codon('AUG')
# Translation.of_rna('UGGUGUUAUUAAUGGUUU')
Translation.of_rna('CARROT')
