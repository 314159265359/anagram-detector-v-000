class Anagram
 attr_accessor :word

 def initialize(word)
   @word = word
 end

 def match(list)
  #  anagrams  =  @word.chars.to_a.permutation.map(&:join).uniq.each {|anag|}
  #  list.select{|anagram| anagrams.include?(anagram)}
  result = []
  list.each do |anagram|
    anag = anagram.split(',')
    sanag = anag.sort
    if sanag == @word.sort
      result << sanag
    end
  end
  result
 end

end
