require "./test/test_helper"

class DecipherTest < Minitest::Test
  def setup
    @decrypto = Decipher.new
  end

  def test_it_is_a_decipherer
    assert_instance_of Decipher, @decrypto
  end
end
