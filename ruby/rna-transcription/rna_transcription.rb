class Complement
  def self.of_dna s
    r = ""
    s.split('').map do |i|
      r += case i
      when 'G'
        'C'
      when 'C'
        'G'
      when 'T'
        'A'
      when 'A'
        'U'
      else
        return ''
      end
    end
    r
  end
end

module BookKeeping
  VERSION = 4
end