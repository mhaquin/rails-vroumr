class Vehicle < ApplicationRecord
  belongs_to :category
  has_many :orders

  validates :name, :price, presence: true
end

