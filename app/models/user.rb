class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :experiences, foreign_key: 'host_id'

  validates :name, presence: true
  validates :sexe, presence: true, inclusion: { in: ["homme", "femme", "non genre"] }
  validates :age, presence: true, numericality: { only_integer: true }
end
