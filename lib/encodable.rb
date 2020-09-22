module Encodable
  def get_user_string
    gets.chomp.downcase
  end

  def alphabet
    ("a".."z").to_a << " "
  end
end
