def caesar_cipher(word, length)
  converted_word = []
  upper_a = 65
  upper_z = 90
  lower_a = 97
  lower_z = 122

  word.each_byte do |char|
    if char.between?(upper_a, upper_z) || char.between?(lower_a, lower_z)
      converted_char = char + length
      if char.chr == char.chr.upcase && converted_char > upper_z
        converted_char = (converted_char - upper_z) + (upper_a - 1)
      elsif char.chr == char.chr.downcase && converted_char > lower_z
        converted_char = (converted_char - lower_z) + (lower_a - 1)
      end
      converted_word << converted_char.chr
    else
      converted_word << char.chr
    end
  end

  converted_word.join
end

puts caesar_cipher('OdinProject', 5)
