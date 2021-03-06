class Question < ApplicationRecord
  has_many :answers
  
  def gravatar
    "https://secure.gravatar.com/avatar/#{Digest::MD5::hexdigest(email.downcase)}"
  end
end
