class Anagram
 attr_accessor :word

 def initialize(word)
   @word = word
 end

 def match(list)
   list.select{|anagram| @word == anagram}
   @word.chars.to_a.permutation.map(&:join).uniq.each do |anag|
  puts anag
  
 end

end
