dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (string, dictionary)
  words_present = dictionary.reduce(Hash.new(0)) { | result, word |
    if string.downcase.include?(word)
      result[word] = string.downcase.scan(/(?=#{word})/).count
    end
    result
  }
  words_present
end

substrings("Howdy partner, sit down! How's it going?", dictionary)