class Post < ApplicationRecord
    has_one_attached :image
    
    belongs_to :user

      #validations
    validates :image, presence: true
    validates :name, presence: true
    validates :iso, presence: true
    validates :shutter_speed, presence: true
    validates :appature, presence: true
    validates :composition, presence: true
    validates :location, presence: true
end
