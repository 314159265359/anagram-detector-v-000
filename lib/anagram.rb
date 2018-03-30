class Anagram
 attr_accessor :word

 def initialize(word)
   @word = word
 end

 def match(list)
   anagrams  =  @word.chars.to_a.permutation.map(&:join).uniq.each {|anag|}
   list.select{|anagram| anagrams.include?(anagram)}
  #  @word.chars.to_a.permutation.map(&:join).uniq.each do |anag|
  #  puts anag
   end
 end

end
