require "./test/test_helper"

class CipherTest < Minitest::Test
  def setup
    @cipher = Cipher.new("Sample")
  end

  def test_it_is_cipher
    assert_instance_of Cipher, @cipher
  end

  def test_it_has_text_to_translate
    assert_equal ["s", "a", "m", "p", "l", "e"], @cipher.text
  end
end
