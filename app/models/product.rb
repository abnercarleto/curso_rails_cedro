class Product < ApplicationRecord
  validates :name, :amount, :unit_price, presence: true
end
