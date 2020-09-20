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

  def test_it_can_get_a_random_base_key
    assert_equal 5, @cipher.get_key.length
  end

  def test_it_can_get_keys_from_base
    assert_nil @cipher.a
    assert_nil @cipher.b
    assert_nil @cipher.c
    assert_nil @cipher.d

    @cipher.calculator.stubs(:get_key).returns("01234")
    @cipher.get_key

    assert_equal 1, @cipher.a
    assert_equal 12, @cipher.b
    assert_equal 23, @cipher.c
    assert_equal 34, @cipher.d
  end

  def test_it_can_get_date
    Date.stubs(:today).returns(Date.new(2020,9,20))

    assert_equal 200920, @cipher.get_date
  end

  def test_it_can_grab_square
    Date.stubs(:today).returns(Date.new(2020,9,20))
    @cipher.get_date

    assert_equal "6400", @cipher.get_date_square
  end

  def test_it_can_use_date_to_offset_keys
    Date.stubs(:today).returns(Date.new(2020,9,20))

    @cipher.calculator.stubs(:get_key).returns("01234")
    @cipher.get_key

    assert_equal 1, @cipher.a
    assert_equal 12, @cipher.b
    assert_equal 23, @cipher.c
    assert_equal 34, @cipher.d

    @cipher.get_offsets

    assert_equal 7, @cipher.a
    assert_eqaul 16, @cipher.b
    assert_equal 23, @cipher.c
    assert_equal 7, @cipher.d
  end
end
