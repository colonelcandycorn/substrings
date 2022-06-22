dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  word_count_array = 
    string.downcase.split.map do |word| 
      dictionary.select { |test| word.include?(test) }
    end
      .flatten

  word_count_array.reduce(Hash.new(0)) { |hash, word| hash[word] += 1; hash}
end