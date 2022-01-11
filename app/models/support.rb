class Support < ApplicationRecord
  belongs_to :user
  has_rich_text :body

  acts_as_votable

  validates :status, presence: true

  validates :support_type, presence: true
  validates :body, presence: true
end
