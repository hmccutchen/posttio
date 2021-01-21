class Post < ApplicationRecord
	has_many :replies, dependent: :destroy
	
	has_rich_text :body
end
