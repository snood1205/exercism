class Pangram
  def self.is_pangram? str
    str.gsub(/[^A-Za-z]/,'').split('').map{|j| j.downcase}.uniq.sort == ('a'..'z').to_a
  end
end

module BookKeeping
  VERSION = 2
end