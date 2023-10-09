class User < ApplicationRecord
  has_secure_password

  validate :email, presence: true, uniqueness: true
  validate :username, presence: true, uniqueness: true
  validate :password, length: { minimun: 6 }
end
