class Vehicle < ApplicationRecord
  has_attachment :photo
  belongs_to :category
  belongs_to :user
  has_many :orders

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  validates :name, presence: true
  validates :price, presence: true, numericality: true
end

