class Support < ApplicationRecord
  belongs_to :user
  has_rich_text :content

  validates :support_type, presence: true
  validates :content, presence: true
end
