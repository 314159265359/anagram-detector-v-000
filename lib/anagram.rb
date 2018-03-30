class Anagram
 attr_accessor :word, :list   

 def initialize(word)
   @word = word
 end

 def match(list)
   list.detect{|anagram| word == anagram}
 end

end

  