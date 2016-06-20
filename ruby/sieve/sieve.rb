class Sieve
  def initialize n
    @n = n
  end

  def primes
    return [] if @n < 2
    a = (2..@n).to_a
    a.each do |i|
      next if i.nil?
      return a.compact if i * i > @n
      ((2*i - 2)..(@n - 2)).step(i).each{|j| a[j] = nil}
    end
    a.compact
  end
end