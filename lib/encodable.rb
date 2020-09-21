module Encodable
  def get_user_string
    gets.chomp.downcase
  end

  def alphabet
    ["a".."z"] << " "
  end
end
