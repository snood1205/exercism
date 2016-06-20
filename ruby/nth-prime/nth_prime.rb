class Prime
  @@primes = [2, 3]

  def self.nth n
    raise ArgumentError if n <= 0 || n % 1 != 0
    return @@primes[n-1] unless @@primes[n-1].nil?
    i = @@primes[-1] + 2
    while @@primes[n-1].nil?
      @@primes << i if @@primes.map{|j| i % j == 0}.uniq == [false]
      i += 2
    end
    @@primes[n-1]
  end

end