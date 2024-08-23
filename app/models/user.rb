class User < ApplicationRecord
  validates_uniqueness_of :username, presence: true, length: { minimum: 3, maximum: 25 }
  validates_uniqueness_of :email, presence: true, format: { with: Devise.email_regexp }, length: { maximum: 105 }
end
