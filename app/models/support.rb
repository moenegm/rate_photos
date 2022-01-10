class Support < ApplicationRecord
  belongs_to :user
  has_rich_text :body

  validates :support_type, presence: true
  validates :body, presence: true
end
