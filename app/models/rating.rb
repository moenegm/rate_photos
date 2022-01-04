class Rating < ApplicationRecord
    belongs_to :post
    belongs_to :user

    validates :rating, presence: true
    validates_uniqueness_of :post_id, scope: :user_id
end