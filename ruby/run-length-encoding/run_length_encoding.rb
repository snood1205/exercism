class RunLengthEncoding
  
  def self.encode input
    a = input.split('')
    h = ""
    l = 1
    a.each_with_index do |i, j|
      if i == a[j-1] && j != 0
        l += 1
      elsif l == 1
        h += a[j-1]
      else
        if a[j-1].is_a? Numeric
          h += "#{l}\\#{a[j-1]}"
        else
          h += "#{l}#{a[j-1]}"
        end
        l = 1
      end
    end
    if a[j-1].is_a? Numeric
      h += "#{l}\\#{a[j-1]}"
    else
      h += "#{l}#{a[j-1]}"
    end
    h
  end

  def self.decode input
  end
