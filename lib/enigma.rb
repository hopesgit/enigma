require "date"
require "./lib/cipher"
require "./lib/calculator"
require "./lib/translator"

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

  def self.encrypt_file(filename1, filename2)
    file = File.open(filename1, "r")
    engine = self.new.encrypt(file.read)
    encrypted_file = File.open(filename2, "w")
    encrypted_file.write(engine[:encryption])
    print "Created #{filename2} with the key #{engine[:key]} and date #{engine[:date]}"
  end
end
