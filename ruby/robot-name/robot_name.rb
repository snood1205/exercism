class Robot
  attr_accessor :name
  @@names = []

  def initialize
    az = ('A'..'Z').to_a
    num = ('0'..'9').to_a
    @name = "#{az.sample}#{az.sample}#{num.sample}#{num.sample}#{num.sample}"
    @name = "#{az.sample}#{az.sample}#{num.sample}#{num.sample}#{num.sample}" while @@names.include?(@name)
    @@names << @name
  end

  def reset
    az = ('A'..'Z').to_a
    num = ('0'..'9').to_a
    @name = "#{az.sample}#{az.sample}#{num.sample}#{num.sample}#{num.sample}"
  end 
end

module BookKeeping
  VERSION = 2
end