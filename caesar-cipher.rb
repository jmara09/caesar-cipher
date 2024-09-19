def caesar_cipher(word, length)
  converted_word = []
  word.each_byte do |char|
    unless char >= 65 && char <= 122 || char >= 97 && char <= 122
      converted_word << char.chr
    else
      converted_char = char + length
      if char.chr == char.chr.upcase && converted_char > 90
        converted_char = (converted_char - 90) + 64
        converted_word << converted_char.chr
      elsif char.chr == char.chr.downcase && converted_char > 122
        converted_char = (converted_char - 122) + 96
        converted_word << converted_char.chr
      else
        converted_word << converted_char.chr
      end
    end 
  end

  converted_word.join
end

caesar_cipher("OdinProject", 5)