class Post < ApplicationRecord
	has_many :replies, dependent: :destroy
	belongs_to :user
	 validates :title, presence: true
	has_rich_text :body
end
