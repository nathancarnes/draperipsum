require 'marky_markov'

class DraperIpsum
  def initialize
    @markov = MarkyMarkov::TemporaryDictionary.new
    @markov.parse_file "source.txt"
  end

  def sentences(number = 5)
    @markov.generate_n_sentences number
  end

  def words(number = 200)
    @markov.generate_n_words number
  end
end
