dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  string.downcase.split.reduce(Hash.new(0)) do |hash, word| 
    dictionary.select { |test| hash[test] += 1 if word.include?(test) }
    hash
  end
end