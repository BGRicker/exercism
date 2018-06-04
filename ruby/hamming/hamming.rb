class Hamming
  def self.compute(strand1, strand2)
    validate_length(strand1, strand2)

    differences = 0

    strand_comparison(strand1, strand2).each do |node|
      unless node[0] == node[1]
        differences += 1
      end
    end
    return differences
  end

  def self.validate_length(first, second)
    if first.length != second.length
      raise ArgumentError.new('These strands are not the same length')
    end
  end

  def self.strand_comparison(strand1, strand2)
    first = strand1.split('')
    second = strand2.split('')
    first.zip(second) 
  end
end

module BookKeeping
  VERSION = 3
end
