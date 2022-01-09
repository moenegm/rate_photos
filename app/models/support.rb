class Support < ApplicationRecord

    has_rich_text :content
    belongs_to :user
    validates :name, presence: true
    validates :content, presence: true
end
