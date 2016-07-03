# exercism #4

# version tracker
module BookKeeping
  VERSION = 4
end

# convert dna to rna
class Complement
  # give me dna strand and i return corresponding rna strand
  def self.of_dna(dna)
    rna = []
    dna.each_char do |nucleotide|
      rna << get_rna(nucleotide)
    end
    rna.include?(nil) ? '' : rna.join
  end

  private_class_method

  # dna-to-rna nucleotide conversion
  def self.get_rna(nucleotide)
    case nucleotide
    when 'G' then 'C'
    when 'C' then 'G'
    when 'T' then 'A'
    when 'A' then 'U'
    end
  end
end
