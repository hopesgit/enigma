class Decipher < Cipher
  def assign_keys(root)
    @a = 0 - root[0..1].to_i
    @b = 0 - root[1..2].to_i
    @c = 0 - root[2..3].to_i
    @d = 0 - root[3..4].to_i
  end

  def get_offsets
    offset_base = get_date_square
    @a = (a - offset_base[0].to_i) % 27
    @b = (b - offset_base[1].to_i) % 27
    @c = (c - offset_base[2].to_i) % 27
    @d = (d - offset_base[3].to_i) % 27
  end
end
