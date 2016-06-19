class Gigasecond
  def self.from t
    Time.at(t.to_i + 10**9).utc
  end
end 

module BookKeeping
  VERSION = 3
end