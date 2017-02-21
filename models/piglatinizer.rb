
class PigLatinizer

  attr_accessor :string
  #
  # def initialize(string=nil)
  #   @string=string
  # end

  def to_pig_latin(sentence)
    sentence.split(' ').collect do |word|
      piglatinize(word)
    end.join(" ")
  end

  def piglatinize(word)
    if is_vowel(word[0])
        word+='way'
    else
      check(word)
          word+='ay'
        end
        word
  end

def check (word)
  until is_vowel(word[0])
    first_letter=word.slice!(0)
    word<<first_letter
      end
      word
end

def is_vowel(letter)
  /[aeiou]/i===letter
end

end
