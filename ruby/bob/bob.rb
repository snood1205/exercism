class Bob
  def hey remark
    return 'Fine. Be that way!' if remark.gsub(/\s/,'').empty?
    return 'Whoa, chill out!' if remark.upcase == remark && !remark.gsub(/[^A-Za-z]/,'').empty?
    return 'Sure.' if remark[-1] == '?'
    'Whatever.'
  end
end