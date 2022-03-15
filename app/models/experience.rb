class Experience < ApplicationRecord
  belongs_to :host, class_name: 'User'
  validates :name, presence: true
  validates :address, presence: true
  validates :date, presence: true
  validates :description, presence: true
  validates :capacity, presence: true
  validates :price, presence: true
end
