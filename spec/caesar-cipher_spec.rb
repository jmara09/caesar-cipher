require_relative '../caesar-cipher'

describe 'caesar_cipher' do
  context 'when each letter of dog is shifted by only one' do
    it 'returns eph' do
      word = 'dog'
      shift_count = 1
      encrypted_word = 'eph'
      result = caesar_cipher(word, shift_count)
      expect(result).to eq(encrypted_word)
    end
  end

  context 'when the word has different cases' do
    it 'returns an encrypted word but the same cases' do
      word = 'HeLLo'
      shift_count = 3
      encrypted_word = 'KhOOr'
      result = caesar_cipher(word, shift_count)
      expect(result).to eq(encrypted_word)
    end
  end

  context "when shift count go over letter 'z'" do
    it "should start counting from letter 'a' again" do
      words = 'Luffy and Zoro'
      shift_count = 15
      encrypted_word = 'Ajuun pcs Odgd'
      result = caesar_cipher(words, shift_count)
      expect(result).to eq(encrypted_word)
    end
  end
end
