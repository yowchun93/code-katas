class Acronym
  def self.abbreviate(phrase)
    phrase.scan(/\b\w/).map { |word| word[0].upcase }.join("")
  end
end