require "date"

class Enigma
  def encrypt(message, key = "random", date = "today")
    encrypto = Cipher.new(message, key, date)
    encrypto.process
    Hash[:encryption => encrypto.final_text, :key => encrypto.key, :date => encrypto.date.to_s]
  end

  def decrypt(message, key = "random", date = "today")
    decrypto = Decipher.new(message, key, date)
    decrypto.process
    Hash[:decryption => decrypto.final_text, :key => decrypto.key, :date => decrypto.date.to_s]
  end
end
