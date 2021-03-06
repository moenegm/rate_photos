class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  acts_as_voter

  has_one_attached :avatar

  has_many :posts
  has_many :ratings
  has_many :supports

  #validations
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true

end
