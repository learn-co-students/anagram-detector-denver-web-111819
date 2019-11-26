class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(possible_anagrams)
        possible_anagrams.select do |anagram|
            alphabetical(anagram) == alphabetical(self.word)
        end
    end

    def alphabetical(word)
        word.split("").sort
    end
end