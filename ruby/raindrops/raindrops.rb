class Raindrops
  def self.convert n
    x = "#{n % 3 == 0 ? "Pling" : ""}#{n % 5 == 0 ? "Plang" : ""}#{n % 7 == 0 ? "Plong" : ""}"
    if x.length == 0 
      n.to_s
    else
      x
    end
  end
end

module BookKeeping
  VERSION = 2
end