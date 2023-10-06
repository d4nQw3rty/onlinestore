class Category < ApplicationRecord
  has_many :products, dependent: :restrict_with_exception
  validates :name, precense: true
end
