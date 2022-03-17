class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings, foreign_key: 'participant_id'
  has_many :experiences, foreign_key: 'host_id'

  GENRES = ["homme", "femme", "non genre"]


  validates :name, presence: true
  validates :sexe, presence: true, inclusion: { in: GENRES }
  validates :age, presence: true, numericality: { only_integer: true }
end
