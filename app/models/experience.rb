class Experience < ApplicationRecord
  belongs_to :host, class_name: 'User'
  has_many :bookings
  has_one_attached :photo
  validates :name, presence: true
  validates :address, presence: true
  validates :date, presence: true
  validates :description, presence: true
  validates :capacity, presence: true
  validates :price, presence: true
end
