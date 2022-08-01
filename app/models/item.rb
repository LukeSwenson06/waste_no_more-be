class Item < ApplicationRecord
  belongs_to :user

  def days_until_expired(expiration)
    binding.pry
    (expiration - Date.today).to_i
  end
end
