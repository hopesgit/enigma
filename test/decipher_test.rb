require "./test/test_helper"

class DecipherTest < Minitest::Test
  def setup
    @decrypto = Decipher.new("keder ohulw", "02715", "040895")
  end

  def test_it_is_a_decipherer
    assert_instance_of Decipher, @decrypto
  end

  def test_shift_keys_can_be_negative
    assert_equal (-2), @decrypto.a
    assert_equal (-27), @decrypto.b
    assert_equal (-71), @decrypto.c
    assert_equal (-15), @decrypto.d
  end

  def test_it_can_decrypt_messages
    @decrypto.process
    assert_equal "hello world", @decrypto.final_text
  end
end
