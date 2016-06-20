class Phrase
  def initialize phrase
    @phrase = phrase
  end

  def word_count
    h = @phrase.split(/[^A-Za-z0-9\w']+/).map{|i| i.downcase.gsub(/'([\w]+)'/,'\1')}
    k = Hash.new
    h.uniq.map{|i| k[i] = h.count(i)}
    k
  end
end

module BookKeeping
  VERSION = 1
end