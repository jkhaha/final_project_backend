class User < ApplicationRecord
  has_secure_password
  has_many :habits
  validates :username, presence: true
end
