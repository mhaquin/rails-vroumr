class Vehicle < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :orders

  validates :name, presence: true
  validates :price, presence: true, numericality: true
end

