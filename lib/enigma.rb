require "date"

class Enigma
  def encrypt(message, key = "random", date = "today")
    encrypto = Cipher.new(message, key, date)
    encrypto.process
    Hash[:encryption => encrypto.final_text, :key => encrypto.key, :date => encrypto.date.to_s]
  end
end
