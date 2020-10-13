class Phrase
  def initialize(word)
    @word = word
  end

  def word_count
    @word.downcase.scan(/\b[\w']+\b/).inject({}) do |result, word|
      if !result[word].nil?
        result[word] += 1
      else
        result[word] = 1
      end
      result
    end
  end
end