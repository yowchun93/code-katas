class Roman
  def self.convert_to_roman(num)
    roman = ""

    while num >= 1 do
      if num >= 10
        roman += "X"
        num -= 10
      elsif num >= 5
        roman += "V"
        num -= 5
      elsif num >= 4
        roman += "IV"
        num -= 4
      else
        roman += "I"
        num -= 1
      end
    end
    roman
  end
end