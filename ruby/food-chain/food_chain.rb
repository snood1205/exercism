class FoodChain
  @@animals = ['fly', 'spider', 'bird', 'cat', 'dog', 'goat', 'cow', 'horse']
  @@verses = [
    '',
    'It wriggled and jiggled and tickled inside her.',
    'How absurd to swallow a bird!',
    'Imagine that, to swallow a cat!',
    'What a hog, to swallow a dog!',
    'Just opened her throat and swallowed a goat!',
    'I don\'t know how she swallowed a cow!',
    'She\'s dead, of course!'
  ]
  @@hash = Hash[@@animals.zip(@@verses)]

  def self.song
    s = ""
    @@animals.each{|i| s += verse(i) }
    s
  end

  def self.verse animal
    s = "I know an old lady who swallowed a #{animal}.\n"
    if animal != 'fly' && animal != 'horse'
      s += @@hash[animal] + "\n"
      (@@animals.index(animal)).downto(3).each{|i| s += "She swallowed the #{@@animals[i]} to catch the #{@@animals[i-1]}.\n"}
      s += "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n" unless animal == 'spider'
      s += "She swallowed the spider to catch the fly.\n"
    end
    if animal != 'horse'
      s += "I don't know why she swallowed the fly. Perhaps she'll die.\n\n"
    else
      s += "She's dead, of course!\n"
    end
    s
  end
end

module BookKeeping
  VERSION = 2
end