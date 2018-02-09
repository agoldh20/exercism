class Complement
  def self.of_dna(dna_input)
    dna = ["G", "C", "T", "A"]
    rna = ["C", "G", "A", "U"]
    dna_split = dna_input.chars
    complement_letter = []
    dna_split.each do |dna_letter|
      if dna.include?(dna_letter)
        reference = dna.index(dna_letter)
        complement_letter << rna[reference]
      else
        complement_letter.clear
        break
      end
    end
    return complement_letter.join
  end
end

module BookKeeping
  VERSION = 4
end 
