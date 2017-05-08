class Complement

  def self.of_dna(dna)
    rna = ''
    idx = 0
    while idx < dna.length
      case dna[idx]
      when 'G'
        rna += 'C'
      when 'C'
        rna += 'G'
      when 'T'
        rna += 'A'
      when 'A'
        rna += 'U'
      else
        return ''
      end
      idx += 1
    end
    return rna
  end
end

module BookKeeping
  VERSION = 4
end
