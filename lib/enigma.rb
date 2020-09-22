require "date"

class Enigma
  def encrypt(message, key = "random", date = "today")
    cipher = Cipher.new(message, key, date)
  end
end
