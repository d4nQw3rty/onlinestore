class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true,
    length: {in: 3..15},
    format: { 
    with: /\A[a-z-0-9-A-Z]+\z/,
    message: :invalid
    }
  validates :password, length: { minimum: 6 }
end
