module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(a, b)
    raise ArgumentError.new if a.length != b.length
    a, b = a.split(''), b.split('')
    c = a.zip(b)
    sum = 0
    c.each{|i| sum += 1 if i[0] != i[1]}
    return sum
  end
end