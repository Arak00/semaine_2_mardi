

def jean_michel_data(corpus,dictionnaire)
  corpus.downcase!
     corpus_array = corpus.split(/[,?;.:!' ]/)
     corpus_array.delete("")
     corpus = corpus_array.join(" ")
     dictionnaire.each do |word|
         compte = corpus.scan(word).count
         if compte > 0
             puts "#{word} : #{compte}"
         end
     end
 end




 dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
 puts jean_michel_data("below", dictionary)
 puts jean_michel_data("Howdy partner, sit down! How's it going?", dictionary)
