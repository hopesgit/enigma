class Cipher
  def initialize(text)
    @text = text
  end

  def text
    @text.downcase.split(//)
  end
end
