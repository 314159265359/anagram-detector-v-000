class Anagram
 attr_accessor :word

 def initialize(word)
   @word = word
 end

 def match(list)
   list.select{|anagram| @word == anagram}
 end

end
