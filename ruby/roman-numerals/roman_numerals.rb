class Fixnum
  def to_roman
    s = ""
    s += ("M" * (self / 1000))
    case self % 1000
      when 900..999 then s += "CM"
      when 500..899 
        s += "D"
        s += ("C" * ((self % 500)/100))
      when 400..499 then s += "CD"
      when 0..399 then s += ("C" * ((self % 500)/100))
    end
    case self % 100
      when 90..99 then s += "XC"
      when 50..89
        s += "L"
        s += ("X" * ((self % 50)/10))
      when 40..49 then s += "XL"
      when 0..39 then s += ("X" * ((self % 50)/10))
    end
    case self % 10
      when 9 then s += "IX"
      when 5..8
        s += "V"
        s += ("I" * (self % 5))
      when 4 then s += "IV"
      when 0..3 then s += ("I" * (self % 5))
    end
    s
  end
end

module BookKeeping
  VERSION = 2
end