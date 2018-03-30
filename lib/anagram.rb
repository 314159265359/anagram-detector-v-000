class Anagram
 attr_accessor :word

 def initialize(word)
   @word = word
 end

 def match(list)
  #  anagrams  =  @word.chars.to_a.permutation.map(&:join).uniq.each {|anag|}
  #  list.select{|anagram| anagrams.include?(anagram)}
  result = []
  matcher = @word.split("").sort
  list.each do |anagram|
    anag = anagram.split("").sort
    if anag == matcher
      result << anagram
    end
  end
  result
 end

end
