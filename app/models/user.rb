class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true

  before_create do
    self.api_key = SecureRandom.hex
  end
end
