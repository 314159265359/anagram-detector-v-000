class Anagram
 attr_accessor :word

 def initialize(word)
   @word = word
 end

 def match(list)
   result = list.detect{|anagram| @word == anagram}
   result
 end

end
